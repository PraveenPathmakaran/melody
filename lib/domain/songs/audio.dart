import 'dart:typed_data';

import 'package:dartz/dartz.dart';
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
    required Id uid,
    required Name name,
    required Artist artist,
    required AudioPath path,
    required ImageByte image,
  }) = _Audio;

  factory Audio.emptyAudio() => Audio(
      uid: Id(""),
      name: Name(""),
      artist: Artist(""),
      path: AudioPath(""),
      image: ImageByte(Uint8List(0)));

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(uid.failureOrUnit)
        .andThen(artist.failureOrUnit)
        .andThen(path.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}
