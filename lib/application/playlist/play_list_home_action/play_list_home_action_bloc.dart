import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:melody/domain/database/database_failures.dart';

import '../../../domain/audio/audio_value_objects.dart';
import '../../../domain/audio/i_audio_repository.dart';
import '../../../domain/database/i_data_base_repository.dart';

part 'play_list_home_action_bloc.freezed.dart';
part 'play_list_home_action_event.dart';
part 'play_list_home_action_state.dart';

class PlayListHomeActionBloc
    extends Bloc<PlayListHomeActionEvent, PlayListHomeActionState> {
  final IDataBaseRepository _dataBaseRepository;
  final IAudioRepository _audioRepository;
  PlayListHomeActionBloc(this._dataBaseRepository, this._audioRepository)
      : super(PlayListHomeActionState.initial()) {
    on<PlayListHomeActionEvent>((event, emit) async {
      await event.map(
        playListCreateButtonClick: (value) async {
          final bool isPlayListValid = state.playListName.isValid();
          if (isPlayListValid) {
            emit(state.copyWith(
              isSubmitting: true,
              failureOrSuccessOption: none(),
            ));

            final failureOrSuccess = await _dataBaseRepository.createPlaylist(
                playList: state.playListName);
            emit(state.copyWith(
                isSubmitting: false,
                showErrorMessage: true,
                failureOrSuccessOption: optionOf(failureOrSuccess)));
          }
        },
        playListNameChanged: (value) {
          emit(state.copyWith(
            playListName: PlayListName(value.playListName),
            failureOrSuccessOption: none(),
          ));
        },
        deletePlaylist: (value) async {
          final bool isPlayListValid = value.playListName.isValid();
          if (isPlayListValid) {
            emit(state.copyWith(
                isSubmitting: true, failureOrSuccessOption: none()));

            final failureOrSuccess = await _dataBaseRepository.deletePlaylist(
                playList: value.playListName);
            emit(state.copyWith(
                isSubmitting: false,
                showErrorMessage: true,
                failureOrSuccessOption: optionOf(failureOrSuccess)));
          }
        },
        addToPlayList: (value) async {
          if (value.playListName.isValid()) {
            emit(state.copyWith(
                isSubmitting: true, failureOrSuccessOption: none()));

            final failureOrSuccess =
                await _dataBaseRepository.addAudioToPlayList(
              audioPath: value.audioPath,
              playListName: value.playListName,
            );
            emit(state.copyWith(
                isSubmitting: false,
                showErrorMessage: true,
                failureOrSuccessOption: optionOf(failureOrSuccess)));
          }
        },
        removeAudioFromPlayList: (value) async {
          if (value.playListName.isValid()) {
            emit(state.copyWith(
                isSubmitting: true, failureOrSuccessOption: none()));

            final failureOrSuccess =
                await _dataBaseRepository.removeAudioFromPlayList(
              audioPath: value.audioPath,
              playListName: value.playListName,
            );
            await _audioRepository.removeFromPlayList(index: value.index);
            emit(state.copyWith(
                isSubmitting: false,
                showErrorMessage: true,
                failureOrSuccessOption: optionOf(failureOrSuccess)));
          }
        },
      );
    });
  }
}
