class AudioPlayerException implements Exception {
  final String message;
  AudioPlayerException({required this.message});
}
class PlatformException implements Exception {
  final String message;
  PlatformException({required this.message});
}