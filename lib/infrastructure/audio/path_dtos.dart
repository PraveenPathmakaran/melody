import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:melody/domain/songs/audio_value_objects.dart';
import 'package:melody/domain/songs/path.dart';

part 'path_dtos.freezed.dart';
part 'path_dtos.g.dart';

@freezed
abstract class PathDatDto implements _$PathDatDto {
  const PathDatDto._();
  const factory PathDatDto({
    required String? audioPath,
  }) = _PathDatDto;

  PathData toDomain() {
    return PathData(audioPath: AudioPath(audioPath ?? ""));
  }

  factory PathDatDto.fromStorage(dynamic data) => PathDatDto(audioPath: data);

  factory PathDatDto.fromJson(Map<String, dynamic> json) =>
      _$PathDatDtoFromJson(json);
}
