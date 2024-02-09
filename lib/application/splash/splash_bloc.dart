import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/songs/audio.dart';
import '../../../domain/songs/i_audio_repository.dart';

part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final IAudioRepository _audioRepository;
  SplashBloc(this._audioRepository) : super(const SplashState.loading()) {
    on<SplashEvent>((event, emit) async {
      await event.map(
        getAllAudiosFromDevice: (value) async {
          emit(const SplashState.loading());
          final failureOrSuccess =
              await _audioRepository.getAllAudioFromDevice();

          await failureOrSuccess.fold(
            (f) async => emit(const SplashState.error()),
            (audios) async {
              emit(SplashState.loaded(audioList: audios));
            },
          );
        },
      );
    });
  }
}
