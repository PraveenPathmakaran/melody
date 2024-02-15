// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_info_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeviceInfoFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() platformFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? platformFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? platformFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlatformFailure value) platformFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlatformFailure value)? platformFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlatformFailure value)? platformFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceInfoFailureCopyWith<$Res> {
  factory $DeviceInfoFailureCopyWith(
          DeviceInfoFailure value, $Res Function(DeviceInfoFailure) then) =
      _$DeviceInfoFailureCopyWithImpl<$Res, DeviceInfoFailure>;
}

/// @nodoc
class _$DeviceInfoFailureCopyWithImpl<$Res, $Val extends DeviceInfoFailure>
    implements $DeviceInfoFailureCopyWith<$Res> {
  _$DeviceInfoFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PlatformFailureImplCopyWith<$Res> {
  factory _$$PlatformFailureImplCopyWith(_$PlatformFailureImpl value,
          $Res Function(_$PlatformFailureImpl) then) =
      __$$PlatformFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlatformFailureImplCopyWithImpl<$Res>
    extends _$DeviceInfoFailureCopyWithImpl<$Res, _$PlatformFailureImpl>
    implements _$$PlatformFailureImplCopyWith<$Res> {
  __$$PlatformFailureImplCopyWithImpl(
      _$PlatformFailureImpl _value, $Res Function(_$PlatformFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlatformFailureImpl implements _PlatformFailure {
  const _$PlatformFailureImpl();

  @override
  String toString() {
    return 'DeviceInfoFailure.platformFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlatformFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() platformFailure,
  }) {
    return platformFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? platformFailure,
  }) {
    return platformFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? platformFailure,
    required TResult orElse(),
  }) {
    if (platformFailure != null) {
      return platformFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlatformFailure value) platformFailure,
  }) {
    return platformFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlatformFailure value)? platformFailure,
  }) {
    return platformFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlatformFailure value)? platformFailure,
    required TResult orElse(),
  }) {
    if (platformFailure != null) {
      return platformFailure(this);
    }
    return orElse();
  }
}

abstract class _PlatformFailure implements DeviceInfoFailure {
  const factory _PlatformFailure() = _$PlatformFailureImpl;
}
