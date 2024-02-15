import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:melody/domain/database/i_data_base_repository.dart';

import '../../../domain/audio/audio.dart';
import '../../../domain/audio/audio_value_objects.dart';

part 'play_list_audio_bloc.freezed.dart';
part 'play_list_audio_event.dart';
part 'play_list_audio_state.dart';

class PlayListAudioBloc extends Bloc<PlayListAudioEvent, PlayListAudioState> {
  final IDataBaseRepository _dataBaseRepository;
  PlayListAudioBloc(this._dataBaseRepository)
      : super(const PlayListAudioState.loading()) {
    on<PlayListAudioEvent>((event, emit) async {
      await event.map(
        loadAudio: (value) async {
          emit(const PlayListAudioState.loading());
          final playListName = value.playListName;
          if (playListName.isValid()) {
            final failureOrSuceesSongs = await _dataBaseRepository.getPlayList(
                playListName: playListName);
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
