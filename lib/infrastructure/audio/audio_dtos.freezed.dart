// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AudioDto _$AudioDtoFromJson(Map<String, dynamic> json) {
  return _AudioDto.fromJson(json);
}

/// @nodoc
mixin _$AudioDto {
  String? get uid => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get artist => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AudioDtoCopyWith<AudioDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioDtoCopyWith<$Res> {
  factory $AudioDtoCopyWith(AudioDto value, $Res Function(AudioDto) then) =
      _$AudioDtoCopyWithImpl<$Res, AudioDto>;
  @useResult
  $Res call({String? uid, String? name, String? artist, String? path});
}

/// @nodoc
class _$AudioDtoCopyWithImpl<$Res, $Val extends AudioDto>
    implements $AudioDtoCopyWith<$Res> {
  _$AudioDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? artist = freezed,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AudioDtoImplCopyWith<$Res>
    implements $AudioDtoCopyWith<$Res> {
  factory _$$AudioDtoImplCopyWith(
          _$AudioDtoImpl value, $Res Function(_$AudioDtoImpl) then) =
      __$$AudioDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? uid, String? name, String? artist, String? path});
}

/// @nodoc
class __$$AudioDtoImplCopyWithImpl<$Res>
    extends _$AudioDtoCopyWithImpl<$Res, _$AudioDtoImpl>
    implements _$$AudioDtoImplCopyWith<$Res> {
  __$$AudioDtoImplCopyWithImpl(
      _$AudioDtoImpl _value, $Res Function(_$AudioDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? artist = freezed,
    Object? path = freezed,
  }) {
    return _then(_$AudioDtoImpl(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AudioDtoImpl extends _AudioDto with DiagnosticableTreeMixin {
  const _$AudioDtoImpl(
      {required this.uid,
      required this.name,
      required this.artist,
      required this.path})
      : super._();

  factory _$AudioDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioDtoImplFromJson(json);

  @override
  final String? uid;
  @override
  final String? name;
  @override
  final String? artist;
  @override
  final String? path;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioDto(uid: $uid, name: $name, artist: $artist, path: $path)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AudioDto'))
      ..add(DiagnosticsProperty('uid', uid))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('artist', artist))
      ..add(DiagnosticsProperty('path', path));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioDtoImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, name, artist, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioDtoImplCopyWith<_$AudioDtoImpl> get copyWith =>
      __$$AudioDtoImplCopyWithImpl<_$AudioDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioDtoImplToJson(
      this,
    );
  }
}

abstract class _AudioDto extends AudioDto {
  const factory _AudioDto(
      {required final String? uid,
      required final String? name,
      required final String? artist,
      required final String? path}) = _$AudioDtoImpl;
  const _AudioDto._() : super._();

  factory _AudioDto.fromJson(Map<String, dynamic> json) =
      _$AudioDtoImpl.fromJson;

  @override
  String? get uid;
  @override
  String? get name;
  @override
  String? get artist;
  @override
  String? get path;
  @override
  @JsonKey(ignore: true)
  _$$AudioDtoImplCopyWith<_$AudioDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
