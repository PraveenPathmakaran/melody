import 'package:dartz/dartz.dart';
import 'package:melody/domain/songs/audio.dart';
import 'package:melody/domain/songs/audio_failure.dart';

abstract class IAudioRepository {
  Future<Either<AudiFailure, List<Audio>>> getAllAudio();
}
