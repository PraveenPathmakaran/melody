import 'package:dartz/dartz.dart';
import 'package:melody/domain/songs/audio.dart';
import 'package:melody/domain/songs/audio_failure.dart';
import 'package:melody/domain/songs/audio_value_objects.dart' as obj;

abstract class IAudioRepository {
  Future<Either<AudioFailure, Unit>> getAllAudio();
  Either<AudioFailure, Audio> getAudioData({required obj.Id uid});
  Future<Either<AudioFailure, List<String>>> concatenatingAudios();

  //controle music
  Future<Either<AudioFailure, Unit>> playAudio({required int index});
  Future<Either<AudioFailure, Unit>> playOrPause();
  Future<Either<AudioFailure, Unit>> nextAudio();
  Future<Either<AudioFailure, Unit>> previousAudio();
  Future<Either<AudioFailure, Unit>> seekAudio({required Duration duration});

  //streams
  Stream<Either<AudioFailure, Duration>> bufferedPositionStream();
  Stream<Either<AudioFailure, Duration>> durationStream();
  Stream<Either<AudioFailure, Duration>> positionStream();
  Stream<Either<AudioFailure, Audio>> sequenceStateStream();
}
