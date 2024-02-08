part of 'audio_controller_bloc.dart';

@freezed
class AudioControllerState with _$AudioControllerState {
  const factory AudioControllerState({
    required Option<AudioDuration> current,
    required Option<AudioDuration> buffered,
    required Option<AudioDuration> total,
    required Option<AudioPath> audioPath,
    required Option<ButtonState> buttonState,
    required Option<bool> isShuffleMode,
    required Option<bool> miniPlayerVisibility,
    required Option<AudioLoopMode> audioLoopMode,
  }) = _AudioControllerState;

  factory AudioControllerState.initial() => AudioControllerState(
      buffered: none(),
      current: none(),
      audioPath: none(),
      buttonState: none(),
      isShuffleMode: none(),
      audioLoopMode: none(),
      miniPlayerVisibility: none(),
      total: none());
}
