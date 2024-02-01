part of 'audio_bloc.dart';

@freezed
class AudioState with _$AudioState {
  const factory AudioState.initial() = _Initial;
  const factory AudioState.loadInProgress() = _LoadInProgress;
  const factory AudioState.loadSuccess(List<Id>audioId) = _LoadSuccess;
  const factory AudioState.loadFailure(AudioFailure audioFailure) = _LoadFailure;
}
