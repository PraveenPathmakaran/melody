import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:melody/domain/songs/audio_failure.dart';
import 'package:melody/domain/songs/i_audio_repository.dart';

import '../../domain/songs/audio.dart';

part 'audio_bloc.freezed.dart';
part 'audio_event.dart';
part 'audio_state.dart';

class AudioBloc extends Bloc<AudioEvent, AudioState> {
  final IAudioRepository audioRepository;
  AudioBloc(this.audioRepository) : super(AudioState.initial()) {
    on<AudioEvent>((event, emit) async {
      await event.map(
        playStorageAudio: (value) async {
          final failureOrSuccess = await audioRepository.playAudioFromStorage(
              path: value.audio.path);

          failureOrSuccess.fold(
            (l) => emit(state.copyWith(
                failureOrSuccessOption: optionOf(failureOrSuccess))),
            (r) {
              emit(state.copyWith(
                  audio: value.audio,
                  index: value.index,
                  isNavigationEnable: value.isNavigationEnabled));
              add(const AudioEvent.playAudio());
            },
          );
        },
        playAudio: (value) async {
          audioRepository.playAudio();
          emit(state.copyWith(isPlaying: true));
        },
        pauseAudio: (value) async {
          audioRepository.pauseAudio();
          emit(state.copyWith(isPlaying: false));
        },
        backButtonPressed: (value) {
          emit(state.copyWith(isNavigationEnable: false));
        },
      );
    });
  }
}
