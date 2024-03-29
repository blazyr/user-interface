// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.17.

// ignore_for_file: unused_import, unused_element, unnecessary_import, duplicate_ignore, invalid_use_of_internal_member, annotate_overrides, non_constant_identifier_names, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables

import 'api/core.dart';
import 'dart:async';
import 'dart:convert';
import 'frb_generated.io.dart' if (dart.library.html) 'frb_generated.web.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

/// Main entrypoint of the Rust API
class RustLib extends BaseEntrypoint<RustLibApi, RustLibApiImpl, RustLibWire> {
  @internal
  static final instance = RustLib._();

  RustLib._();

  /// Initialize flutter_rust_bridge
  static Future<void> init({
    RustLibApi? api,
    BaseHandler? handler,
    ExternalLibrary? externalLibrary,
  }) async {
    await instance.initImpl(
      api: api,
      handler: handler,
      externalLibrary: externalLibrary,
    );
  }

  /// Dispose flutter_rust_bridge
  ///
  /// The call to this function is optional, since flutter_rust_bridge (and everything else)
  /// is automatically disposed when the app stops.
  static void dispose() => instance.disposeImpl();

  @override
  ApiImplConstructor<RustLibApiImpl, RustLibWire> get apiImplConstructor =>
      RustLibApiImpl.new;

  @override
  WireConstructor<RustLibWire> get wireConstructor =>
      RustLibWire.fromExternalLibrary;

  @override
  Future<void> executeRustInitializers() async {
    await api.initApp();
  }

  @override
  ExternalLibraryLoaderConfig get defaultExternalLibraryLoaderConfig =>
      kDefaultExternalLibraryLoaderConfig;

  static const kDefaultExternalLibraryLoaderConfig =
      ExternalLibraryLoaderConfig(
    stem: 'rust_lib',
    ioDirectory: 'rust/target/release/',
    webPrefix: 'pkg/',
  );
}

abstract class RustLibApi extends BaseApi {
  Future<void> stateAppExecute(
      {required StateApp that,
      required int id,
      String? arg,
      required FutureOr<void> Function() onExecuted,
      dynamic hint});

  Future<List<Entity>> stateAppGetCommands(
      {required StateApp that, dynamic hint});

  Future<StateApp> stateAppNew({dynamic hint});

  Future<void> initApp({dynamic hint});

  Future<void> onExit({dynamic hint});

  Future<List<Entity>> search(
      {required StateApp obj, required String search, dynamic hint});

  Stream<DartAction> setDartActionStream({dynamic hint});

  RustArcIncrementStrongCountFnType
      get rust_arc_increment_strong_count_StateApp;

  RustArcDecrementStrongCountFnType
      get rust_arc_decrement_strong_count_StateApp;

  CrossPlatformFinalizerArg get rust_arc_decrement_strong_count_StateAppPtr;
}

class RustLibApiImpl extends RustLibApiImplPlatform implements RustLibApi {
  RustLibApiImpl({
    required super.handler,
    required super.wire,
    required super.generalizedFrbRustBinding,
    required super.portManager,
  });

