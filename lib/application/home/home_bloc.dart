import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/songs/audio.dart';
import '../../../domain/songs/i_audio_repository.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IAudioRepository _audioRepository;
  HomeBloc(this._audioRepository) : super(const HomeState.loading()) {
    on<HomeEvent>((event, emit) async {
      await event.map(
        concatenatingAudios: (value) async {
          emit(const HomeState.loading());
          final failureSuccess = await _audioRepository.concatenatingAudios(
              audioData: value.audios);
          failureSuccess.fold((failure) => emit(const HomeState.error()),
              (unit) => emit(HomeState.loaded(audioList: value.audios)));
        },
      );
    });
  }
}
