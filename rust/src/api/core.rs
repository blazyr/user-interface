use core::panic;
use std::{ops::Range, sync::Once};

use blazyr_core::{
    applications::Application, cache_apps, get_apps_from_cache, get_frequency, lookup_apps,
    lookup_plugins, merge_apps_plugins, set_frequency, App, FuzzyFinder,
};
use flutter_rust_bridge::DartFnFuture;
use thiserror::Error;

use crate::frb_generated::StreamSink;

static DART_STREAM_START: Once = Once::new();
static mut DART_STREAM: Option<StreamSink<DartAction>> = None;

#[flutter_rust_bridge::frb(init)]
pub fn init_app() {
    // Default utilities - feel free to customize
    flutter_rust_bridge::setup_default_user_utils();
}

#[flutter_rust_bridge::frb(opaque)]
pub struct StateApp {
    pub entities: Vec<blazyr_core::Entity<App>>,
    pub frequencies: Vec<u64>,
    pub apps_range: Range<usize>,
    pub plugins_range: Range<usize>,
}

impl StateApp {
    #[allow(clippy::new_without_default)]
    pub fn new() -> StateApp {
        // let apps = lookup_apps();
        // cache_apps(&apps);
        let apps: Vec<App> = get_apps_from_cache();
        let plugins = lookup_plugins();

        let mut frequencies: Vec<u64> = apps.iter().map(|v| get_frequency(v.name())).collect();
        let mut plugins_frequencies: Vec<u64> =
            plugins.iter().map(|v| get_frequency(v.name())).collect();
        frequencies.append(&mut plugins_frequencies);

        let (entities, apps_range, plugins_range) = merge_apps_plugins(apps, plugins);

        StateApp {
            entities,
            frequencies,
            apps_range,
            plugins_range,
        }
    }

    pub async fn execute(
        &mut self,
        id: usize,
        arg: Option<String>,
        on_executed: impl Fn() -> DartFnFuture<()>,
    ) -> Result<(), EntityError> {
        let entity = &mut self.entities[id];
        let new_frequency = self.frequencies[id] + 1;
        let result = match entity {
            blazyr_core::Entity::Application(app) => {
                set_frequency(app.name(), new_frequency);
                app.execute(arg.as_deref())
            }
            blazyr_core::Entity::Command(plug) => {
                set_frequency(plug.name(), new_frequency);
                plug.execute(arg.as_deref())
            }
        }
        .map_err(|e| EntityError::Unknown(e.to_string()));

        on_executed().await;
        result
    }

    pub fn get_commands(&self) -> Vec<Entity> {
        let mut temp: Vec<_> = self
            .entities
            .iter()
            .enumerate()
            .filter(|(_, e)| matches!(e, blazyr_core::Entity::Command(_)))
            .collect();

        temp.sort_by_key(|(_, e)| match e {
            blazyr_core::Entity::Application(_app) => 0,
            blazyr_core::Entity::Command(_plug) => 0,
        });

        temp.iter()
            .map(|(i, e)| {
                let (name, alias, description, icon) = match e {
                    blazyr_core::Entity::Command(plug) => {
                        (plug.name(), plug.alias(), plug.description(), plug.icon())
                    }
                    _ => panic!("An other type than a command was incountered"),
                };

                Entity {
                    index: *i,
                    name: name.to_string(),
                    alias: alias.map(|v| v.to_string()),
                    description: description.map(|v| v.to_string()),
                    icon: icon.map(|v| match v {
                        blazyr_core::Image::Data(d) => Image::Data(d),
                        blazyr_core::Image::Path(p) => Image::Path(p),
                    }),
                    r#type: "Command".to_owned(),
                }
            })
            .collect()
    }
}

#[derive(Error, Debug)]
pub enum EntityError {
    #[error("Unknown: {0}")]
    Unknown(String),
}

pub struct Entity {
    pub index: usize,
    pub name: String,
    pub alias: Option<String>,
    pub description: Option<String>,
    pub icon: Option<Image>,
    pub r#type: String,
}

pub enum Image {
    Data(Vec<u8>),
    Path(String),
}

pub fn search(obj: &StateApp, search: String) -> Vec<Entity> {
    let result = FuzzyFinder::search(&search, obj.entities.as_ref(), &obj.frequencies);
    result
        .into_iter()
        .map(|(index, _score)| {
            let ent = &obj.entities[index];

            let (name, alias, description, icon, etype) = match ent {
                blazyr_core::Entity::Command(plug) => (
                    plug.name(),
                    plug.alias(),
                    plug.description(),
                    plug.icon(),
                    "Command".to_owned(),
                ),
                blazyr_core::Entity::Application(app) => (
                    app.name(),
                    app.alias(),
                    app.description(),
                    app.icon(),
                    "Application".to_owned(),
                ),
            };

            Entity {
                index,
                name: name.to_string(),
                alias: alias.map(|v| v.to_string()),
                description: description.map(|v| v.to_string()),
                icon: icon.map(|v| match v {
                    blazyr_core::Image::Data(d) => Image::Data(d),
                    blazyr_core::Image::Path(p) => Image::Path(p),
                }),
                r#type: etype,
            }
        })
        .collect()
}

pub enum DartAction {
    Exit,
}

pub fn set_dart_action_stream(sink: StreamSink<DartAction>) -> anyhow::Result<()> {
    unsafe {
        DART_STREAM_START.call_once(|| {
            DART_STREAM = Some(sink);
        });
    }
    Ok(())
}

pub fn on_exit() {
    let apps = lookup_apps();
    cache_apps(&apps);
}
