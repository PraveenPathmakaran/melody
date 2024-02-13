// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Audio {
  Title get title => throw _privateConstructorUsedError;
  Artist get artist => throw _privateConstructorUsedError;
  AudioPath get audioPath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AudioCopyWith<Audio> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioCopyWith<$Res> {
  factory $AudioCopyWith(Audio value, $Res Function(Audio) then) =
      _$AudioCopyWithImpl<$Res, Audio>;
  @useResult
  $Res call({Title title, Artist artist, AudioPath audioPath});
}

/// @nodoc
class _$AudioCopyWithImpl<$Res, $Val extends Audio>
    implements $AudioCopyWith<$Res> {
  _$AudioCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? artist = null,
    Object? audioPath = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Title,
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Artist,
      audioPath: null == audioPath
          ? _value.audioPath
          : audioPath // ignore: cast_nullable_to_non_nullable
              as AudioPath,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AudioImplCopyWith<$Res> implements $AudioCopyWith<$Res> {
  factory _$$AudioImplCopyWith(
          _$AudioImpl value, $Res Function(_$AudioImpl) then) =
      __$$AudioImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Title title, Artist artist, AudioPath audioPath});
}

/// @nodoc
class __$$AudioImplCopyWithImpl<$Res>
    extends _$AudioCopyWithImpl<$Res, _$AudioImpl>
    implements _$$AudioImplCopyWith<$Res> {
  __$$AudioImplCopyWithImpl(
      _$AudioImpl _value, $Res Function(_$AudioImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? artist = null,
    Object? audioPath = null,
  }) {
    return _then(_$AudioImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Title,
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Artist,
      audioPath: null == audioPath
          ? _value.audioPath
          : audioPath // ignore: cast_nullable_to_non_nullable
              as AudioPath,
    ));
  }
}

/// @nodoc

class _$AudioImpl extends _Audio with DiagnosticableTreeMixin {
  const _$AudioImpl(
      {required this.title, required this.artist, required this.audioPath})
      : super._();

  @override
  final Title title;
  @override
  final Artist artist;
  @override
  final AudioPath audioPath;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Audio(title: $title, artist: $artist, audioPath: $audioPath)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Audio'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('artist', artist))
      ..add(DiagnosticsProperty('audioPath', audioPath));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.audioPath, audioPath) ||
                other.audioPath == audioPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, artist, audioPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioImplCopyWith<_$AudioImpl> get copyWith =>
      __$$AudioImplCopyWithImpl<_$AudioImpl>(this, _$identity);
}

abstract class _Audio extends Audio {
  const factory _Audio(
      {required final Title title,
      required final Artist artist,
      required final AudioPath audioPath}) = _$AudioImpl;
  const _Audio._() : super._();

  @override
  Title get title;
  @override
  Artist get artist;
  @override
  AudioPath get audioPath;
  @override
  @JsonKey(ignore: true)
  _$$AudioImplCopyWith<_$AudioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AudioImage {
  ImageByte get byteImage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AudioImageCopyWith<AudioImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioImageCopyWith<$Res> {
  factory $AudioImageCopyWith(
          AudioImage value, $Res Function(AudioImage) then) =
      _$AudioImageCopyWithImpl<$Res, AudioImage>;
  @useResult
  $Res call({ImageByte byteImage});
}

/// @nodoc
class _$AudioImageCopyWithImpl<$Res, $Val extends AudioImage>
    implements $AudioImageCopyWith<$Res> {
  _$AudioImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? byteImage = null,
  }) {
    return _then(_value.copyWith(
      byteImage: null == byteImage
          ? _value.byteImage
          : byteImage // ignore: cast_nullable_to_non_nullable
              as ImageByte,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ByteImageImplCopyWith<$Res>
    implements $AudioImageCopyWith<$Res> {
  factory _$$ByteImageImplCopyWith(
          _$ByteImageImpl value, $Res Function(_$ByteImageImpl) then) =
      __$$ByteImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ImageByte byteImage});
}

/// @nodoc
class __$$ByteImageImplCopyWithImpl<$Res>
    extends _$AudioImageCopyWithImpl<$Res, _$ByteImageImpl>
    implements _$$ByteImageImplCopyWith<$Res> {
  __$$ByteImageImplCopyWithImpl(
      _$ByteImageImpl _value, $Res Function(_$ByteImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? byteImage = null,
  }) {
    return _then(_$ByteImageImpl(
      byteImage: null == byteImage
          ? _value.byteImage
          : byteImage // ignore: cast_nullable_to_non_nullable
              as ImageByte,
    ));
  }
}

/// @nodoc

class _$ByteImageImpl extends _ByteImage with DiagnosticableTreeMixin {
  const _$ByteImageImpl({required this.byteImage}) : super._();

  @override
  final ImageByte byteImage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioImage(byteImage: $byteImage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AudioImage'))
      ..add(DiagnosticsProperty('byteImage', byteImage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ByteImageImpl &&
            (identical(other.byteImage, byteImage) ||
                other.byteImage == byteImage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, byteImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ByteImageImplCopyWith<_$ByteImageImpl> get copyWith =>
      __$$ByteImageImplCopyWithImpl<_$ByteImageImpl>(this, _$identity);
}

abstract class _ByteImage extends AudioImage {
  const factory _ByteImage({required final ImageByte byteImage}) =
      _$ByteImageImpl;
  const _ByteImage._() : super._();

  @override
  ImageByte get byteImage;
  @override
  @JsonKey(ignore: true)
  _$$ByteImageImplCopyWith<_$ByteImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
