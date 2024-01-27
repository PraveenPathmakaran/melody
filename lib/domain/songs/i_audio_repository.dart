import 'package:dartz/dartz.dart';
import 'package:melody/domain/songs/audio.dart';
import 'package:melody/domain/songs/audio_failure.dart';
import 'package:melody/domain/songs/audio_value_objects.dart';

abstract class IAudioRepository {
  Future<Either<AudioFailure, Unit>> getAllAudio();
  Either<AudioFailure, Audio> getAudioData({required Id uid});
  Future<Either<AudioFailure, Map<String, Audio>>> concatenatingAudios();
  Future<Either<AudioFailure, Unit>> playAudio({required int index});
  Future<Either<AudioFailure, Unit>> playOrPause();
  Future<Either<AudioFailure, Unit>> nextAudio();
  Future<Either<AudioFailure, Unit>> previousAudio();
}
