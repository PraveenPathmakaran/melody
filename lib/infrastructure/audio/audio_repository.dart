import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart';
import 'package:melody/domain/songs/audio.dart';
import 'package:melody/domain/songs/audio_value_objects.dart' as value_object;
import 'package:melody/domain/songs/i_audio_repository.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/songs/audio_failure.dart';
import 'audio_dtos.dart';

class AudioRepository implements IAudioRepository {
  final AudioPlayer audioPlayer;
  static const String channelName = "audio";
  static const String functionName = "getAudios";
  static const platform = MethodChannel(channelName);

  // Define the playlist
  late ConcatenatingAudioSource playlist;
  late Map<String, Audio> allAudios;

  AudioRepository({required this.audioPlayer});
  @override
  Future<Either<AudioFailure, Unit>> getAllAudio() async {
    try {
      final data = await platform.invokeMethod<List<dynamic>>(functionName);

      if (data != null) {
        final result = data.map(
            (e) => AudioDto.fromJson(Map<String, dynamic>.from(e)).toDomain());

        allAudios = {
          for (var element in result) element.uid.getOrCrash(): element
        };
        return right(unit);
      }

      return left(const AudioFailure.platFormFailure());
    } on PlatformException catch (e) {
      log(e.toString());
      return left(const AudioFailure.platFormFailure());
    }
  }

  @override
  Future<Either<AudioFailure, List<String>>> concatenatingAudios() async {
    try {
      final concatenatedList = allAudios.values
          .map((e) =>
              AudioSource.file(e.path.getOrCrash(), tag: e.uid.getOrCrash()))
          .toList();
      playlist = ConcatenatingAudioSource(
        // Start loading next item just before reaching it
        useLazyPreparation: true,
        // Customise the shuffle algorithm
        shuffleOrder: DefaultShuffleOrder(),
        // Specify the playlist items
        children: concatenatedList,
      );

      audioPlayer.setAudioSource(playlist,
          initialIndex: 0, initialPosition: Duration.zero);

      return right(playlist.sequence.map((e) => e.tag as String).toList());
    } catch (e) {
      log("ConcatenatingAudioSource Failure => $e");
      return left(const AudioFailure.platFormFailure());
    }
  }

  @override
  Future<Either<AudioFailure, Unit>> playOrPause() async {
    try {
      if (audioPlayer.playing) {
        await audioPlayer.pause();
      } else {
        await audioPlayer.play();
      }

      return right(unit);
    } catch (e) {
      return left(const AudioFailure.platFormFailure());
    }
  }

  @override
  Future<Either<AudioFailure, Unit>> playAudio({required int index}) async {
    try {
      audioPlayer.seek(Duration.zero, index: index);
      audioPlayer.play();
      return right(unit);
    } catch (e) {
      return left(const AudioFailure.platFormFailure());
    }
  }

  @override
  Future<Either<AudioFailure, Unit>> nextAudio() async {
    try {
      await audioPlayer.seekToNext();

      return right(unit);
    } catch (e) {
      return left(const AudioFailure.platFormFailure());
    }
  }

  @override
  Future<Either<AudioFailure, Unit>> previousAudio() async {
    try {
      await audioPlayer.seekToPrevious();

      return right(unit);
    } catch (e) {
      return left(const AudioFailure.platFormFailure());
    }
  }

  @override
  Either<AudioFailure, Audio> getAudioData({required value_object.Id uid}) {
    try {
      final data = allAudios[uid.getOrCrash()]!;

      return right(data);
    } catch (e) {
      return left(const AudioFailure.audioNotFound());
    }
  }

  @override
  Future<Either<AudioFailure, Unit>> seekAudio(
      {required Duration duration}) async {
    try {
      await audioPlayer.seek(duration);

      return right(unit);
    } catch (e) {
      return left(const AudioFailure.platFormFailure());
    }
  }

  @override
  Stream<Either<AudioFailure, Duration>> bufferedPositionStream() async* {
    yield* audioPlayer.bufferedPositionStream
        .map<Either<AudioFailure, Duration>>((duration) => right(duration))
        .onErrorReturnWith(
            (error, stackTrace) => left(const AudioFailure.platFormFailure()));
  }

  @override
  Stream<Either<AudioFailure, Duration>> durationStream() async* {
    yield* audioPlayer.durationStream
        .map<Either<AudioFailure, Duration>>(
            (duration) => right(duration ?? Duration.zero))
        .onErrorReturnWith(
            (error, stackTrace) => left(const AudioFailure.platFormFailure()));
  }

  @override
  Stream<Either<AudioFailure, Duration>> positionStream() async* {
    yield* audioPlayer.positionStream
        .map<Either<AudioFailure, Duration>>((position) => right(position))
        .onErrorReturnWith(
            (error, stackTrace) => left(const AudioFailure.platFormFailure()));
  }

  @override
  Stream<Either<AudioFailure, String>> sequenceStateStream() async* {
    yield* audioPlayer.sequenceStateStream
        .map<Either<AudioFailure, String>>((sequenceState) {
      if (sequenceState == null) {
        return left(const AudioFailure.platFormFailure());
      }
      final currentItem = sequenceState.currentSource;
      final String audioId = currentItem?.tag ?? "";
      String value = allAudios[audioId]?.name.getOrCrash() ?? '';

      return right(value);
    }).onErrorReturnWith(
            (error, stackTrace) => left(const AudioFailure.platFormFailure()));
  }
}
