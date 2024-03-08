import 'package:dartz/dartz.dart';

import '../audio/audio.dart';
import '../audio/audio_value_objects.dart';
import 'platform_channel_failure.dart';

abstract interface class IPlatformRepository {
  Future<Either<PlatFormChannelFailure, AudioImage>> getAudioImageMetadata(
      {required AudioPath audioPath});
  Future<Either<PlatFormChannelFailure, List<Audio>>> getAllAudioFromDevice();
  Future<Either<PlatFormChannelFailure, Unit>> deleteAudioFromDevice(
      {required Audio audio});
}
