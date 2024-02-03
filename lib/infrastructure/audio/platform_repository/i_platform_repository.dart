import 'package:melody/domain/songs/audio.dart';

import '../../../domain/songs/path.dart';

abstract interface class IPlatformRepository {
  Future<List<PathData>> getAllAudio();
  Future<Audio> getAudioMetaData({required String path});
}
