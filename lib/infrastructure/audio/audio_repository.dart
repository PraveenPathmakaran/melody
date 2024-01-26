import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart';
import 'package:melody/domain/songs/audio.dart';
import 'package:melody/domain/songs/audio_value_objects.dart';
import 'package:melody/domain/songs/i_audio_repository.dart';

import '../../domain/songs/audio_failure.dart';
import 'audio_dtos.dart';

class AudioRepository implements IAudioRepository {
  final AudioPlayer audioPlayer;
  static const String channelName = "audio";
  static const String functionName = "getAudios";
  static const platform = MethodChannel(channelName);

  AudioRepository({required this.audioPlayer});
  @override
  Future<Either<AudioFailure, List<Audio>>> getAllAudio() async {
    try {
      final allAudios =
          await platform.invokeMethod<List<dynamic>>(functionName);
      if (allAudios != null) {
        List<Audio> songs = allAudios
            .map((e) =>
                AudioDto.fromJson(Map<String, dynamic>.from(e)).toDomain())
            .toList();

        return right(songs);
      }

      return left(const AudioFailure.platFormFailure());
    } on PlatformException catch (e) {
      log(e.toString());
      return left(const AudioFailure.platFormFailure());
    }
  }

  @override
  Future<void> pauseAudio() async {
    await audioPlayer.pause();
  }

  @override
  Future<void> playAudio() async {
    await audioPlayer.play();
  }

  @override
  Future<Either<AudioFailure, Unit>> playAudioFromStorage(
      {required AudioPath path}) async {
    try {
      await audioPlayer.setFilePath(path.getOrCrash());
      return right(unit);
    } catch (e) {
      log("play Failure");
      return left(const AudioFailure.platFormFailure());
    }
  }
}
  // @override
  // Stream<Either<AudioFailure, bool>> isPlaying() async* {
  //   yield* audioPlayer.playingStream
  //       .map<Either<AudioFailure, bool>>((event) => right(event))
  //       .onErrorReturnWith(
  //           (error, stackTrace) => left(const AudioFailure.platFormFailure()));
  // }