import 'dart:typed_data';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:melody/domain/songs/i_audio_repository.dart';

import '../../domain/songs/audio.dart';
import '../../domain/songs/audio_value_objects.dart';

part 'audio_bloc.freezed.dart';
part 'audio_event.dart';
part 'audio_state.dart';

class AudioBloc extends Bloc<AudioEvent, AudioState> {
  final IAudioRepository _audioRepository;

  AudioBloc(this._audioRepository) : super(const AudioState.initial()) {
    on<AudioEvent>(
      (event, emit) async {
        await event.map(
          getAllAudiosFromDevice: (value) async {
            emit(const AudioState.loading());
            final failureOrSuccess =
                await _audioRepository.getAllAudioFromDevice();

            failureOrSuccess.fold(
              (f) => emit(const AudioState.error()),
              (path) => emit(AudioState.loaded(audioList: path)),
            );
          },
        );
      },
    );
  }
  Future<Uint8List?> fetchAudioData({required AudioPath audioPath}) async {
    final imageByte =
        await _audioRepository.getAudioImageMetadata(audioPath: audioPath);

    return imageByte.fold(
      (l) => null,
      (imageByte) => imageByte.byteImage.getOrCrash(),
    );
  }
}
