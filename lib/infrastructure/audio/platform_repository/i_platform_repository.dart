import '../../../domain/songs/audio.dart';

abstract interface class IPlatformRepository {
  Future<List<Audio>> getAllAudio();
}
