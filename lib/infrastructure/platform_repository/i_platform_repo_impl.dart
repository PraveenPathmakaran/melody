import 'package:dartz/dartz.dart';
import 'package:melody/domain/plat_form/i_platform_repository.dart';

import '../../domain/audio/audio.dart';
import '../../domain/audio/audio_value_objects.dart';
import '../../domain/plat_form/platform_channel_failure.dart';
import 'platform_repository.dart';

class IPlatformRepositoryImpl implements IPlatformRepository {
  final PlatformRepository _platformRepository;

  IPlatformRepositoryImpl(this._platformRepository);
  @override
  Future<Either<PlatFormChannelFailure, List<Audio>>>
      getAllAudioFromDevice() async {
    try {
      final songsData = await _platformRepository.getAllAudio();

      return right(songsData);
    } on PlatFormChannelFailure {
      return left(const PlatFormChannelFailure.platFormFailure());
    }
  }

  @override
  Future<Either<PlatFormChannelFailure, AudioImage>> getAudioImageMetadata(
      {required AudioPath audioPath}) async {
    try {
      final image = await _platformRepository.getAudioMetaData(
          path: audioPath.getOrCrash());

      return right(image);
    } catch (e) {
      return left(const PlatFormChannelFailure.metaDataFailure());
    }
  }

  @override
  Future<Either<PlatFormChannelFailure, Unit>> deleteAudioFromDevice(
      {required Audio audio}) async {
    try {
      final path = audio.audioPath.getOrCrash();
      await _platformRepository.deleteFile(path: path);
      return right(unit);
    } catch (e) {
      return left(const PlatFormChannelFailure.deleteFailure());
    }
  }
}
