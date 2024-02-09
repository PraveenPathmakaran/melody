part of 'audio_controller_bloc.dart';

@freezed
class AudioControllerState with _$AudioControllerState {
  const factory AudioControllerState({
    required Option<AudioDuration> current,
    required Option<AudioDuration> buffered,
    required LoadingState loadingState,
    required Option<AudioDuration> total,
    required Option<Audio> audio,
    required Option<ButtonState> buttonState,
    required Option<bool> isShuffleMode,
    required Option<bool> miniPlayerVisibility,
    required Option<AudioLoopMode> audioLoopMode,
    required String currentScreen,
  }) = _AudioControllerState;

  factory AudioControllerState.initial() => AudioControllerState(
        buffered: none(),
        current: none(),
        audio: none(),
        loadingState: LoadingState.initial,
        buttonState: none(),
        isShuffleMode: none(),
        audioLoopMode: none(),
        miniPlayerVisibility: none(),
        total: none(),
        currentScreen: "",
      );
}
