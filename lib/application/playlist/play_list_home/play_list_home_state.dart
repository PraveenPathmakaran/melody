part of 'play_list_home_bloc.dart';

@freezed
class PlayListHomeState with _$PlayListHomeState {
  const factory PlayListHomeState.loading() = _Loading;
  const factory PlayListHomeState.loaded({required List<PlayListName>playListNames}) = _Loaded;
  const factory PlayListHomeState.failure() = _Failure;
}
