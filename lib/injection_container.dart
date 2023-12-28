import 'package:audioplayers/audioplayers.dart';
import 'package:get_it/get_it.dart';
import 'package:melody/application/home_bloc/home_bloc.dart';
import 'package:melody/domain/songs/i_audio_repository.dart';
import 'package:permission_handler/permission_handler.dart';

import 'application/permission_bloc/permission_handler_bloc.dart';
import 'domain/permission/i_permission_handler.dart';
import 'infrastructure/audio/audio_repository.dart';
import 'infrastructure/permission/permission_handler.dart';

final getIt = GetIt.instance;

void initGetIt() {
  //infrastructure
  getIt.registerLazySingleton<AudioRepository>(() => AudioRepository());
  getIt.registerLazySingleton<IPermissionHandler>(
      () => PermissionsHandler(permission: getIt()));

//domain
  getIt.registerLazySingleton<IAudioRepository>(() => getIt());
  //bloc
  getIt.registerFactory<HomeBloc>(() => HomeBloc(getIt()));
  getIt.registerFactory<PermissionHandlerBloc>(
      () => PermissionHandlerBloc(getIt()));

//package
  getIt.registerLazySingleton<AudioPlayer>(() => AudioPlayer());
  getIt.registerLazySingleton<Permission>(() => Permission.audio);
}
