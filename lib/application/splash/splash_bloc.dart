import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:melody/domain/plat_form/i_platform_repository.dart';

import '../../domain/audio/audio.dart';
import '../../domain/audio/audio_value_objects.dart';

part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final IPlatformRepository _platformRepository;
  SplashBloc(this._platformRepository) : super(const SplashState.loading()) {
    on<SplashEvent>((event, emit) async {
      await event.map(
        getAllAudiosFromDevice: (value) async {
          emit(const SplashState.loading());
          final failureOrSuccess =
              await _platformRepository.getAllAudioFromDevice();

          await failureOrSuccess.fold(
            (f) async => emit(const SplashState.error()),
            (audios) async {
              emit(SplashState.loaded(audioList: audios));
            },
          );
        },
      );
    });
  }

  Future<Uint8List?> fetchAudioData({required AudioPath audioPath}) async {
    final imageByte =
        await _platformRepository.getAudioImageMetadata(audioPath: audioPath);

    return imageByte.fold(
      (l) => null,
      (imageByte) => imageByte.byteImage.getOrCrash(),
    );
  }
}
