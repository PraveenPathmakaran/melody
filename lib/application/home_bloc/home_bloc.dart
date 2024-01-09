import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:melody/domain/songs/audio_failure.dart';

import '../../domain/songs/audio.dart';
import '../../infrastructure/audio/audio_repository.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final AudioRepository _audioRepository;
  HomeBloc(this._audioRepository) : super(const HomeState.initial()) {
    on<HomeEvent>((event, emit) async {
      await event.map(
        fetchAllSongs: (value) async {
          emit(const HomeState.loadInProgress());
          final Either<AudioFailure, List<Audio>> allSongs =
              await _audioRepository.getAllAudio();

          emit(allSongs.fold((f) => HomeState.loadFailure(f),
              (audios) => HomeState.loadSuccess(audios)));
        },
      );
    });
  }
}