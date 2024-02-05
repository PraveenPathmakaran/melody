import 'package:melody/domain/songs/audio.dart';

abstract interface class IPlatformRepository {
  Future<List<Audio>> getAllAudio();
  Future<AudioImage> getAudioMetaData({required String path});
}
