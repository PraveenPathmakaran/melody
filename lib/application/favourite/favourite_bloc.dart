import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:melody/domain/songs/audio_value_objects.dart';
import 'package:melody/presentation/core/resourse_manager/string_manage.dart';

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
          final failureOrSuceesSongs = await _audioRepository.getPlayList(
              playListName: PlayListName(StringManger.favourites));
          await failureOrSuceesSongs
              .fold((failure) async => emit(const FavouriteState.error()),
                  (audioPath) async {
            List<Audio> newList = value.audios
                .where((element) => audioPath.contains(element.audioPath))
                .toList();
            final failureSuccess =
                await _audioRepository.concatenatingAudios(audioData: newList);
            failureSuccess.fold((failure) => emit(const FavouriteState.error()),
                (unit) => emit(FavouriteState.loaded(audioList: newList)));
          });
        },
        favouriteButtonClicked: (audio) async {
          return await state.maybeMap(
            orElse: () async {},
            loaded: (value) async {
              emit(const FavouriteState.loading());
              final failureOrSucess = await _audioRepository.addAudioToPlayList(
                  playListName: PlayListName(StringManger.favourites),
                  audioPath: audio.audio.audioPath);
              failureOrSucess.fold((_) => emit(const FavouriteState.error()),
                  (_) {
                if (value.audioList.contains(audio.audio)) {
                  value.audioList.remove(audio.audio);
                } else {
                  value.audioList.add(audio.audio);
                }
                emit(FavouriteState.loaded(audioList: value.audioList));
              });
            },
          );
        },
      );
    });
  }
}
