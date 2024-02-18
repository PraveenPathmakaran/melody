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
import 'package:melody/domain/audio/i_audio_repository.dart';
import 'package:melody/domain/database/i_data_base_repository.dart';
import 'package:melody/domain/device_info/i_device_info.dart';
import 'package:melody/domain/plat_form/i_platform_repository.dart';
import 'package:melody/infrastructure/audio_player_repository/audio_player_repository.dart';
import 'package:melody/infrastructure/audio_player_repository/i_audio_player_repository.dart';
import 'package:melody/infrastructure/core/device_info/device_info.dart';
import 'package:melody/infrastructure/database_repository/database_repository.dart';
import 'package:melody/infrastructure/database_repository/database_repository_impl.dart';
import 'package:melody/infrastructure/database_repository/i_database_repo_impl.dart';
import 'package:melody/infrastructure/platform_repository/i_platform_repo_impl.dart';
import 'package:melody/infrastructure/platform_repository/platform_repository_impl.dart';
import 'package:permission_handler/permission_handler.dart';

import 'application/permission_bloc/permission_handler_bloc.dart';
import 'domain/permission/i_permission_handler.dart';
import 'infrastructure/audio_player_repository/i_audio_repository_impl.dart';
import 'infrastructure/core/permission/permission_handler.dart';
import 'infrastructure/platform_repository/platform_repository.dart';

final getIt = GetIt.instance;

Future<void> initGetIt() async {
  registerDomain();
  registerBloc();
  registerRepository();
  await registerPackage();
}

//domain
void registerDomain() {
  getIt.registerLazySingleton<IPermissionHandler>(
      () => PermissionsHandler(permission: getIt()));
  getIt.registerLazySingleton<IAudioRepository>(
    () => IAudioRepositoryImpl(getIt()),
  );
  getIt.registerLazySingleton<IPlatformRepository>(
    () => IPlatformRepositoryImpl(getIt()),
  );
  getIt.registerLazySingleton<IDataBaseRepository>(
    () => IDataBaseRepoImpl(getIt()),
  );
}

//bloc
void registerBloc() {
  getIt.registerFactory<PermissionHandlerBloc>(
      () => PermissionHandlerBloc(getIt()));
  getIt
      .registerFactory<AudioControllerBloc>(() => AudioControllerBloc(getIt()));
  getIt.registerFactory<SplashBloc>(() => SplashBloc(getIt()));
  getIt.registerFactory<HomeBloc>(() => HomeBloc());
  getIt.registerFactory<FavouriteBloc>(() => FavouriteBloc(getIt(), getIt()));
  getIt.registerFactory<PlayListHomeBloc>(() => PlayListHomeBloc(getIt()));
  getIt.registerFactory<PlayListHomeActionBloc>(
      () => PlayListHomeActionBloc(getIt(), getIt()));
  getIt.registerFactory<PlayListAudioBloc>(() => PlayListAudioBloc(getIt()));
}

//repository
void registerRepository() {
  getIt.registerLazySingleton<DataBaseRepository>(
      () => DataBaseRepositoryImpl());
  getIt.registerLazySingleton<IDeviceInformation>(
      () => DeviceInformation(getIt()));
  getIt.registerLazySingleton<PlatformRepository>(
      () => PlatformRepositoryImpl());
  getIt.registerLazySingleton<AudioPlayerRepository>(
      () => AudioPlayerRepositoryImpl(getIt()));
}

//package
Future<void> registerPackage() async {
  getIt.registerLazySingleton<AudioPlayer>(() => AudioPlayer());
  getIt.registerLazySingleton<DeviceInfoPlugin>(() => DeviceInfoPlugin());
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
