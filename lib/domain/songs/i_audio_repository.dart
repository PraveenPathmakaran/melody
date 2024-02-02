import 'package:dartz/dartz.dart';
import 'package:melody/domain/songs/audio.dart';
import 'package:melody/domain/songs/audio_failure.dart';

import 'audio_value_objects.dart';

abstract class IAudioRepository {
  Either<AudioFailure, Audio> getAudioData({required Id uid});
  Future<Either<AudioFailure, List<Id>>> concatenatingAudios();

  //controle music
  Future<Either<AudioFailure, Unit>> playAudio({required int index});
  Future<Either<AudioFailure, Unit>> playOrPause();
  Future<Either<AudioFailure, Unit>> nextAudio();
  Future<Either<AudioFailure, Unit>> previousAudio();
  Future<Either<AudioFailure, Unit>> changeShuffleMode();
  Future<Either<AudioFailure, Unit>> seekAudio({required Duration duration});
  Future<Either<AudioFailure, Unit>> setAudioLoopMode(
      {required AudioLoopMode audioLoopMode});

  //streams
  Stream<Either<AudioFailure, AudioDuration>> bufferedPositionStream();
  Stream<Either<AudioFailure, AudioDuration>> durationStream();
  Stream<Either<AudioFailure, AudioDuration>> positionStream();
  Stream<Either<AudioFailure, Audio>> sequenceStateStream();
  Stream<Either<AudioFailure, ButtonState>> buttonStateStream();
  Stream<Either<AudioFailure, bool>> shuffleModeStream();
  Stream<Either<AudioFailure, AudioLoopMode>> audioLoopStream();
}
