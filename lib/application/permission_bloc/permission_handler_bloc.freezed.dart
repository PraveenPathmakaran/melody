// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'permission_handler_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PermissionHandlerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkPermission,
    required TResult Function() openAppSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkPermission,
    TResult? Function()? openAppSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkPermission,
    TResult Function()? openAppSettings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPermission value) checkPermission,
    required TResult Function(_OpenAppSettings value) openAppSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckPermission value)? checkPermission,
    TResult? Function(_OpenAppSettings value)? openAppSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPermission value)? checkPermission,
    TResult Function(_OpenAppSettings value)? openAppSettings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionHandlerEventCopyWith<$Res> {
  factory $PermissionHandlerEventCopyWith(PermissionHandlerEvent value,
          $Res Function(PermissionHandlerEvent) then) =
      _$PermissionHandlerEventCopyWithImpl<$Res, PermissionHandlerEvent>;
}

/// @nodoc
class _$PermissionHandlerEventCopyWithImpl<$Res,
        $Val extends PermissionHandlerEvent>
    implements $PermissionHandlerEventCopyWith<$Res> {
  _$PermissionHandlerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckPermissionImplCopyWith<$Res> {
  factory _$$CheckPermissionImplCopyWith(_$CheckPermissionImpl value,
          $Res Function(_$CheckPermissionImpl) then) =
      __$$CheckPermissionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckPermissionImplCopyWithImpl<$Res>
    extends _$PermissionHandlerEventCopyWithImpl<$Res, _$CheckPermissionImpl>
    implements _$$CheckPermissionImplCopyWith<$Res> {
  __$$CheckPermissionImplCopyWithImpl(
      _$CheckPermissionImpl _value, $Res Function(_$CheckPermissionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckPermissionImpl implements _CheckPermission {
  const _$CheckPermissionImpl();

  @override
  String toString() {
    return 'PermissionHandlerEvent.checkPermission()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckPermissionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkPermission,
    required TResult Function() openAppSettings,
  }) {
    return checkPermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkPermission,
    TResult? Function()? openAppSettings,
  }) {
    return checkPermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkPermission,
    TResult Function()? openAppSettings,
    required TResult orElse(),
  }) {
    if (checkPermission != null) {
      return checkPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPermission value) checkPermission,
    required TResult Function(_OpenAppSettings value) openAppSettings,
  }) {
    return checkPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckPermission value)? checkPermission,
    TResult? Function(_OpenAppSettings value)? openAppSettings,
  }) {
    return checkPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPermission value)? checkPermission,
    TResult Function(_OpenAppSettings value)? openAppSettings,
    required TResult orElse(),
  }) {
    if (checkPermission != null) {
      return checkPermission(this);
    }
    return orElse();
  }
}

abstract class _CheckPermission implements PermissionHandlerEvent {
  const factory _CheckPermission() = _$CheckPermissionImpl;
}

/// @nodoc
abstract class _$$OpenAppSettingsImplCopyWith<$Res> {
  factory _$$OpenAppSettingsImplCopyWith(_$OpenAppSettingsImpl value,
          $Res Function(_$OpenAppSettingsImpl) then) =
      __$$OpenAppSettingsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OpenAppSettingsImplCopyWithImpl<$Res>
    extends _$PermissionHandlerEventCopyWithImpl<$Res, _$OpenAppSettingsImpl>
    implements _$$OpenAppSettingsImplCopyWith<$Res> {
  __$$OpenAppSettingsImplCopyWithImpl(
      _$OpenAppSettingsImpl _value, $Res Function(_$OpenAppSettingsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OpenAppSettingsImpl implements _OpenAppSettings {
  const _$OpenAppSettingsImpl();

  @override
  String toString() {
    return 'PermissionHandlerEvent.openAppSettings()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OpenAppSettingsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkPermission,
    required TResult Function() openAppSettings,
  }) {
    return openAppSettings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkPermission,
    TResult? Function()? openAppSettings,
  }) {
    return openAppSettings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkPermission,
    TResult Function()? openAppSettings,
    required TResult orElse(),
  }) {
    if (openAppSettings != null) {
      return openAppSettings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPermission value) checkPermission,
    required TResult Function(_OpenAppSettings value) openAppSettings,
  }) {
    return openAppSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckPermission value)? checkPermission,
    TResult? Function(_OpenAppSettings value)? openAppSettings,
  }) {
    return openAppSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPermission value)? checkPermission,
    TResult Function(_OpenAppSettings value)? openAppSettings,
    required TResult orElse(),
  }) {
    if (openAppSettings != null) {
      return openAppSettings(this);
    }
    return orElse();
  }
}

