import 'package:get_it/get_it.dart';
import 'package:just_audio/just_audio.dart';
import 'package:melody/application/audio/audio_bloc.dart';
import 'package:melody/application/audio_controller/audio_controller_bloc.dart';
import 'package:melody/domain/songs/i_audio_repository.dart';
import 'package:melody/infrastructure/audio/audio_player_repository/audio_player_repository.dart';
import 'package:melody/infrastructure/audio/audio_player_repository/i_audio_player_repository.dart';
import 'package:melody/infrastructure/audio/platform_repository/i_platform_repository.dart';
import 'package:melody/infrastructure/audio/platform_repository/platform_repository.dart';
import 'package:permission_handler/permission_handler.dart';

import 'application/permission_bloc/permission_handler_bloc.dart';
import 'domain/permission/i_permission_handler.dart';
import 'infrastructure/audio/audio_repository.dart';
import 'infrastructure/permission/permission_handler.dart';

final getIt = GetIt.instance;

Future<void> initGetIt() async {
  //assigning byte image
  //await AppUtils.loadImage();
  //infrastructure

//domain
  getIt.registerLazySingleton<IPermissionHandler>(
      () => PermissionsHandler(permission: getIt()));
  getIt.registerLazySingleton<IAudioRepository>(
      () => AudioRepository(getIt(), getIt()));
  getIt.registerLazySingleton<IPlatformRepository>(() => PlatformRepository());
  getIt.registerLazySingleton<IAudioPlayerRepository>(
      () => AudioPlayerRepository(getIt()));
  //bloc
  getIt.registerFactory<PermissionHandlerBloc>(
      () => PermissionHandlerBloc(getIt()));
  getIt.registerFactory<AudioBloc>(() => AudioBloc(getIt()));
  getIt
      .registerFactory<AudioControllerBloc>(() => AudioControllerBloc(getIt()));

//package
  getIt.registerLazySingleton<AudioPlayer>(() => AudioPlayer());
  getIt.registerLazySingleton<Permission>(() => Permission.audio);
}
