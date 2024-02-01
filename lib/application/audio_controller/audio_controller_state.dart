part of 'audio_controller_bloc.dart';

@freezed
class AudioControllerState with _$AudioControllerState {
  const factory AudioControllerState({
    required AudioDuration current,
    required AudioDuration buffered,
    required AudioDuration total,
    required Audio audio,
    required ButtonState buttonState,
  }) = _AudioControllerState;

  factory AudioControllerState.initial() => AudioControllerState(
      buffered: AudioDuration(0),
      current: AudioDuration(0),
      audio: Audio.emptyAudio(),
      buttonState: ButtonState.paused,
      total: AudioDuration(0));
}
