import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:get_it/get_it.dart';
import 'package:melody/application/home_bloc/home_bloc.dart';
import 'package:melody/domain/songs/i_audio_repository.dart';
import 'package:melody/infrastructure/audio_repository.dart';

final getIt = GetIt.instance;

void initGetIt() {
  //infrastructure
  getIt.registerLazySingleton<AudioRepository>(() => AudioRepository());

//domain
  getIt.registerLazySingleton<IAudioRepository>(() => getIt());
  //bloc
  getIt.registerFactory<HomeBloc>(() => HomeBloc(getIt()));

//package
  getIt.registerLazySingleton<AssetsAudioPlayer>(() => AssetsAudioPlayer());
}
