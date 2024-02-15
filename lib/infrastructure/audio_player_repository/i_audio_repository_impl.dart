import 'package:dartz/dartz.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart';

import '../../../domain/audio/audio.dart';
import '../../../domain/audio/audio_failure.dart';
import '../../../domain/audio/audio_value_objects.dart';
import '../../../domain/audio/i_audio_repository.dart';
import '../audio_player_repository/i_audio_player_repository.dart';

class IAudioRepositoryImpl implements IAudioRepository {
  final AudioPlayerRepository _audioPlayerRepository;

  // Define the playlist
  late ConcatenatingAudioSource playlist;

  IAudioRepositoryImpl(
    this._audioPlayerRepository,
  );

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
      await _audioPlayerRepository.playAudio(index: index);
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
      return right(sequenceState);
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
  Future<Either<AudioFailure, Unit>> removeFromPlayList(
      {required int index}) async {
    try {
      await _audioPlayerRepository.removeFromPlayList(index: index);
      return right(unit);
    } catch (e) {
      return left(const AudioFailure.dataBaseFailure());
    }
  }

  @override
  Future<Either<AudioFailure, Unit>> concatenatingAudios(
      {required List<Audio> audioData}) async {
    try {
      await _audioPlayerRepository.concatenatingAudios(audioSongs: audioData);
      return right(unit);
    } catch (e) {
      return left(const AudioFailure.audioPlayerFailure());
    }
  }
}
