part of 'audio_bloc.dart';

@freezed
class AudioState with _$AudioState {
  const factory AudioState.initial() = _Initial;
  const factory AudioState.loading() = _Loading;
  const factory AudioState.loaded({required List<Audio> audioList}) = _Loaded;
  const factory AudioState.error() = _Error;
}
