part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loadInProgress() = _LoadInProgress;
  const factory HomeState.loadSuccess(List<Audio> audios) = _LoadSuccess;
  const factory HomeState.loadFailure(AudioFailure audiFailure) = _LoadFailure;
}
