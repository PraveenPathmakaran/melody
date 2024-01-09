import 'package:audioplayers/audioplayers.dart';
import 'package:get_it/get_it.dart';
import 'package:melody/application/audio/audio_bloc.dart';
import 'package:melody/application/home_bloc/home_bloc.dart';
import 'package:melody/application/listen_audio_bloc/listen_audio_bloc.dart';
import 'package:melody/domain/songs/i_audio_repository.dart';
import 'package:permission_handler/permission_handler.dart';

import 'application/permission_bloc/permission_handler_bloc.dart';
import 'domain/permission/i_permission_handler.dart';
import 'infrastructure/audio/audio_repository.dart';
import 'infrastructure/permission/permission_handler.dart';

final getIt = GetIt.instance;

void initGetIt() {
  //infrastructure
  getIt.registerLazySingleton<AudioRepository>(
      () => AudioRepository(audioPlayer: getIt()));
  getIt.registerLazySingleton<IPermissionHandler>(
      () => PermissionsHandler(permission: getIt()));

//domain
  getIt.registerLazySingleton<IAudioRepository>(() => getIt<AudioRepository>());
  //bloc
  getIt.registerFactory<HomeBloc>(() => HomeBloc(getIt()));
  getIt.registerFactory<PermissionHandlerBloc>(
      () => PermissionHandlerBloc(getIt()));
  getIt.registerLazySingleton<AudioBloc>(() => AudioBloc(getIt()));
  getIt.registerLazySingleton<ListenAudioBloc>(() => ListenAudioBloc(getIt()));

//package
  getIt.registerLazySingleton<AudioPlayer>(() => AudioPlayer(playerId: "1"));
  getIt.registerLazySingleton<Permission>(() => Permission.audio);
}
