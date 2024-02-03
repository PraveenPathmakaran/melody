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
  String? get title => throw _privateConstructorUsedError;
  String? get artist => throw _privateConstructorUsedError;
  @Uint8ListConverter()
  Uint8List? get image => throw _privateConstructorUsedError;

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
  $Res call(
      {String? title, String? artist, @Uint8ListConverter() Uint8List? image});
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
    Object? title = freezed,
    Object? artist = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
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
  $Res call(
      {String? title, String? artist, @Uint8ListConverter() Uint8List? image});
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
    Object? title = freezed,
    Object? artist = freezed,
    Object? image = freezed,
  }) {
    return _then(_$AudioDtoImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AudioDtoImpl extends _AudioDto with DiagnosticableTreeMixin {
  const _$AudioDtoImpl(
      {required this.title,
      required this.artist,
      @Uint8ListConverter() required this.image})
      : super._();

  factory _$AudioDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioDtoImplFromJson(json);

  @override
  final String? title;
  @override
  final String? artist;
  @override
  @Uint8ListConverter()
  final Uint8List? image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioDto(title: $title, artist: $artist, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AudioDto'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('artist', artist))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioDtoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, artist, const DeepCollectionEquality().hash(image));

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
      {required final String? title,
      required final String? artist,
      @Uint8ListConverter() required final Uint8List? image}) = _$AudioDtoImpl;
  const _AudioDto._() : super._();

  factory _AudioDto.fromJson(Map<String, dynamic> json) =
      _$AudioDtoImpl.fromJson;

  @override
  String? get title;
  @override
  String? get artist;
  @override
  @Uint8ListConverter()
  Uint8List? get image;
  @override
  @JsonKey(ignore: true)
  _$$AudioDtoImplCopyWith<_$AudioDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