  @override
  Future<void> stateAppExecute(
      {required StateApp that,
      required int id,
      String? arg,
      required FutureOr<void> Function() onExecuted,
      dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        var arg0 =
            cst_encode_Auto_RefMut_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockStateApp(
                that);
        var arg1 = cst_encode_usize(id);
        var arg2 = cst_encode_opt_String(arg);
        var arg3 = cst_encode_DartFn_Inputs__Output_unit(onExecuted);
        return wire.wire_StateApp_execute(port_, arg0, arg1, arg2, arg3);
      },
      codec: DcoCodec(
        decodeSuccessData: dco_decode_unit,
        decodeErrorData: dco_decode_entity_error,
      ),
      constMeta: kStateAppExecuteConstMeta,
      argValues: [that, id, arg, onExecuted],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kStateAppExecuteConstMeta => const TaskConstMeta(
        debugName: "StateApp_execute",
        argNames: ["that", "id", "arg", "onExecuted"],
      );

  @override
  Future<List<Entity>> stateAppGetCommands(
      {required StateApp that, dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        var arg0 =
            cst_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockStateApp(
                that);
        return wire.wire_StateApp_get_commands(port_, arg0);
      },
      codec: DcoCodec(
        decodeSuccessData: dco_decode_list_entity,
        decodeErrorData: null,
      ),
      constMeta: kStateAppGetCommandsConstMeta,
      argValues: [that],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kStateAppGetCommandsConstMeta => const TaskConstMeta(
        debugName: "StateApp_get_commands",
        argNames: ["that"],
      );

  @override
  Future<StateApp> stateAppNew({dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        return wire.wire_StateApp_new(port_);
      },
      codec: DcoCodec(
        decodeSuccessData:
            dco_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockStateApp,
        decodeErrorData: null,
      ),
      constMeta: kStateAppNewConstMeta,
      argValues: [],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kStateAppNewConstMeta => const TaskConstMeta(
        debugName: "StateApp_new",
        argNames: [],
      );

  @override
  Future<void> initApp({dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        return wire.wire_init_app(port_);
      },
      codec: DcoCodec(
        decodeSuccessData: dco_decode_unit,
        decodeErrorData: null,
      ),
      constMeta: kInitAppConstMeta,
      argValues: [],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kInitAppConstMeta => const TaskConstMeta(
        debugName: "init_app",
        argNames: [],
      );

  @override
  Future<void> onExit({dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        return wire.wire_on_exit(port_);
      },
      codec: DcoCodec(
        decodeSuccessData: dco_decode_unit,
        decodeErrorData: null,
      ),
      constMeta: kOnExitConstMeta,
      argValues: [],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kOnExitConstMeta => const TaskConstMeta(
        debugName: "on_exit",
        argNames: [],
      );

  @override
  Future<List<Entity>> search(
      {required StateApp obj, required String search, dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        var arg0 =
            cst_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockStateApp(
                obj);
        var arg1 = cst_encode_String(search);
        return wire.wire_search(port_, arg0, arg1);
      },
      codec: DcoCodec(
        decodeSuccessData: dco_decode_list_entity,
        decodeErrorData: null,
      ),
      constMeta: kSearchConstMeta,
      argValues: [obj, search],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kSearchConstMeta => const TaskConstMeta(
        debugName: "search",
        argNames: ["obj", "search"],
      );

  @override
  Stream<DartAction> setDartActionStream({dynamic hint}) {
    return handler.executeStream(StreamTask(
      callFfi: (port_) {
        return wire.wire_set_dart_action_stream(port_);
      },
      codec: DcoCodec(
        decodeSuccessData: dco_decode_dart_action,
        decodeErrorData: dco_decode_AnyhowException,
      ),
      constMeta: kSetDartActionStreamConstMeta,
      argValues: [],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kSetDartActionStreamConstMeta => const TaskConstMeta(
        debugName: "set_dart_action_stream",
        argNames: [],
      );

  Future<void> Function(
    int,
  ) encode_DartFn_Inputs__Output_unit(FutureOr<void> Function() raw) {
    return (
      callId,
    ) async {
      final rawOutput = await raw();

      final serializer = SseSerializer(generalizedFrbRustBinding);
      sse_encode_unit(rawOutput, serializer);
      final output = serializer.intoRaw();

      wire.dart_fn_deliver_output(
          callId, output.ptr, output.rustVecLen, output.dataLen);
    };
  }

  RustArcIncrementStrongCountFnType
      get rust_arc_increment_strong_count_StateApp => wire
          .rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockStateApp;

  RustArcDecrementStrongCountFnType
      get rust_arc_decrement_strong_count_StateApp => wire
          .rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockStateApp;

  @protected
  AnyhowException dco_decode_AnyhowException(dynamic raw) {
    return AnyhowException(raw as String);
  }

  @protected
  StateApp
      dco_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockStateApp(
          dynamic raw) {
    return StateApp.dcoDecode(raw as List<dynamic>);
  }

  @protected
  StateApp
      dco_decode_Auto_RefMut_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockStateApp(
          dynamic raw) {
    return StateApp.dcoDecode(raw as List<dynamic>);
  }

  @protected
  StateApp
      dco_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockStateApp(
          dynamic raw) {
    return StateApp.dcoDecode(raw as List<dynamic>);
  }

  @protected
  FutureOr<void> Function() dco_decode_DartFn_Inputs__Output_unit(dynamic raw) {
    throw UnimplementedError('');
  }

  @protected
  Object dco_decode_DartOpaque(dynamic raw) {
    return decodeDartOpaque(raw, generalizedFrbRustBinding);
  }

  @protected
  StateApp
      dco_decode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockStateApp(
          dynamic raw) {
    return StateApp.dcoDecode(raw as List<dynamic>);
  }

  @protected
  String dco_decode_String(dynamic raw) {
    return raw as String;
  }

  @protected
  Image dco_decode_box_autoadd_image(dynamic raw) {
    return dco_decode_image(raw);
  }

  @protected
  DartAction dco_decode_dart_action(dynamic raw) {
    return DartAction.values[raw as int];
  }

  @protected
  Entity dco_decode_entity(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 6)
      throw Exception('unexpected arr length: expect 6 but see ${arr.length}');
    return Entity(
      index: dco_decode_usize(arr[0]),
      name: dco_decode_String(arr[1]),
      alias: dco_decode_opt_String(arr[2]),
      description: dco_decode_opt_String(arr[3]),
      icon: dco_decode_opt_box_autoadd_image(arr[4]),
      type: dco_decode_String(arr[5]),
    );
  }

  @protected
  EntityError dco_decode_entity_error(dynamic raw) {
    switch (raw[0]) {
      case 0:
        return EntityError_Unknown(
          dco_decode_String(raw[1]),
        );
      default:
        throw Exception("unreachable");
    }
  }

  @protected
  int dco_decode_i_32(dynamic raw) {
    return raw as int;
  }

  @protected
  Image dco_decode_image(dynamic raw) {
    switch (raw[0]) {
      case 0:
        return Image_Data(
          dco_decode_list_prim_u_8_strict(raw[1]),
        );
      case 1:
        return Image_Path(
          dco_decode_String(raw[1]),
        );
      default:
        throw Exception("unreachable");
    }
  }

  @protected
  List<Entity> dco_decode_list_entity(dynamic raw) {
    return (raw as List<dynamic>).map(dco_decode_entity).toList();
  }

  @protected
  Uint8List dco_decode_list_prim_u_8_strict(dynamic raw) {
    return raw as Uint8List;
  }

  @protected
  String? dco_decode_opt_String(dynamic raw) {
    return raw == null ? null : dco_decode_String(raw);
  }

  @protected
  Image? dco_decode_opt_box_autoadd_image(dynamic raw) {
    return raw == null ? null : dco_decode_box_autoadd_image(raw);
  }

  @protected
  int dco_decode_u_8(dynamic raw) {
    return raw as int;
  }

  @protected
  void dco_decode_unit(dynamic raw) {
    return;
  }

  @protected
  int dco_decode_usize(dynamic raw) {
    return dcoDecodeI64OrU64(raw);
  }

  @protected
  AnyhowException sse_decode_AnyhowException(SseDeserializer deserializer) {
    var inner = sse_decode_String(deserializer);
    return AnyhowException(inner);
  }

  @protected
  StateApp
      sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockStateApp(
          SseDeserializer deserializer) {
    return StateApp.sseDecode(
        sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  StateApp
      sse_decode_Auto_RefMut_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockStateApp(
          SseDeserializer deserializer) {
    return StateApp.sseDecode(
        sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  StateApp
      sse_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockStateApp(
          SseDeserializer deserializer) {
    return StateApp.sseDecode(
        sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  Object sse_decode_DartOpaque(SseDeserializer deserializer) {
    var inner = sse_decode_usize(deserializer);
    return decodeDartOpaque(inner, generalizedFrbRustBinding);
  }

  @protected
  StateApp
      sse_decode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockStateApp(
          SseDeserializer deserializer) {
    return StateApp.sseDecode(
        sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  String sse_decode_String(SseDeserializer deserializer) {
    var inner = sse_decode_list_prim_u_8_strict(deserializer);
    return utf8.decoder.convert(inner);
  }

  @protected
  Image sse_decode_box_autoadd_image(SseDeserializer deserializer) {
    return (sse_decode_image(deserializer));
  }

  @protected
  DartAction sse_decode_dart_action(SseDeserializer deserializer) {
    var inner = sse_decode_i_32(deserializer);
    return DartAction.values[inner];
  }

  @protected
  Entity sse_decode_entity(SseDeserializer deserializer) {
    var var_index = sse_decode_usize(deserializer);
    var var_name = sse_decode_String(deserializer);
    var var_alias = sse_decode_opt_String(deserializer);
    var var_description = sse_decode_opt_String(deserializer);
    var var_icon = sse_decode_opt_box_autoadd_image(deserializer);
    var var_type = sse_decode_String(deserializer);
    return Entity(
        index: var_index,
        name: var_name,
        alias: var_alias,
        description: var_description,
        icon: var_icon,
        type: var_type);
  }

  @protected
  EntityError sse_decode_entity_error(SseDeserializer deserializer) {
    var tag_ = sse_decode_i_32(deserializer);
    switch (tag_) {
      case 0:
        var var_field0 = sse_decode_String(deserializer);
        return EntityError_Unknown(var_field0);
      default:
        throw UnimplementedError('');
    }
  }

  @protected
  int sse_decode_i_32(SseDeserializer deserializer) {
    return deserializer.buffer.getInt32();
  }

  @protected
  Image sse_decode_image(SseDeserializer deserializer) {
    var tag_ = sse_decode_i_32(deserializer);
    switch (tag_) {
      case 0:
        var var_field0 = sse_decode_list_prim_u_8_strict(deserializer);
        return Image_Data(var_field0);
      case 1:
        var var_field0 = sse_decode_String(deserializer);
        return Image_Path(var_field0);
      default:
        throw UnimplementedError('');
    }
  }

  @protected
  List<Entity> sse_decode_list_entity(SseDeserializer deserializer) {
    var len_ = sse_decode_i_32(deserializer);
    var ans_ = <Entity>[];
    for (var idx_ = 0; idx_ < len_; ++idx_) {
      ans_.add(sse_decode_entity(deserializer));
    }
    return ans_;
  }

  @protected
  Uint8List sse_decode_list_prim_u_8_strict(SseDeserializer deserializer) {
    var len_ = sse_decode_i_32(deserializer);
    return deserializer.buffer.getUint8List(len_);
  }

  @protected
  String? sse_decode_opt_String(SseDeserializer deserializer) {
    if (sse_decode_bool(deserializer)) {
      return (sse_decode_String(deserializer));
    } else {
      return null;
    }
  }

  @protected
  Image? sse_decode_opt_box_autoadd_image(SseDeserializer deserializer) {
    if (sse_decode_bool(deserializer)) {
      return (sse_decode_box_autoadd_image(deserializer));
    } else {
      return null;
    }
  }

  @protected
  int sse_decode_u_8(SseDeserializer deserializer) {
    return deserializer.buffer.getUint8();
  }

  @protected
  void sse_decode_unit(SseDeserializer deserializer) {}

  @protected
  int sse_decode_usize(SseDeserializer deserializer) {
    return deserializer.buffer.getUint64();
  }

  @protected
  bool sse_decode_bool(SseDeserializer deserializer) {
    return deserializer.buffer.getUint8() != 0;
  }

  @protected
  PlatformPointer
      cst_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockStateApp(
          StateApp raw) {
    // ignore: invalid_use_of_internal_member
    return raw.cstEncode(move: true);
  }

  @protected
  PlatformPointer
      cst_encode_Auto_RefMut_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockStateApp(
          StateApp raw) {
    // ignore: invalid_use_of_internal_member
    return raw.cstEncode(move: false);
  }

  @protected
  PlatformPointer
      cst_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockStateApp(
          StateApp raw) {
    // ignore: invalid_use_of_internal_member
    return raw.cstEncode(move: false);
  }

  @protected
  PlatformPointer cst_encode_DartFn_Inputs__Output_unit(
      FutureOr<void> Function() raw) {
    return cst_encode_DartOpaque(encode_DartFn_Inputs__Output_unit(raw));
  }

  @protected
  PlatformPointer cst_encode_DartOpaque(Object raw) {
    return encodeDartOpaque(
        raw, portManager.dartHandlerPort, generalizedFrbRustBinding);
  }

  @protected
  PlatformPointer
      cst_encode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockStateApp(
          StateApp raw) {
    // ignore: invalid_use_of_internal_member
    return raw.cstEncode();
  }

  @protected
  int cst_encode_dart_action(DartAction raw) {
    return cst_encode_i_32(raw.index);
  }

  @protected
  int cst_encode_i_32(int raw) {
    return raw;
  }

  @protected
  int cst_encode_u_8(int raw) {
    return raw;
  }

  @protected
  void cst_encode_unit(void raw) {
    return raw;
  }

  @protected
  int cst_encode_usize(int raw) {
    return raw;
  }

  @protected
  void sse_encode_AnyhowException(
      AnyhowException self, SseSerializer serializer) {
    throw UnimplementedError(
        'not yet supported in serialized mode, feel free to create an issue');
  }

  @protected
  void
      sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockStateApp(
          StateApp self, SseSerializer serializer) {
    sse_encode_usize(self.sseEncode(move: true), serializer);
  }

  @protected
  void
      sse_encode_Auto_RefMut_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockStateApp(
          StateApp self, SseSerializer serializer) {
    sse_encode_usize(self.sseEncode(move: false), serializer);
  }

  @protected
  void
      sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockStateApp(
          StateApp self, SseSerializer serializer) {
    sse_encode_usize(self.sseEncode(move: false), serializer);
  }

  @protected
  void sse_encode_DartFn_Inputs__Output_unit(
      FutureOr<void> Function() self, SseSerializer serializer) {
    sse_encode_DartOpaque(encode_DartFn_Inputs__Output_unit(self), serializer);
  }

  @protected
  void sse_encode_DartOpaque(Object self, SseSerializer serializer) {
    sse_encode_usize(
        PlatformPointerUtil.ptrToInt(encodeDartOpaque(
            self, portManager.dartHandlerPort, generalizedFrbRustBinding)),
        serializer);
  }

  @protected
  void
      sse_encode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockStateApp(
          StateApp self, SseSerializer serializer) {
    sse_encode_usize(self.sseEncode(move: null), serializer);
  }

  @protected
  void sse_encode_String(String self, SseSerializer serializer) {
    sse_encode_list_prim_u_8_strict(utf8.encoder.convert(self), serializer);
  }

  @protected
  void sse_encode_box_autoadd_image(Image self, SseSerializer serializer) {
    sse_encode_image(self, serializer);
  }

  @protected
  void sse_encode_dart_action(DartAction self, SseSerializer serializer) {
    sse_encode_i_32(self.index, serializer);
  }

  @protected
  void sse_encode_entity(Entity self, SseSerializer serializer) {
    sse_encode_usize(self.index, serializer);
    sse_encode_String(self.name, serializer);
    sse_encode_opt_String(self.alias, serializer);
    sse_encode_opt_String(self.description, serializer);
    sse_encode_opt_box_autoadd_image(self.icon, serializer);
    sse_encode_String(self.type, serializer);
  }

  @protected
  void sse_encode_entity_error(EntityError self, SseSerializer serializer) {
    switch (self) {
      case EntityError_Unknown(field0: final field0):
        sse_encode_i_32(0, serializer);
        sse_encode_String(field0, serializer);
    }
  }

  @protected
  void sse_encode_i_32(int self, SseSerializer serializer) {
    serializer.buffer.putInt32(self);
  }

  @protected
  void sse_encode_image(Image self, SseSerializer serializer) {
    switch (self) {
      case Image_Data(field0: final field0):
        sse_encode_i_32(0, serializer);
        sse_encode_list_prim_u_8_strict(field0, serializer);
      case Image_Path(field0: final field0):
        sse_encode_i_32(1, serializer);
        sse_encode_String(field0, serializer);
    }
  }

  @protected
  void sse_encode_list_entity(List<Entity> self, SseSerializer serializer) {
    sse_encode_i_32(self.length, serializer);
    for (final item in self) {
      sse_encode_entity(item, serializer);
    }
  }

  @protected
  void sse_encode_list_prim_u_8_strict(
      Uint8List self, SseSerializer serializer) {
    sse_encode_i_32(self.length, serializer);
    serializer.buffer.putUint8List(self);
  }

  @protected
  void sse_encode_opt_String(String? self, SseSerializer serializer) {
    sse_encode_bool(self != null, serializer);
    if (self != null) {
      sse_encode_String(self, serializer);
    }
  }

  @protected
  void sse_encode_opt_box_autoadd_image(Image? self, SseSerializer serializer) {
    sse_encode_bool(self != null, serializer);
    if (self != null) {
      sse_encode_box_autoadd_image(self, serializer);
    }
  }

  @protected
  void sse_encode_u_8(int self, SseSerializer serializer) {
    serializer.buffer.putUint8(self);
  }

  @protected
  void sse_encode_unit(void self, SseSerializer serializer) {}

  @protected
  void sse_encode_usize(int self, SseSerializer serializer) {
    serializer.buffer.putUint64(self);
  }

  @protected
  void sse_encode_bool(bool self, SseSerializer serializer) {
    serializer.buffer.putUint8(self ? 1 : 0);
  }
}
