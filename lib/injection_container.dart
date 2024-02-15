import 'package:device_info_plus/device_info_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:just_audio/just_audio.dart';
import 'package:melody/application/audio_controller/audio_controller_bloc.dart';
import 'package:melody/application/favourite/favourite_bloc.dart';
import 'package:melody/application/home/home_bloc.dart';
import 'package:melody/application/playlist/play_list_audio/play_list_audio_bloc.dart';
import 'package:melody/application/playlist/play_list_home/play_list_home_bloc.dart';
import 'package:melody/application/playlist/play_list_home_action/play_list_home_action_bloc.dart';
import 'package:melody/application/splash/splash_bloc.dart';
import 'package:melody/domain/device_info/i_device_info.dart';
import 'package:melody/domain/songs/i_audio_repository.dart';
import 'package:melody/infrastructure/audio/audio_player_repository/audio_player_repository.dart';
import 'package:melody/infrastructure/audio/audio_player_repository/i_audio_player_repository.dart';
import 'package:melody/infrastructure/audio/database_repository/database_repository.dart';
import 'package:melody/infrastructure/audio/database_repository/i_database_repository.dart';
import 'package:melody/infrastructure/audio/platform_repository/i_platform_repository.dart';
import 'package:melody/infrastructure/audio/platform_repository/platform_repository.dart';
import 'package:melody/infrastructure/device_info/device_info.dart';
import 'package:permission_handler/permission_handler.dart';

import 'application/permission_bloc/permission_handler_bloc.dart';
import 'domain/permission/i_permission_handler.dart';
import 'infrastructure/audio/audio_repository.dart';
import 'infrastructure/splash/permission_handler.dart';

final getIt = GetIt.instance;

Future<void> initGetIt() async {
  //assigning byte image
  //await AppUtils.loadImage();
  //infrastructure

//domain
  getIt.registerLazySingleton<IPermissionHandler>(
      () => PermissionsHandler(permission: getIt()));
  getIt.registerLazySingleton<IAudioRepository>(
      () => AudioRepository(getIt(), getIt(), getIt()));
  getIt.registerLazySingleton<IPlatformRepository>(() => PlatformRepository());
  getIt.registerLazySingleton<IAudioPlayerRepository>(
      () => AudioPlayerRepository(getIt()));
  getIt.registerLazySingleton<IDataBaseRepository>(() => DataBaseRepository());
  getIt.registerLazySingleton<IDeviceInformation>(
      () => DeviceInformation(getIt()));
  //bloc
  getIt.registerFactory<PermissionHandlerBloc>(
      () => PermissionHandlerBloc(getIt()));
  getIt
      .registerFactory<AudioControllerBloc>(() => AudioControllerBloc(getIt()));
  getIt.registerFactory<SplashBloc>(() => SplashBloc(getIt()));
  getIt.registerFactory<HomeBloc>(() => HomeBloc());
  getIt.registerFactory<FavouriteBloc>(() => FavouriteBloc(getIt()));
  getIt.registerFactory<PlayListHomeBloc>(() => PlayListHomeBloc(getIt()));
  getIt.registerFactory<PlayListHomeActionBloc>(
      () => PlayListHomeActionBloc(getIt()));
  getIt.registerFactory<PlayListAudioBloc>(() => PlayListAudioBloc(getIt()));

//package
  getIt.registerLazySingleton<AudioPlayer>(() => AudioPlayer());
  getIt.registerLazySingleton<DeviceInfoPlugin>(() => DeviceInfoPlugin());
  await registerStorage(getIt);
}

Future<void> registerStorage(GetIt getIt) async {
  await getIt<IDeviceInformation>().getAndroidVersion().then((value) {
    value.fold(
        (l) =>
            getIt.registerLazySingleton<Permission>(() => Permission.storage),
        (androidVersion) {
      if (androidVersion < 32) {
        getIt.registerLazySingleton<Permission>(() => Permission.storage);
      } else {
        getIt.registerLazySingleton<Permission>(() => Permission.audio);
      }
    });
  });
}
