import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:melody/domain/songs/audio.dart';
import 'package:melody/domain/songs/audio_failure.dart';
import 'package:melody/domain/songs/audio_value_objects.dart';
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
          final combinedStreams = Rx.combineLatest5(
              _audioRepository.bufferedPositionStream(),
              _audioRepository.positionStream(),
              _audioRepository.durationStream(),
              _audioRepository.sequenceStateStream(),
              _audioRepository.buttonStateStream(), (a, b, c, d, e) {
            return [a, b, c, d, e];
          });

          await emit.forEach(
            combinedStreams,
            onData: (data) {
              final AudioDuration buffer =
                  (data[0] as Either<AudioFailure, AudioDuration>)
                      .getOrElse(() => AudioDuration(0));
              final AudioDuration position =
                  (data[1] as Either<AudioFailure, AudioDuration>)
                      .getOrElse(() => AudioDuration(0));
              final AudioDuration duration =
                  (data[2] as Either<AudioFailure, AudioDuration>)
                      .getOrElse(() => AudioDuration(0));
              final Audio audio = (data[3] as Either<AudioFailure, Audio>)
                  .getOrElse(() => Audio.emptyAudio());
              final ButtonState buttonState =
                  (data[4] as Either<AudioFailure, ButtonState>)
                      .getOrElse(() => ButtonState.paused);

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
              if (state.buttonState != buttonState) {
                return state.copyWith(buttonState: buttonState);
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

  Audio fetchAudioData({required Id id}) {
    final audio = _audioRepository.getAudioData(uid: id);
    return audio.getOrElse(() => Audio.emptyAudio());
  }
}
