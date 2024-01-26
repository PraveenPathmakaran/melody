import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:melody/domain/songs/audio.dart';
import 'package:melody/domain/songs/audio_value_objects.dart';

part 'audio_dtos.freezed.dart';
part 'audio_dtos.g.dart';

@freezed
abstract class AudioDto implements _$AudioDto {
  const AudioDto._();
  const factory AudioDto({
    required String? id,
    required String? name,
    required String? artist,
    required String? path,
  }) = _AudioDto;

  Audio toDomain() {
    return Audio(
      uid: Id(id ?? ""),
      name: Name(name ?? ""),
      artist: Artist(artist ?? ""),
      path: AudioPath(path ?? ""),
    );
  }

  factory AudioDto.fromJson(Map<String, dynamic> json) =>
      _$AudioDtoFromJson(json);
}
