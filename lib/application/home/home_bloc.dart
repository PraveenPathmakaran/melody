import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/songs/audio.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState.loading()) {
    on<HomeEvent>((event, emit) async {
      await event.map(
        loadAudios: (value) {
          emit(HomeState.loaded(audioList: value.audios));
        },
      );
    });
  }
}
