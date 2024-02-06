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

  List<Audio> audiosList = [];
  Map<String, Audio> audioMap = {};
  Map<String, Audio> playlist = {};
  AudioBloc(this._audioRepository) : super(const AudioState.initial()) {
    on<AudioEvent>(
      (event, emit) async {
        await event.map(
          getAllAudiosFromDevice: (value) async {
            emit(const AudioState.loading());
            final failureOrSuccess =
                await _audioRepository.getAllAudioFromDevice();

            await failureOrSuccess.fold(
              (f) async => emit(const AudioState.error()),
              (audios) async {
                audiosList = audios;
                final failureSuccess = await _audioRepository
                    .concatenatingAudios(audioData: audiosList);
                for (var element in audiosList) {
                  audioMap[element.audioPath.getOrCrash()] = element;
                }
                failureSuccess.fold((failure) => emit(const AudioState.error()),
                    (unit) => emit(AudioState.loaded(audioList: audios)));
              },
            );
          },
          changePlayList: (value) {},
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

  void addRemoveToPlayList({required Audio audio}) {
    final key = audio.audioPath.getOrCrash();
    if (playlist.containsKey(key)) {
      playlist.remove(key);
    } else {
      playlist[key] = audio;
    }
  }

  Future<void> setPlayList({required PlayListName playListName}) async {
    final audioPath = playlist.keys.map((e) => AudioPath(e)).toList();
    final failureOrSucess = await _audioRepository.setPlayList(
        playListName: playListName, audioPath: audioPath);
    failureOrSucess.fold((l) => null, (r) => null);
  }

  Future<void> getPlayList({required PlayListName playListName}) async {
    final failureOrSucess =
        await _audioRepository.getPlayList(playListName: playListName);

    failureOrSucess.fold((l) => null, (audioPath) async {
      playlist.clear();
      for (var element in audioPath) {
        if (audioMap[element.getOrCrash()] == null) {
          await _audioRepository.deletePlayList(playListName: playListName);
        } else {
          playlist[element.getOrCrash()] = audioMap[element.getOrCrash()]!;
        }
      }
    });
  }

  Future<bool> isContainAudio(
      {required PlayListName playListName,
      required AudioPath audioPath}) async {
    final isContain = await _audioRepository.iscontainAudio(
        playListName: playListName, audioPath: audioPath);
    return isContain;
  }
}
