import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:melody/domain/songs/audio.dart';
import 'package:melody/domain/songs/audio_failure.dart';
import 'package:melody/domain/songs/i_audio_repository.dart';
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
          final combinedStreams = Rx.combineLatest4(
              _audioRepository.bufferedPositionStream(),
              _audioRepository.positionStream(),
              _audioRepository.durationStream(),
              _audioRepository.sequenceStateStream(), (a, b, c, d) {
            return [a, b, c, d];
          });

          await emit.forEach(
            combinedStreams,
            onData: (data) {
              final Duration buffer =
                  (data[0] as Either<AudioFailure, Duration>)
                      .getOrElse(() => Duration.zero);
              final Duration position =
                  (data[1] as Either<AudioFailure, Duration>)
                      .getOrElse(() => Duration.zero);
              final Duration duration =
                  (data[2] as Either<AudioFailure, Duration>)
                      .getOrElse(() => Duration.zero);
              final Audio audio = (data[3] as Either<AudioFailure, Audio>)
                  .getOrElse(() => Audio.emptyAudio());

              if (state.buffered != buffer) {
                return state.copyWith(buffered: buffer);
              }
              if (state.current != position) {
                return state.copyWith(current: position);
              }
              if (state.total != duration) {
                return state.copyWith(total: duration);
              }
              if (state.audio != audio) {
                return state.copyWith(audio: audio);
              }

              return state;
            },
          );
        },
        closeStream: (value) {},
      );
    }, transformer: restartable());
  }
  void onSeek(Duration duration) {
    _audioRepository.seekAudio(duration: duration);
  }

  void addToPlay(int index) {
    _audioRepository.playAudio(index: index);
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
}
