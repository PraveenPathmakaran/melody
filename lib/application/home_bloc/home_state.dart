part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState(
      {required List<Audio> audios,
      required Option<AudioFailure> failure,
      required bool isLoading}) = _HomeState;

  factory HomeState.initail() =>
      HomeState(audios: [], failure: none(), isLoading: false);
}
