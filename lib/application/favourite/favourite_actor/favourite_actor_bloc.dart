import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:melody/domain/songs/audio_value_objects.dart';
import 'package:melody/domain/songs/i_audio_repository.dart';

import '../../../domain/songs/audio.dart';

part 'favourite_actor_bloc.freezed.dart';
part 'favourite_actor_event.dart';
part 'favourite_actor_state.dart';

class FavouriteActorBloc
    extends Bloc<FavouriteActorEvent, FavouriteActorState> {
  final IAudioRepository _audioRepository;
  FavouriteActorBloc(this._audioRepository)
      : super(const FavouriteActorState.initial()) {
    on<FavouriteActorEvent>((event, emit) async {
      await event.map(
        favouriteButtonClicked: (value) async {
          final failureOrSucess = await _audioRepository.addAudioToPlayList(
            playListName: value.playListName,
            audioPath: value.audio.audioPath,
          );

          failureOrSucess.fold((l) => emit(const FavouriteActorState.error()),
              (r) => emit(const FavouriteActorState.success()));
        },
      );
    });
  }
}
