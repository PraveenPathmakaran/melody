import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:melody/domain/audio/i_audio_repository.dart';
import 'package:melody/domain/database/database_failures.dart';
import 'package:melody/domain/database/i_data_base_repository.dart';
import 'package:melody/presentation/core/resourse_manager/string_manage.dart';

import '../../domain/audio/audio.dart';
import '../../domain/audio/audio_value_objects.dart';

part 'favourite_bloc.freezed.dart';
part 'favourite_event.dart';
part 'favourite_state.dart';

//[FavouriteBloc],[loadAudio] event load all audios it get from
//splash bloc state there is 2 list all audios and favourites list
class FavouriteBloc extends Bloc<FavouriteEvent, FavouriteState> {
  final IDataBaseRepository _dataBaseRepository;
  final IAudioRepository _audioRepository;
  FavouriteBloc(this._dataBaseRepository, this._audioRepository)
      : super(const FavouriteState.loading()) {
    on<FavouriteEvent>((event, emit) async {
      await event.map(
        loadAudio: (value) async {
          emit(const FavouriteState.loading());
          final failureOrSuceesSongs = await _dataBaseRepository.getPlayList(
            playListName: value.playListName,
          );
          await failureOrSuceesSongs
              .fold((failure) async => emit(const FavouriteState.error()),
                  (audioPath) async {
            List<Audio> favouriteAudios = value.audios
                .where((element) => audioPath.contains(element.audioPath))
                .toList();
            emit(FavouriteState.loaded(
              audioList: value.audios,
              favouriteAudios: favouriteAudios,
            ));
          });
        },
        favouriteButtonClicked: (event) async {
          final index = state.maybeMap(
            orElse: () => -1,
            loaded: (value) => value.favouriteAudios.indexOf(event.audio),
          );
          Either<DataBaseFailure, Unit> failureOrSucess;
          if (index != -1) {
            failureOrSucess = await _dataBaseRepository.removeAudioFromPlayList(
              playListName: event.playListName,
              audioPath: event.audio.audioPath,
            );
            await _audioRepository.removeFromPlayList(index: index);
          } else {
            failureOrSucess = await _dataBaseRepository.addAudioToPlayList(
              playListName: event.playListName,
              audioPath: event.audio.audioPath,
            );
          }

          failureOrSucess.fold(
              (l) => emit(const FavouriteState.error()),
              (r) => add(FavouriteEvent.loadAudio(
                    audios: state.maybeMap(
                      orElse: () => [],
                      loaded: (value) => value.audioList,
                    ),
                    playListName: PlayListName(StringManger.favourites),
                  )));
        },
      );
    });
  }
}
