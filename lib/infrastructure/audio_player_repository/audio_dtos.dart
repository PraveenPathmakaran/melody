import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/audio/audio.dart';
import '../../../domain/audio/audio_value_objects.dart';

part 'audio_dtos.freezed.dart';
part 'audio_dtos.g.dart';

@freezed
abstract class AudioDto implements _$AudioDto {
  const AudioDto._();
  const factory AudioDto({
    required String? title,
    required String? artist,
    required String? path,
    //@Uint8ListConverter() required Uint8List? image,
  }) = _AudioDto;

  Audio toDomain() {
    return Audio(
        title: Title(title ?? "No title found"),
        artist: Artist(artist ?? "No artist found"),
        audioPath: AudioPath(path ?? "")

        // image: ImageByte(image ?? Uint8List(0)),

        );
  }

  factory AudioDto.fromJson(Map<String, dynamic> json) =>
      _$AudioDtoFromJson(json);
}

@freezed
abstract class ImageDto implements _$ImageDto {
  const ImageDto._();
  const factory ImageDto({
    @Uint8ListConverter() required Uint8List? byteImage,
  }) = _ImageDto;

  AudioImage toDomain() {
    return AudioImage(
      byteImage: ImageByte(byteImage ?? Uint8List(0)),
    );
  }

  factory ImageDto.fromJson(Map<String, dynamic> json) =>
      _$ImageDtoFromJson(json);
}

@JsonSerializable()
class Uint8ListConverter implements JsonConverter<Uint8List?, List<int>?> {
  const Uint8ListConverter();

  @override
  Uint8List? fromJson(List<int>? json) {
    return json == null ? Uint8List(0) : Uint8List.fromList(json);
  }

  @override
  List<int>? toJson(Uint8List? object) {
    return object?.toList();
  }
}
