part of 'audio_bloc.dart';

@freezed
class AudioState with _$AudioState {
  const factory AudioState.initial() = _Initial;
  const factory AudioState.loading() = _Loading;
  const factory AudioState.loaded({required List<PathData> pathList}) =
      _Loaded;
  const factory AudioState.error() = _Error;
}
