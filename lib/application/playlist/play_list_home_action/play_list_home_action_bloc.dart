import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:melody/domain/songs/audio_value_objects.dart';
import 'package:melody/domain/songs/i_audio_repository.dart';

import '../../../domain/songs/playlist_failures.dart';

part 'play_list_home_action_bloc.freezed.dart';
part 'play_list_home_action_event.dart';
part 'play_list_home_action_state.dart';

class PlayListHomeActionBloc
    extends Bloc<PlayListHomeActionEvent, PlayListHomeActionState> {
  final IAudioRepository _audioRepository;
  PlayListHomeActionBloc(this._audioRepository)
      : super(PlayListHomeActionState.initial()) {
    on<PlayListHomeActionEvent>((event, emit) async {
      await event.map(
        playListCreateButtonClick: (value) async {
          final bool isPlayListValid = state.playListName.isValid();
          if (isPlayListValid) {
            emit(state.copyWith(
                isSubmitting: true, failureOrSuccessOption: none()));

            final failureOrSuccess = await _audioRepository.createPlaylist(
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

            final failureOrSuccess = await _audioRepository.deletePlaylist(
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

            final failureOrSuccess = await _audioRepository.addAudioToPlayList(
              audioPath: value.audioPath,
              playListName: value.playListName,
            );
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
