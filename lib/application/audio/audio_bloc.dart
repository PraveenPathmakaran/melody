import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:melody/domain/songs/audio_failure.dart';
import 'package:melody/domain/songs/audio_value_objects.dart';
import 'package:melody/domain/songs/i_audio_repository.dart';

import '../../domain/songs/audio.dart';

part 'audio_bloc.freezed.dart';
part 'audio_event.dart';
part 'audio_state.dart';

class AudioBloc extends Bloc<AudioEvent, AudioState> {
  final IAudioRepository _audioRepository;
  AudioBloc(this._audioRepository) : super(const AudioState.initial()) {
    on<AudioEvent>((event, emit) async {
      await event.map(
        concatenatingAudios: (value) async {
          final failureOrSuccess = await _audioRepository.getAllAudio();
          await failureOrSuccess
              .fold((failure) async => emit(AudioState.loadFailure(failure)),
                  (success) async {
            final failureOrSucess =
                await _audioRepository.concatenatingAudios();

            failureOrSucess.fold((f) => emit(AudioState.loadFailure(f)),
                (audios) => emit(AudioState.loadSuccess(audios)));
          });
        },
        fetchAudioData: (value) {
          final audio = _audioRepository.getAudioData(uid: value.uid);
        },
      );
    });
  }
}
