part of 'play_list_home_bloc.dart';

@freezed
class PlayListHomeEvent with _$PlayListHomeEvent {
  const factory PlayListHomeEvent.loadPlayList() = _LoadPlayList;
}
