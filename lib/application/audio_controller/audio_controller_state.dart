part of 'audio_controller_bloc.dart';

@freezed
class AudioControllerState with _$AudioControllerState {
  const factory AudioControllerState({required bool isPlaying}) =
      _AudioControllerState;

  factory AudioControllerState.initial() =>
      const AudioControllerState(isPlaying: false);
}
