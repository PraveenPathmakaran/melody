part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = _Loading;
  const factory HomeState.loaded({required List<Audio> audioList}) = _Loaded;
  const factory HomeState.error() = _Error;
}
