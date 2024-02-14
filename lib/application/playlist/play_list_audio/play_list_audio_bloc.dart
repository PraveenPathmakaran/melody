import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:melody/domain/songs/audio_value_objects.dart';
import 'package:melody/domain/songs/i_audio_repository.dart';

import '../../../domain/songs/audio.dart';

part 'play_list_audio_bloc.freezed.dart';
part 'play_list_audio_event.dart';
part 'play_list_audio_state.dart';

class PlayListAudioBloc extends Bloc<PlayListAudioEvent, PlayListAudioState> {
  final IAudioRepository _audioRepository;
  PlayListAudioBloc(this._audioRepository)
      : super(const PlayListAudioState.loading()) {
    on<PlayListAudioEvent>((event, emit) async {
      await event.map(
        loadAudio: (value) async {
          emit(const PlayListAudioState.loading());
          final playListName = value.playListName;
          if (playListName.isValid()) {
            final failureOrSuceesSongs =
                await _audioRepository.getPlayList(playListName: playListName);
            await failureOrSuceesSongs
                .fold((failure) async => emit(const PlayListAudioState.error()),
                    (audioPath) async {
              List<Audio> newList = value.audios
                  .where((element) => audioPath.contains(element.audioPath))
                  .toList();
              emit(PlayListAudioState.loaded(
                playList: newList,
                audioList: value.audios,
              ));
            });
            return;
          }
          emit(PlayListAudioState.loaded(
            playList: [],
            audioList: value.audios,
          ));
        },
      );
    });
  }
}
