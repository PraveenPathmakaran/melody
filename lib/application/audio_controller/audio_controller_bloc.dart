import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:melody/domain/songs/i_audio_repository.dart';
import 'package:melody/infrastructure/audio/audio_repository.dart';

part 'audio_controller_bloc.freezed.dart';
part 'audio_controller_event.dart';
part 'audio_controller_state.dart';

class AudioControllerBloc
    extends Bloc<AudioControllerEvent, AudioControllerState> {
  final IAudioRepository _audioRepository;
  AudioControllerBloc(this._audioRepository)
      : super(AudioControllerState.initial()) {
    on<AudioControllerEvent>((event, emit) async {
      await event.map(
        addToPlay: (value) async {
          _audioRepository.playAudio(index: value.index);
          emit(state.copyWith(isPlaying: true));
        },
        playOrPause: (value) async {
          _audioRepository.playOrPause();
          final isPlaying = !state.isPlaying;
          emit(state.copyWith(isPlaying: isPlaying));
        },
        nextAudio: (value) async {
          _audioRepository.nextAudio();
        },
        previuosAudio: (value) async {
          _audioRepository.previousAudio();
        },
      );
    });
  }
}
