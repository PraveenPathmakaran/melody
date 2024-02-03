// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'path_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PathDatDto _$PathDatDtoFromJson(Map<String, dynamic> json) {
  return _PathDatDto.fromJson(json);
}

/// @nodoc
mixin _$PathDatDto {
  String? get audioPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PathDatDtoCopyWith<PathDatDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PathDatDtoCopyWith<$Res> {
  factory $PathDatDtoCopyWith(
          PathDatDto value, $Res Function(PathDatDto) then) =
      _$PathDatDtoCopyWithImpl<$Res, PathDatDto>;
  @useResult
  $Res call({String? audioPath});
}

/// @nodoc
class _$PathDatDtoCopyWithImpl<$Res, $Val extends PathDatDto>
    implements $PathDatDtoCopyWith<$Res> {
  _$PathDatDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioPath = freezed,
  }) {
    return _then(_value.copyWith(
      audioPath: freezed == audioPath
          ? _value.audioPath
          : audioPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PathDatDtoImplCopyWith<$Res>
    implements $PathDatDtoCopyWith<$Res> {
  factory _$$PathDatDtoImplCopyWith(
          _$PathDatDtoImpl value, $Res Function(_$PathDatDtoImpl) then) =
      __$$PathDatDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? audioPath});
}

/// @nodoc
class __$$PathDatDtoImplCopyWithImpl<$Res>
    extends _$PathDatDtoCopyWithImpl<$Res, _$PathDatDtoImpl>
    implements _$$PathDatDtoImplCopyWith<$Res> {
  __$$PathDatDtoImplCopyWithImpl(
      _$PathDatDtoImpl _value, $Res Function(_$PathDatDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioPath = freezed,
  }) {
    return _then(_$PathDatDtoImpl(
      audioPath: freezed == audioPath
          ? _value.audioPath
          : audioPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PathDatDtoImpl extends _PathDatDto with DiagnosticableTreeMixin {
  const _$PathDatDtoImpl({required this.audioPath}) : super._();

  factory _$PathDatDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PathDatDtoImplFromJson(json);

  @override
  final String? audioPath;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PathDatDto(audioPath: $audioPath)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PathDatDto'))
      ..add(DiagnosticsProperty('audioPath', audioPath));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PathDatDtoImpl &&
            (identical(other.audioPath, audioPath) ||
                other.audioPath == audioPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, audioPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PathDatDtoImplCopyWith<_$PathDatDtoImpl> get copyWith =>
      __$$PathDatDtoImplCopyWithImpl<_$PathDatDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PathDatDtoImplToJson(
      this,
    );
  }
}

abstract class _PathDatDto extends PathDatDto {
  const factory _PathDatDto({required final String? audioPath}) =
      _$PathDatDtoImpl;
  const _PathDatDto._() : super._();

  factory _PathDatDto.fromJson(Map<String, dynamic> json) =
      _$PathDatDtoImpl.fromJson;

  @override
  String? get audioPath;
  @override
  @JsonKey(ignore: true)
  _$$PathDatDtoImplCopyWith<_$PathDatDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
