part of 'audio_controller_bloc.dart';

@freezed
class AudioControllerState with _$AudioControllerState {
  const factory AudioControllerState({
    required bool isPlaying,
    required Duration current,
    required Duration buffered,
    required Duration total,
  }) = _AudioControllerState;

  factory AudioControllerState.initial() => const AudioControllerState(
      isPlaying: false,
      buffered: Duration.zero,
      current: Duration.zero,
      total: Duration.zero);
}
