import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:melody/domain/songs/audio_value_objects.dart';
import 'package:melody/domain/songs/i_audio_repository.dart';

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
            // emit(state.copyWith(
            //   isTileLoading: true,
            // ));

            // final failureOrSuccess =
            //     await _audioRepository.getAllAudioFromDevice();
            // failureOrSuccess.fold(
            //   (f) => emit(
            //     state.copyWith(
            //       loadingState: LoadingState.failed,
            //       isTileLoading: false,
            //     ),
            //   ),
            //   (newAudios) {
            //     // If audios is empty, set isAudioListEmpty to true
            //     if (newAudios.isEmpty) {
            //       emit(
            //         state.copyWith(
            //           isAudioListEmpty: true,
            //           isTileLoading: false,
            //           loadingState: LoadingState.loaded,
            //         ),
            //       );
            //     } else {
            //       emit(
            //         state.copyWith(
            //           isTileLoading: false,
            //           loadingState: LoadingState.loaded,
            //         ),
            //       );
            //     }
            //   },
            // );
          },
        );
      },
    );
  }
}
