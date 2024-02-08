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
        // await event.map(
        //     concatenatingAudios: (value) async {},
        //     changePlayList: (value) async {
        //       emit(const AudioState.loading());
        //       if (value.playListName.getOrCrash() == StringManger.home) {
        //         // playlist.addAll(audioMap);
        //         add(const AudioEvent.concatenatingAudios());
        //         emit(const AudioState.loaded());
        //       } else {
        //         final failureOrSuccess = await _audioRepository.getPlayList(
        //             playListName: value.playListName);
        //         await failureOrSuccess
        //             .fold((l) async => emit(const AudioState.error()),
        //                 (audioPath) async {
        //           for (var element in audioPath) {
        //             // if (audioMap[element.getOrCrash()] == null) {
        //             // } else {
        //             //   playlist[element.getOrCrash()] =
        //             //       audioMap[element.getOrCrash()]!;
        //             // }
        //           }
        //           add(AudioEvent.concatenatingAudios(isNavigate: none()));
        //           emit(const AudioState.loaded());
        //         });
        //       }
        //     });
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

  Future<void> addRmoveFromDb({
    required PlayListName playListName,
    required Audio audio,
  }) async {
    final failureOrSucess = await _audioRepository.addAudioToPlayList(
      playListName: playListName,
      audioPath: audio.audioPath,
    );
    failureOrSucess.fold((l) => null, (r) => null);
  }

  Future<bool> isContainAudio({
    required PlayListName playListName,
    required AudioPath audioPath,
  }) async {
    final isContain = await _audioRepository.iscontainAudio(
        playListName: playListName, audioPath: audioPath);
    return isContain;
  }
}
