import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:melody/domain/core/value_failures.dart';

import 'audio_value_objects.dart';

part 'path.freezed.dart';

@freezed
abstract class PathData implements _$PathData {
  const PathData._();
  const factory PathData({
    required AudioPath audioPath,
  }) = _PathData;

  factory PathData.emptyAudio() => PathData(audioPath: AudioPath(""));

  Option<ValueFailure<dynamic>> get failureOption {
    return audioPath.failureOrUnit.fold((l) => some(l), (r) => none());
  }
}
