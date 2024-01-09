import 'dart:developer';

import 'package:audioplayers/audioplayers.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:melody/domain/songs/audio.dart';
import 'package:melody/domain/songs/audio_value_objects.dart';
import 'package:melody/domain/songs/i_audio_repository.dart';
import 'package:rxdart/rxdart.dart';

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
  Future<Either<AudioFailure, Unit>> pauseAudio(
      {required bool pauseOrPlay}) async {
    try {
      if (pauseOrPlay) {
        await audioPlayer.pause();
      } else {
        await audioPlayer.resume();
      }

      return right(unit);
    } catch (e) {
      log("pause Failure");
      return left(const AudioFailure.platFormFailure());
    }
  }

  @override
  Future<Either<AudioFailure, Unit>> playAudio({required Path path}) async {
    try {
      await audioPlayer.play(DeviceFileSource(path.getOrCrash()));
      return right(unit);
    } catch (e) {
      log("play Failure");
      return left(const AudioFailure.platFormFailure());
    }
  }

  @override
  Stream<Either<AudioFailure, int>> streamAudio() async* {
    yield* audioPlayer.eventStream.map<Either<AudioFailure, int>>((event) {
      log("<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<${event.duration.toString()}");
      return right(event.duration?.inSeconds ?? 0);
    }).onErrorReturnWith((error, stackTrace) {
      return left(const AudioFailure.platFormFailure());
    });
  }
}
