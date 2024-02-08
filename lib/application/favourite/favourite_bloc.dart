import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/songs/audio.dart';
import '../../domain/songs/i_audio_repository.dart';

part 'favourite_bloc.freezed.dart';
part 'favourite_event.dart';
part 'favourite_state.dart';

class FavouriteBloc extends Bloc<FavouriteEvent, FavouriteState> {
  final IAudioRepository _audioRepository;
  FavouriteBloc(this._audioRepository) : super(const FavouriteState.loading()) {
    on<FavouriteEvent>((event, emit) async {
      await event.map(
        concatenatingAudios: (value) async {
          emit(const FavouriteState.loading());
          final failureSuccess = await _audioRepository.concatenatingAudios(
              audioData: value.audios);
          failureSuccess.fold((failure) => emit(const FavouriteState.error()),
              (unit) => emit(FavouriteState.loaded(audioList: value.audios)));
        },
      );
    });
  }
}
