import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:melody/domain/plat_form/i_platform_repository.dart';

import '../../domain/audio/audio.dart';
import '../../domain/audio/i_audio_repository.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IPlatformRepository _iPlatformRepository;
  final IAudioRepository _audioRepository;
  HomeBloc(this._iPlatformRepository, this._audioRepository)
      : super(const HomeState.loading()) {
    on<HomeEvent>((event, emit) async {
      await event.map(
        loadAudios: (value) {
          emit(HomeState.loaded(audioList: value.audios));
        },
        deleteButtonPressed: (value) async {
          emit(const HomeState.loading());

          for (var i = 0; i < value.audios.length; i++) {
            await _iPlatformRepository.deleteAudioFromDevice(
                audio: value.audios[i]);
          }
          final failureOrSuccess =
              await _iPlatformRepository.getAllAudioFromDevice();

          await failureOrSuccess.fold(
            (f) async => emit(const HomeState.error()),
            (audios) async {
              await _audioRepository.concatenatingAudios(audioData: audios);
              emit(HomeState.loaded(audioList: audios));
            },
          );
        },
      );
    });
  }
}
