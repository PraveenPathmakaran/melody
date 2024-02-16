import '../../domain/audio/audio.dart';

abstract interface class PlatformRepository {
  Future<List<Audio>> getAllAudio();
  Future<AudioImage> getAudioMetaData({required String path});
}