abstract class _OpenAppSettings implements PermissionHandlerEvent {
  const factory _OpenAppSettings() = _$OpenAppSettingsImpl;
}

/// @nodoc
mixin _$PermissionHandlerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() granted,
    required TResult Function() denied,
    required TResult Function() permanentlyDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? granted,
    TResult? Function()? denied,
    TResult? Function()? permanentlyDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? granted,
    TResult Function()? denied,
    TResult Function()? permanentlyDenied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Granted value) granted,
    required TResult Function(_Denied value) denied,
    required TResult Function(_PermanentlyDenied value) permanentlyDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Granted value)? granted,
    TResult? Function(_Denied value)? denied,
    TResult? Function(_PermanentlyDenied value)? permanentlyDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Granted value)? granted,
    TResult Function(_Denied value)? denied,
    TResult Function(_PermanentlyDenied value)? permanentlyDenied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionHandlerStateCopyWith<$Res> {
  factory $PermissionHandlerStateCopyWith(PermissionHandlerState value,
          $Res Function(PermissionHandlerState) then) =
      _$PermissionHandlerStateCopyWithImpl<$Res, PermissionHandlerState>;
}

/// @nodoc
class _$PermissionHandlerStateCopyWithImpl<$Res,
        $Val extends PermissionHandlerState>
    implements $PermissionHandlerStateCopyWith<$Res> {
  _$PermissionHandlerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PermissionHandlerStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PermissionHandlerState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() granted,
    required TResult Function() denied,
    required TResult Function() permanentlyDenied,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? granted,
    TResult? Function()? denied,
    TResult? Function()? permanentlyDenied,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? granted,
    TResult Function()? denied,
    TResult Function()? permanentlyDenied,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Granted value) granted,
    required TResult Function(_Denied value) denied,
    required TResult Function(_PermanentlyDenied value) permanentlyDenied,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Granted value)? granted,
    TResult? Function(_Denied value)? denied,
    TResult? Function(_PermanentlyDenied value)? permanentlyDenied,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Granted value)? granted,
    TResult Function(_Denied value)? denied,
    TResult Function(_PermanentlyDenied value)? permanentlyDenied,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PermissionHandlerState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GrantedImplCopyWith<$Res> {
  factory _$$GrantedImplCopyWith(
          _$GrantedImpl value, $Res Function(_$GrantedImpl) then) =
      __$$GrantedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GrantedImplCopyWithImpl<$Res>
    extends _$PermissionHandlerStateCopyWithImpl<$Res, _$GrantedImpl>
    implements _$$GrantedImplCopyWith<$Res> {
  __$$GrantedImplCopyWithImpl(
      _$GrantedImpl _value, $Res Function(_$GrantedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GrantedImpl implements _Granted {
  const _$GrantedImpl();

  @override
  String toString() {
    return 'PermissionHandlerState.granted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GrantedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() granted,
    required TResult Function() denied,
    required TResult Function() permanentlyDenied,
  }) {
    return granted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? granted,
    TResult? Function()? denied,
    TResult? Function()? permanentlyDenied,
  }) {
    return granted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? granted,
    TResult Function()? denied,
    TResult Function()? permanentlyDenied,
    required TResult orElse(),
  }) {
    if (granted != null) {
      return granted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Granted value) granted,
    required TResult Function(_Denied value) denied,
    required TResult Function(_PermanentlyDenied value) permanentlyDenied,
  }) {
    return granted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Granted value)? granted,
    TResult? Function(_Denied value)? denied,
    TResult? Function(_PermanentlyDenied value)? permanentlyDenied,
  }) {
    return granted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Granted value)? granted,
    TResult Function(_Denied value)? denied,
    TResult Function(_PermanentlyDenied value)? permanentlyDenied,
    required TResult orElse(),
  }) {
    if (granted != null) {
      return granted(this);
    }
    return orElse();
  }
}

