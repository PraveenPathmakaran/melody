part of 'audio_controller_bloc.dart';

@freezed
class AudioControllerState with _$AudioControllerState {
  const factory AudioControllerState({
    required Option<AudioDuration> current,
    required Option<AudioDuration> buffered,
    required Option<AudioDuration> total,
    required Option<int> audioIndex,
    required Option<ButtonState> buttonState,
    required Option<bool> isShuffleMode,
    required Option<bool> miniPlayerVisibility,
    required Option<AudioLoopMode> audioLoopMode,
  }) = _AudioControllerState;

  factory AudioControllerState.initial() => AudioControllerState(
      buffered: none(),
      current: none(),
      audioIndex: none(),
      buttonState: none(),
      isShuffleMode: none(),
      audioLoopMode: none(),
      miniPlayerVisibility: none(),
      total: none());
}
