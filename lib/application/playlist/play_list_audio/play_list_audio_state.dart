part of 'play_list_audio_bloc.dart';

@freezed
class PlayListAudioState with _$PlayListAudioState {
  const factory PlayListAudioState.loading() = _Loading;
  const factory PlayListAudioState.loaded({required List<Audio> audioList}) =
      _Loaded;
  const factory PlayListAudioState.error() = _Error;
}