abstract class _Granted implements PermissionHandlerState {
  const factory _Granted() = _$GrantedImpl;
}

/// @nodoc
abstract class _$$DeniedImplCopyWith<$Res> {
  factory _$$DeniedImplCopyWith(
          _$DeniedImpl value, $Res Function(_$DeniedImpl) then) =
      __$$DeniedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeniedImplCopyWithImpl<$Res>
    extends _$PermissionHandlerStateCopyWithImpl<$Res, _$DeniedImpl>
    implements _$$DeniedImplCopyWith<$Res> {
  __$$DeniedImplCopyWithImpl(
      _$DeniedImpl _value, $Res Function(_$DeniedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeniedImpl implements _Denied {
  const _$DeniedImpl();

  @override
  String toString() {
    return 'PermissionHandlerState.denied()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeniedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() granted,
    required TResult Function() denied,
    required TResult Function() permanentlyDenied,
  }) {
    return denied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? granted,
    TResult? Function()? denied,
    TResult? Function()? permanentlyDenied,
  }) {
    return denied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? granted,
    TResult Function()? denied,
    TResult Function()? permanentlyDenied,
    required TResult orElse(),
  }) {
    if (denied != null) {
      return denied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Granted value) granted,
    required TResult Function(_Denied value) denied,
    required TResult Function(_PermanentlyDenied value) permanentlyDenied,
  }) {
    return denied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Granted value)? granted,
    TResult? Function(_Denied value)? denied,
    TResult? Function(_PermanentlyDenied value)? permanentlyDenied,
  }) {
    return denied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Granted value)? granted,
    TResult Function(_Denied value)? denied,
    TResult Function(_PermanentlyDenied value)? permanentlyDenied,
    required TResult orElse(),
  }) {
    if (denied != null) {
      return denied(this);
    }
    return orElse();
  }
}

abstract class _Denied implements PermissionHandlerState {
  const factory _Denied() = _$DeniedImpl;
}

/// @nodoc
abstract class _$$PermanentlyDeniedImplCopyWith<$Res> {
  factory _$$PermanentlyDeniedImplCopyWith(_$PermanentlyDeniedImpl value,
          $Res Function(_$PermanentlyDeniedImpl) then) =
      __$$PermanentlyDeniedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PermanentlyDeniedImplCopyWithImpl<$Res>
    extends _$PermissionHandlerStateCopyWithImpl<$Res, _$PermanentlyDeniedImpl>
    implements _$$PermanentlyDeniedImplCopyWith<$Res> {
  __$$PermanentlyDeniedImplCopyWithImpl(_$PermanentlyDeniedImpl _value,
      $Res Function(_$PermanentlyDeniedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PermanentlyDeniedImpl implements _PermanentlyDenied {
  const _$PermanentlyDeniedImpl();

  @override
  String toString() {
    return 'PermissionHandlerState.permanentlyDenied()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PermanentlyDeniedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() granted,
    required TResult Function() denied,
    required TResult Function() permanentlyDenied,
  }) {
    return permanentlyDenied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? granted,
    TResult? Function()? denied,
    TResult? Function()? permanentlyDenied,
  }) {
    return permanentlyDenied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? granted,
    TResult Function()? denied,
    TResult Function()? permanentlyDenied,
    required TResult orElse(),
  }) {
    if (permanentlyDenied != null) {
      return permanentlyDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Granted value) granted,
    required TResult Function(_Denied value) denied,
    required TResult Function(_PermanentlyDenied value) permanentlyDenied,
  }) {
    return permanentlyDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Granted value)? granted,
    TResult? Function(_Denied value)? denied,
    TResult? Function(_PermanentlyDenied value)? permanentlyDenied,
  }) {
    return permanentlyDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Granted value)? granted,
    TResult Function(_Denied value)? denied,
    TResult Function(_PermanentlyDenied value)? permanentlyDenied,
    required TResult orElse(),
  }) {
    if (permanentlyDenied != null) {
      return permanentlyDenied(this);
    }
    return orElse();
  }
}

abstract class _PermanentlyDenied implements PermissionHandlerState {
  const factory _PermanentlyDenied() = _$PermanentlyDeniedImpl;
}
