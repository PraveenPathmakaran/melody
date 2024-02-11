part of 'play_list_audio_bloc.dart';

@freezed
class PlayListAudioEvent with _$PlayListAudioEvent {
  const factory PlayListAudioEvent.concatenatingAudios(
      {required List<Audio> audios,
      required PlayListName playListName}) = _ConcatenatingAudios;
}
