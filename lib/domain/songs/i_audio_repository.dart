import 'package:dartz/dartz.dart';
import 'package:melody/domain/songs/audio.dart';
import 'package:melody/domain/songs/audio_failure.dart';

import 'audio_value_objects.dart';

abstract class IAudioRepository {
  Future<Either<AudioFailure, List<Audio>>> getAllAudio();
  Future<Either<AudioFailure, Unit>> playAudio({required Path path});
  Future<Either<AudioFailure, Unit>> pauseAudio({required bool pauseOrPlay});

  Stream<Either<AudioFailure, int>> streamAudio();
}