part of 'audio_controller_bloc.dart';

@freezed
class AudioControllerState with _$AudioControllerState {
  const factory AudioControllerState({
    required bool isPlaying,
    required AudioDuration current,
    required AudioDuration buffered,
    required AudioDuration total,
    required Audio audio,
  }) = _AudioControllerState;

  factory AudioControllerState.initial() => AudioControllerState(
      isPlaying: false,
      buffered: AudioDuration(0),
      current: AudioDuration(0),
      audio: Audio.emptyAudio(),
      total: AudioDuration(0));
}
