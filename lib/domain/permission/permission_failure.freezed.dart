// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'permission_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PermissionFailures {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() deniedByUser,
    required TResult Function() permanentlyDeniedByUser,
    required TResult Function() platFormFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? deniedByUser,
    TResult? Function()? permanentlyDeniedByUser,
    TResult? Function()? platFormFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? deniedByUser,
    TResult Function()? permanentlyDeniedByUser,
    TResult Function()? platFormFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeniedByUser value) deniedByUser,
    required TResult Function(_PermanentlyDeniedByUser value)
        permanentlyDeniedByUser,
    required TResult Function(_PlatFormFailure value) platFormFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeniedByUser value)? deniedByUser,
    TResult? Function(_PermanentlyDeniedByUser value)? permanentlyDeniedByUser,
    TResult? Function(_PlatFormFailure value)? platFormFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeniedByUser value)? deniedByUser,
    TResult Function(_PermanentlyDeniedByUser value)? permanentlyDeniedByUser,
    TResult Function(_PlatFormFailure value)? platFormFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionFailuresCopyWith<$Res> {
  factory $PermissionFailuresCopyWith(
          PermissionFailures value, $Res Function(PermissionFailures) then) =
      _$PermissionFailuresCopyWithImpl<$Res, PermissionFailures>;
}

/// @nodoc
class _$PermissionFailuresCopyWithImpl<$Res, $Val extends PermissionFailures>
    implements $PermissionFailuresCopyWith<$Res> {
  _$PermissionFailuresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DeniedByUserImplCopyWith<$Res> {
  factory _$$DeniedByUserImplCopyWith(
          _$DeniedByUserImpl value, $Res Function(_$DeniedByUserImpl) then) =
      __$$DeniedByUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeniedByUserImplCopyWithImpl<$Res>
    extends _$PermissionFailuresCopyWithImpl<$Res, _$DeniedByUserImpl>
    implements _$$DeniedByUserImplCopyWith<$Res> {
  __$$DeniedByUserImplCopyWithImpl(
      _$DeniedByUserImpl _value, $Res Function(_$DeniedByUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeniedByUserImpl implements _DeniedByUser {
  const _$DeniedByUserImpl();

  @override
  String toString() {
    return 'PermissionFailures.deniedByUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeniedByUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() deniedByUser,
    required TResult Function() permanentlyDeniedByUser,
    required TResult Function() platFormFailure,
  }) {
    return deniedByUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? deniedByUser,
    TResult? Function()? permanentlyDeniedByUser,
    TResult? Function()? platFormFailure,
  }) {
    return deniedByUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? deniedByUser,
    TResult Function()? permanentlyDeniedByUser,
    TResult Function()? platFormFailure,
    required TResult orElse(),
  }) {
    if (deniedByUser != null) {
      return deniedByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeniedByUser value) deniedByUser,
    required TResult Function(_PermanentlyDeniedByUser value)
        permanentlyDeniedByUser,
    required TResult Function(_PlatFormFailure value) platFormFailure,
  }) {
    return deniedByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeniedByUser value)? deniedByUser,
    TResult? Function(_PermanentlyDeniedByUser value)? permanentlyDeniedByUser,
    TResult? Function(_PlatFormFailure value)? platFormFailure,
  }) {
    return deniedByUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeniedByUser value)? deniedByUser,
    TResult Function(_PermanentlyDeniedByUser value)? permanentlyDeniedByUser,
    TResult Function(_PlatFormFailure value)? platFormFailure,
    required TResult orElse(),
  }) {
    if (deniedByUser != null) {
      return deniedByUser(this);
    }
    return orElse();
  }
}

abstract class _DeniedByUser implements PermissionFailures {
  const factory _DeniedByUser() = _$DeniedByUserImpl;
}

