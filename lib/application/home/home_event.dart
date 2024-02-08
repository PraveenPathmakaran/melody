part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.concatenatingAudios({required List<Audio> audios}) =
      _ConcatenatingAudios;
}
