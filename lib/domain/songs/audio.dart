import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:melody/domain/core/value_failures.dart';

import 'audio_value_objects.dart';

part 'audio.freezed.dart';

enum ButtonState { paused, playing }

enum AudioLoopMode { off, one, all }

@freezed
abstract class Audio implements _$Audio {
  const Audio._();
  const factory Audio({
    required Title title,
    required Artist artist,
    required AudioPath audioPath,
  }) = _Audio;

  factory Audio.emptyAudio() =>
      Audio(title: Title(""), artist: Artist(""), audioPath: AudioPath(""));

  Option<ValueFailure<dynamic>> get failureOption {
    return title.failureOrUnit
        .andThen(artist.failureOrUnit)
        .andThen(audioPath.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}

@freezed
abstract class AudioImage implements _$AudioImage {
  const AudioImage._();
  const factory AudioImage({
    required ImageByte byteImage,
  }) = _ByteImage;

  factory AudioImage.empty() => AudioImage(
        byteImage: ImageByte(Uint8List(0)),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return byteImage.failureOrUnit.fold((l) => some(l), (r) => none());
  }
}
