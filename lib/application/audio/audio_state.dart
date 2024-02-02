part of 'audio_bloc.dart';

@freezed
class AudioState with _$AudioState {
  const factory AudioState({
    required List<Id> audioId,
    required LoadingState loadingState,
    //for pagination list tile loading indicator
    required bool isTileLoading,
    //after all audio fetched from device then it change true
    required bool isAudioListEmpty,
  }) = _AudioState;

  factory AudioState.initial() => const AudioState(
        audioId: [],
        loadingState: LoadingState.loading,
        isTileLoading: false,
        isAudioListEmpty: false,
      );
}
