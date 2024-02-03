// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'path.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PathData {
  AudioPath get audioPath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PathDataCopyWith<PathData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PathDataCopyWith<$Res> {
  factory $PathDataCopyWith(PathData value, $Res Function(PathData) then) =
      _$PathDataCopyWithImpl<$Res, PathData>;
  @useResult
  $Res call({AudioPath audioPath});
}

/// @nodoc
class _$PathDataCopyWithImpl<$Res, $Val extends PathData>
    implements $PathDataCopyWith<$Res> {
  _$PathDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioPath = null,
  }) {
    return _then(_value.copyWith(
      audioPath: null == audioPath
          ? _value.audioPath
          : audioPath // ignore: cast_nullable_to_non_nullable
              as AudioPath,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PathDataImplCopyWith<$Res>
    implements $PathDataCopyWith<$Res> {
  factory _$$PathDataImplCopyWith(
          _$PathDataImpl value, $Res Function(_$PathDataImpl) then) =
      __$$PathDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AudioPath audioPath});
}

/// @nodoc
class __$$PathDataImplCopyWithImpl<$Res>
    extends _$PathDataCopyWithImpl<$Res, _$PathDataImpl>
    implements _$$PathDataImplCopyWith<$Res> {
  __$$PathDataImplCopyWithImpl(
      _$PathDataImpl _value, $Res Function(_$PathDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioPath = null,
  }) {
    return _then(_$PathDataImpl(
      audioPath: null == audioPath
          ? _value.audioPath
          : audioPath // ignore: cast_nullable_to_non_nullable
              as AudioPath,
    ));
  }
}

/// @nodoc

class _$PathDataImpl extends _PathData {
  const _$PathDataImpl({required this.audioPath}) : super._();

  @override
  final AudioPath audioPath;

  @override
  String toString() {
    return 'PathData(audioPath: $audioPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PathDataImpl &&
            (identical(other.audioPath, audioPath) ||
                other.audioPath == audioPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, audioPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PathDataImplCopyWith<_$PathDataImpl> get copyWith =>
      __$$PathDataImplCopyWithImpl<_$PathDataImpl>(this, _$identity);
}

abstract class _PathData extends PathData {
  const factory _PathData({required final AudioPath audioPath}) =
      _$PathDataImpl;
  const _PathData._() : super._();

  @override
  AudioPath get audioPath;
  @override
  @JsonKey(ignore: true)
  _$$PathDataImplCopyWith<_$PathDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
