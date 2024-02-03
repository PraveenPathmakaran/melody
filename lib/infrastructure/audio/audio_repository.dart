import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:just_audio/just_audio.dart';
import 'package:melody/domain/songs/audio.dart';
import 'package:melody/domain/songs/audio_value_objects.dart';
import 'package:melody/domain/songs/i_audio_repository.dart';
import 'package:melody/infrastructure/audio/audio_player_repository/i_audio_player_repository.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/songs/audio_failure.dart';
import 'platform_repository/i_platform_repository.dart';

class AudioRepository implements IAudioRepository {
  final IAudioPlayerRepository _audioPlayerRepository;
  final IPlatformRepository _platformRepository;
  // Define the playlist
  late ConcatenatingAudioSource playlist;

  AudioRepository(this._audioPlayerRepository, this._platformRepository);

  @override
  Future<Either<AudioFailure, List<Audio>>> getAllAudioFromDevice() async {
    try {
      final songsData = await _platformRepository.getAllAudio();

      return right(songsData);
    } catch (e) {
      return left(const AudioFailure.platFormFailure());
    }
  }

  @override
  Future<Either<AudioFailure, Unit>> concatenatingAudios(
      {required List<Audio> audios}) async {
    try {
      await _audioPlayerRepository.concatenatingAudios(audioSongs: audios);
      return right(unit);
    } on AudioFailure {
      return left(const AudioFailure.audioLimitExceeded());
    } catch (e) {
      log("ConcatenatingAudioSource Failure => $e");
      return left(const AudioFailure.audioPlayerFailure());
    }
  }

  @override
  Future<Either<AudioFailure, Unit>> playOrPause() async {
    try {
      _audioPlayerRepository.playOrPause();
      return right(unit);
    } catch (e) {
      return left(const AudioFailure.audioPlayerFailure());
    }
  }

  @override
  Future<Either<AudioFailure, Unit>> playAudio({required int index}) async {
    try {
      _audioPlayerRepository.playAudio(index: index);
      return right(unit);
    } catch (e) {
      return left(const AudioFailure.audioPlayerFailure());
    }
  }

  @override
  Future<Either<AudioFailure, Unit>> nextAudio() async {
    try {
      _audioPlayerRepository.nextAudio();
      return right(unit);
    } catch (e) {
      return left(const AudioFailure.audioPlayerFailure());
    }
  }

  @override
  Future<Either<AudioFailure, Unit>> previousAudio() async {
    try {
      _audioPlayerRepository.previousAudio();
      return right(unit);
    } catch (e) {
      return left(const AudioFailure.audioPlayerFailure());
    }
  }

  @override
  Future<Either<AudioFailure, Unit>> seekAudio(
      {required Duration duration}) async {
    try {
      _audioPlayerRepository.seekAudio(duration: duration);
      return right(unit);
    } catch (e) {
      return left(const AudioFailure.audioPlayerFailure());
    }
  }

  @override
  Future<Either<AudioFailure, Unit>> changeShuffleMode() async {
    try {
      _audioPlayerRepository.changeShuffleMode();
      return right(unit);
    } catch (e) {
      return left(const AudioFailure.audioPlayerFailure());
    }
  }

  @override
  Future<Either<AudioFailure, Unit>> setAudioLoopMode(
      {required AudioLoopMode audioLoopMode}) async {
    try {
      _audioPlayerRepository.setAudioLoopMode(audioLoopMode: audioLoopMode);
      return right(unit);
    } catch (e) {
      return left(const AudioFailure.audioPlayerFailure());
    }
  }

  @override
  Stream<Either<AudioFailure, AudioDuration>> bufferedPositionStream() async* {
    yield* _audioPlayerRepository
        .bufferedPositionStream()
        .map<Either<AudioFailure, AudioDuration>>(
            (duration) => right(AudioDuration(duration)))
        .onErrorReturnWith((error, stackTrace) =>
            left(const AudioFailure.audioPlayerFailure()));
  }

  @override
  Stream<Either<AudioFailure, AudioDuration>> durationStream() async* {
    yield* _audioPlayerRepository
        .durationStream()
        .map<Either<AudioFailure, AudioDuration>>(
            (duration) => right(AudioDuration(duration)))
        .onErrorReturnWith((error, stackTrace) =>
            left(const AudioFailure.audioPlayerFailure()));
  }

  @override
  Stream<Either<AudioFailure, AudioDuration>> positionStream() async* {
    yield* _audioPlayerRepository
        .positionStream()
        .map<Either<AudioFailure, AudioDuration>>(
            (duration) => right(AudioDuration(duration)))
        .onErrorReturnWith((error, stackTrace) =>
            left(const AudioFailure.audioPlayerFailure()));
  }

  @override
  Stream<Either<AudioFailure, Audio>> sequenceStateStream() async* {
    yield* _audioPlayerRepository
        .sequenceStateStream()
        .map<Either<AudioFailure, Audio>>((sequenceState) {
      if (sequenceState.isEmpty) {
        return left(const AudioFailure.audioPlayerFailure());
      }
      final audio = Audio.emptyAudio(); //todo:proper way to get audio Data
      return right(audio);
    }).onErrorReturnWith((error, stackTrace) =>
            left(const AudioFailure.audioPlayerFailure()));
  }

  @override
  Stream<Either<AudioFailure, ButtonState>> buttonStateStream() async* {
    yield* _audioPlayerRepository
        .buttonState()
        .map<Either<AudioFailure, ButtonState>>(
            (buttonState) => right(buttonState))
        .onErrorReturnWith((error, stackTrace) =>
            left(const AudioFailure.audioPlayerFailure()));
  }

  @override
  Stream<Either<AudioFailure, bool>> shuffleModeStream() async* {
    yield* _audioPlayerRepository
        .shuffleModeStream()
        .map<Either<AudioFailure, bool>>((isShuffle) => right(isShuffle))
        .onErrorReturnWith((error, stackTrace) =>
            left(const AudioFailure.audioPlayerFailure()));
  }

  @override
  Stream<Either<AudioFailure, AudioLoopMode>> audioLoopStream() async* {
    yield* _audioPlayerRepository
        .loopAudioStream()
        .map<Either<AudioFailure, AudioLoopMode>>((loopMode) => right(loopMode))
        .onErrorReturnWith((error, stackTrace) =>
            left(const AudioFailure.audioPlayerFailure()));
  }

  @override
  Either<AudioFailure, Audio> getAudioData({required Id uid}) {
    return right(Audio.emptyAudio());
  }
}
