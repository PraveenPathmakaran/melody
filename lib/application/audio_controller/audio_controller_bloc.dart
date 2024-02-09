import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:melody/domain/songs/audio.dart';
import 'package:melody/domain/songs/audio_failure.dart';
import 'package:melody/domain/songs/audio_value_objects.dart';
import 'package:melody/domain/songs/i_audio_repository.dart';
import 'package:melody/presentation/core/constant.dart';
import 'package:rxdart/rxdart.dart';

part 'audio_controller_bloc.freezed.dart';
part 'audio_controller_event.dart';
part 'audio_controller_state.dart';

class AudioControllerBloc
    extends Bloc<AudioControllerEvent, AudioControllerState> {
  final IAudioRepository _audioRepository;
  StreamSubscription? combinedStreamSubscription;

  AudioControllerBloc(this._audioRepository)
      : super(AudioControllerState.initial()) {
    on<AudioControllerEvent>((event, emit) async {
      await event.map(
        listenAllStreams: (value) async {
          final combinedStreams = Rx.combineLatest7(
              _audioRepository.bufferedPositionStream(),
              _audioRepository.positionStream(),
              _audioRepository.durationStream(),
              _audioRepository.sequenceStateStream(),
              _audioRepository.buttonStateStream(),
              _audioRepository.shuffleModeStream(),
              _audioRepository.audioLoopStream(), (a, b, c, d, e, f, g) {
            return [a, b, c, d, e, f, g];
          });

          await emit.forEach(
            combinedStreams,
            onData: (data) {
              final Option<AudioDuration> buffer = optionOf(
                  (data[0] as Either<AudioFailure, AudioDuration>)
                      .fold((f) => null, (value) => value));
              final Option<AudioDuration> position = optionOf(
                  (data[1] as Either<AudioFailure, AudioDuration>)
                      .fold((f) => null, (value) => value));
              final Option<AudioDuration> duration = optionOf(
                  (data[2] as Either<AudioFailure, AudioDuration>)
                      .fold((f) => null, (value) => value));
              final Option<AudioPath> path = optionOf(
                  (data[3] as Either<AudioFailure, AudioPath>)
                      .fold((f) => null, (value) => value));

              final Option<ButtonState> buttonState = optionOf(
                  (data[4] as Either<AudioFailure, ButtonState>)
                      .fold((f) => null, (value) => value));

              final Option<bool> shuffleMode = optionOf(
                  (data[5] as Either<AudioFailure, bool>)
                      .fold((f) => null, (value) => value));
              final Option<AudioLoopMode> audioLoopMode = optionOf(
                  (data[6] as Either<AudioFailure, AudioLoopMode>)
                      .fold((f) => null, (value) => value));

              if (state.buffered != buffer) {
                return state.copyWith(buffered: buffer);
              }
              if (state.current != position) {
                return state.copyWith(current: position);
              }
              if (state.total != duration) {
                return state.copyWith(total: duration);
              }
              if (state.audioPath != path) {
                return state.copyWith(
                  audioPath: path,
                  miniPlayerVisibility: some(true),
                );
              }
              if (state.buttonState != buttonState) {
                return state.copyWith(buttonState: buttonState);
              }
              if (state.isShuffleMode != shuffleMode) {
                return state.copyWith(isShuffleMode: shuffleMode);
              }
              if (state.audioLoopMode != audioLoopMode) {
                return state.copyWith(audioLoopMode: audioLoopMode);
              }

              return state;
            },
          );
        },
        concatenatingAudios: (value) async {
          //each time list tile clicked need to update playlist
          //if it is same screen not need to update playlist
          //currentScreen used for this purpose
          if (state.currentScreen == value.currentScreen) {
            await _audioRepository.playAudio(index: value.index);
            add(const AudioControllerEvent.listenAllStreams());
          } else {
            emit(state.copyWith(loadingState: LoadingState.loading));
            final failureSuccess = await _audioRepository.concatenatingAudios(
                audioData: value.audios);

            await failureSuccess.fold(
                (failure) async =>
                    emit(state.copyWith(loadingState: LoadingState.failed)),
                (unit) async {
              final playFailureOrSucess =
                  await _audioRepository.playAudio(index: value.index);
              playFailureOrSucess.fold(
                  (l) =>
                      emit(state.copyWith(loadingState: LoadingState.failed)),
                  (r) {
                add(const AudioControllerEvent.listenAllStreams());
                emit(state.copyWith(
                    loadingState: LoadingState.loaded,
                    currentScreen: value.currentScreen));
              });
            });
          }
        },
      );
    }, transformer: restartable());
  }
  void onSeek(Duration duration) {
    _audioRepository.seekAudio(duration: duration);
  }

  void playOrPauseAudio() {
    _audioRepository.playOrPause();
  }

  void nextAudio() {
    _audioRepository.nextAudio();
  }

  void previousAudio() {
    _audioRepository.previousAudio();
  }

  void shuffleAudio() {
    _audioRepository.changeShuffleMode();
  }

  void setAudioLoopMode({required AudioLoopMode loopMode}) {
    _audioRepository.setAudioLoopMode(audioLoopMode: loopMode);
  }
}
