import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:melody/domain/songs/audio_value_objects.dart';

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
        loadAudio: (value) async {
          emit(const FavouriteState.loading());
          final failureOrSuceesSongs = await _audioRepository.getPlayList(
            playListName: value.playListName,
          );
          await failureOrSuceesSongs
              .fold((failure) async => emit(const FavouriteState.error()),
                  (audioPath) async {
            List<Audio> newList = value.audios
                .where((element) => audioPath.contains(element.audioPath))
                .toList();
            emit(FavouriteState.loaded(audioList: newList));
          });
        },
      );
    });
  }
}
