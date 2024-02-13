part of 'play_list_home_action_bloc.dart';

@freezed
class PlayListHomeActionEvent with _$PlayListHomeActionEvent {
  const factory PlayListHomeActionEvent.playListCreateButtonClick() =
      _PlayListCreateButtonClick;
  const factory PlayListHomeActionEvent.playListNameChanged(
      {required String playListName}) = _PlayListNameChanged;
  const factory PlayListHomeActionEvent.addToPlayList(
      {required PlayListName playListName,
      required AudioPath audioPath}) = _AddToPlayList;
    const factory PlayListHomeActionEvent.removeAudioFromPlayList(
      {required PlayListName playListName,
      required AudioPath audioPath}) = _RemoveAudioFromPlayList;
  
  const factory PlayListHomeActionEvent.deletePlaylist(
      {required PlayListName playListName}) = _DeletePlaylist;
}
