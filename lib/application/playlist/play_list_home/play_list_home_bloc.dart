import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:melody/domain/songs/i_audio_repository.dart';
import 'package:melody/presentation/core/resourse_manager/string_manage.dart';

import '../../../domain/songs/audio_value_objects.dart';

part 'play_list_home_bloc.freezed.dart';
part 'play_list_home_event.dart';
part 'play_list_home_state.dart';

class PlayListHomeBloc extends Bloc<PlayListHomeEvent, PlayListHomeState> {
  final IAudioRepository _audioRepository;
  PlayListHomeBloc(this._audioRepository)
      : super(const PlayListHomeState.loading()) {
    on<PlayListHomeEvent>((event, emit) async {
      await event.map(
        loadPlayList: (value) async {
          emit(const PlayListHomeState.loading());
          final failureOrSucess = await _audioRepository.getAllPlaylist();

          failureOrSucess.fold((f) => emit(const PlayListHomeState.failure()),
              (playList) {
            playList.remove(PlayListName(StringManger.favourites));
            emit(PlayListHomeState.loaded(playListNames: playList));
          });
        },
      );
    });
  }
}
