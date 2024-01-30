part of 'audio_controller_bloc.dart';

@freezed
class AudioControllerState with _$AudioControllerState {
  const factory AudioControllerState({
    required bool isPlaying,
    required Duration current,
    required Duration buffered,
    required Duration total,
    required Audio audio,
  }) = _AudioControllerState;

  factory AudioControllerState.initial() => AudioControllerState(
      isPlaying: false,
      buffered: Duration.zero,
      current: Duration.zero,
      audio: Audio.emptyAudio(),
      total: Duration.zero);
}
