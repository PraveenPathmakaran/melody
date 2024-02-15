import 'package:dartz/dartz.dart';

import 'audio.dart';
import 'audio_failure.dart';
import 'audio_value_objects.dart';

abstract interface class IAudioRepository {
  //controle music
  Future<Either<AudioFailure, Unit>> playAudio({required int index});
  Future<Either<AudioFailure, Unit>> playOrPause();
  Future<Either<AudioFailure, Unit>> nextAudio();
  Future<Either<AudioFailure, Unit>> previousAudio();
  Future<Either<AudioFailure, Unit>> changeShuffleMode();
  Future<Either<AudioFailure, Unit>> seekAudio({required Duration duration});
  Future<Either<AudioFailure, Unit>> setAudioLoopMode(
      {required AudioLoopMode audioLoopMode});
  Future<Either<AudioFailure, Unit>> removeFromPlayList({required int index});
  Future<Either<AudioFailure, Unit>> concatenatingAudios(
      {required List<Audio> audioData});

  //streams
  Stream<Either<AudioFailure, AudioDuration>> bufferedPositionStream();
  Stream<Either<AudioFailure, AudioDuration>> durationStream();
  Stream<Either<AudioFailure, AudioDuration>> positionStream();
  Stream<Either<AudioFailure, Audio>> sequenceStateStream();
  Stream<Either<AudioFailure, ButtonState>> buttonStateStream();
  Stream<Either<AudioFailure, bool>> shuffleModeStream();
  Stream<Either<AudioFailure, AudioLoopMode>> audioLoopStream();
}
