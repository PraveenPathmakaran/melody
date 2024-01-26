part of 'audio_bloc.dart';

@freezed
class AudioState with _$AudioState {
  const factory AudioState({
    required int index,
    required bool isPlaying,
    required Audio audio,
    required Option<Either<AudioFailure, Unit>> failureOrSuccessOption,
  }) = _AudioState;

  factory AudioState.initial() => AudioState(
      index: 0,
      isPlaying: false,
      audio: Audio.emptyAudio(),
      failureOrSuccessOption: none());
}
