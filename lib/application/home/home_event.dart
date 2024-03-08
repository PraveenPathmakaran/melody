part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.loadAudios({required List<Audio> audios}) =
      _LoadAudios;
  const factory HomeEvent.deleteButtonPressed({required List<Audio> audios}) =
      _DeleteButtonPressed;
}
