import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:melody/domain/songs/audio_value_objects.dart';
import 'package:melody/domain/songs/i_audio_repository.dart';
import 'package:melody/presentation/core/constant.dart';

part 'audio_bloc.freezed.dart';
part 'audio_event.dart';
part 'audio_state.dart';

class AudioBloc extends Bloc<AudioEvent, AudioState> {
  final IAudioRepository _audioRepository;
  AudioBloc(this._audioRepository) : super(AudioState.initial()) {
    on<AudioEvent>((event, emit) async {
      await event.map(
        concatenatingAudios: (value) async {
          emit(state.copyWith(
            isTileLoading: true,
          ));

          final failureOrSucess = await _audioRepository.concatenatingAudios();
          failureOrSucess.fold(
              (f) => emit(
                    state.copyWith(
                        loadingState: LoadingState.failed,
                        isTileLoading: false),
                  ), (audios) {
            ///if audios is empty then no more songs found device storage
            if (audios.isEmpty) {
              emit(state.copyWith(
                isAudioListEmpty: true,
                isTileLoading: false,
                loadingState: LoadingState.loaded,
              ));
            } else {
              emit(state.copyWith(
                  audioId: audios,
                  isTileLoading: false,
                  loadingState: LoadingState.loaded));
            }
          });
        },
      );
    },transformer: concurrent());
  }
}
