import '../../../domain/songs/audio.dart';

abstract class IPlatformRepository {
  Future<List<Audio>> getAllAudio();
}