/// @nodoc
abstract class _$$PermanentlyDeniedByUserImplCopyWith<$Res> {
  factory _$$PermanentlyDeniedByUserImplCopyWith(
          _$PermanentlyDeniedByUserImpl value,
          $Res Function(_$PermanentlyDeniedByUserImpl) then) =
      __$$PermanentlyDeniedByUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PermanentlyDeniedByUserImplCopyWithImpl<$Res>
    extends _$PermissionFailuresCopyWithImpl<$Res,
        _$PermanentlyDeniedByUserImpl>
    implements _$$PermanentlyDeniedByUserImplCopyWith<$Res> {
  __$$PermanentlyDeniedByUserImplCopyWithImpl(
      _$PermanentlyDeniedByUserImpl _value,
      $Res Function(_$PermanentlyDeniedByUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PermanentlyDeniedByUserImpl implements _PermanentlyDeniedByUser {
  const _$PermanentlyDeniedByUserImpl();

  @override
  String toString() {
    return 'PermissionFailures.permanentlyDeniedByUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermanentlyDeniedByUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() deniedByUser,
    required TResult Function() permanentlyDeniedByUser,
    required TResult Function() platFormFailure,
  }) {
    return permanentlyDeniedByUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? deniedByUser,
    TResult? Function()? permanentlyDeniedByUser,
    TResult? Function()? platFormFailure,
  }) {
    return permanentlyDeniedByUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? deniedByUser,
    TResult Function()? permanentlyDeniedByUser,
    TResult Function()? platFormFailure,
    required TResult orElse(),
  }) {
    if (permanentlyDeniedByUser != null) {
      return permanentlyDeniedByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeniedByUser value) deniedByUser,
    required TResult Function(_PermanentlyDeniedByUser value)
        permanentlyDeniedByUser,
    required TResult Function(_PlatFormFailure value) platFormFailure,
  }) {
    return permanentlyDeniedByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeniedByUser value)? deniedByUser,
    TResult? Function(_PermanentlyDeniedByUser value)? permanentlyDeniedByUser,
    TResult? Function(_PlatFormFailure value)? platFormFailure,
  }) {
    return permanentlyDeniedByUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeniedByUser value)? deniedByUser,
    TResult Function(_PermanentlyDeniedByUser value)? permanentlyDeniedByUser,
    TResult Function(_PlatFormFailure value)? platFormFailure,
    required TResult orElse(),
  }) {
    if (permanentlyDeniedByUser != null) {
      return permanentlyDeniedByUser(this);
    }
    return orElse();
  }
}

abstract class _PermanentlyDeniedByUser implements PermissionFailures {
  const factory _PermanentlyDeniedByUser() = _$PermanentlyDeniedByUserImpl;
}

/// @nodoc
abstract class _$$PlatFormFailureImplCopyWith<$Res> {
  factory _$$PlatFormFailureImplCopyWith(_$PlatFormFailureImpl value,
          $Res Function(_$PlatFormFailureImpl) then) =
      __$$PlatFormFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlatFormFailureImplCopyWithImpl<$Res>
    extends _$PermissionFailuresCopyWithImpl<$Res, _$PlatFormFailureImpl>
    implements _$$PlatFormFailureImplCopyWith<$Res> {
  __$$PlatFormFailureImplCopyWithImpl(
      _$PlatFormFailureImpl _value, $Res Function(_$PlatFormFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlatFormFailureImpl implements _PlatFormFailure {
  const _$PlatFormFailureImpl();

  @override
  String toString() {
    return 'PermissionFailures.platFormFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlatFormFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() deniedByUser,
    required TResult Function() permanentlyDeniedByUser,
    required TResult Function() platFormFailure,
  }) {
    return platFormFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? deniedByUser,
    TResult? Function()? permanentlyDeniedByUser,
    TResult? Function()? platFormFailure,
  }) {
    return platFormFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? deniedByUser,
    TResult Function()? permanentlyDeniedByUser,
    TResult Function()? platFormFailure,
    required TResult orElse(),
  }) {
    if (platFormFailure != null) {
      return platFormFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeniedByUser value) deniedByUser,
    required TResult Function(_PermanentlyDeniedByUser value)
        permanentlyDeniedByUser,
    required TResult Function(_PlatFormFailure value) platFormFailure,
  }) {
    return platFormFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeniedByUser value)? deniedByUser,
    TResult? Function(_PermanentlyDeniedByUser value)? permanentlyDeniedByUser,
    TResult? Function(_PlatFormFailure value)? platFormFailure,
  }) {
    return platFormFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeniedByUser value)? deniedByUser,
    TResult Function(_PermanentlyDeniedByUser value)? permanentlyDeniedByUser,
    TResult Function(_PlatFormFailure value)? platFormFailure,
    required TResult orElse(),
  }) {
    if (platFormFailure != null) {
      return platFormFailure(this);
    }
    return orElse();
  }
}

abstract class _PlatFormFailure implements PermissionFailures {
  const factory _PlatFormFailure() = _$PlatFormFailureImpl;
}
