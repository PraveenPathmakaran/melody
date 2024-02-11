import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:melody/application/audio_controller/audio_controller_bloc.dart';
import 'package:melody/application/favourite/favourite_actor/favourite_actor_bloc.dart';
import 'package:melody/application/favourite/favourite_bloc.dart';
import 'package:melody/application/home/home_bloc.dart';
import 'package:melody/application/permission_bloc/permission_handler_bloc.dart';
import 'package:melody/application/playlist/play_list_audio/play_list_audio_bloc.dart';
import 'package:melody/application/playlist/play_list_home/play_list_home_bloc.dart';
import 'package:melody/application/playlist/play_list_home_action/play_list_home_action_bloc.dart';
import 'package:melody/application/splash/splash_bloc.dart';
import 'package:melody/injection_container.dart';
import 'package:melody/presentation/splash_screen/screen_splash.dart';

import 'application/audio/audio_bloc.dart';
import 'application/core/bloc_observer.dart';
import 'presentation/core/resourse_manager/theme_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = const AppBlocObserver();
  await initGetIt();
  await Hive.initFlutter();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //DataBaseRepository().clearPlayList();
    return MultiBlocProvider(
      providers: [
        BlocProvider<PermissionHandlerBloc>(
          create: (_) => getIt<PermissionHandlerBloc>()
            ..add(const PermissionHandlerEvent.checkPermission()),
        ),
        BlocProvider<AudioBloc>(create: (_) => getIt<AudioBloc>()),
        BlocProvider<AudioControllerBloc>(
            create: (_) => getIt<AudioControllerBloc>()),
        BlocProvider<SplashBloc>(create: (_) => getIt<SplashBloc>()),
        BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
        BlocProvider<FavouriteBloc>(create: (_) => getIt<FavouriteBloc>()),
        BlocProvider<FavouriteActorBloc>(
            create: (_) => getIt<FavouriteActorBloc>()),
        BlocProvider<PlayListHomeBloc>(
            create: (_) => getIt<PlayListHomeBloc>()),
        BlocProvider<PlayListHomeActionBloc>(
            create: (_) => getIt<PlayListHomeActionBloc>()),
        BlocProvider<PlayListAudioBloc>(
            create: (_) => getIt<PlayListAudioBloc>()),
      ],
      child: MaterialApp(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        theme: getApplicationTheme(),
        home: const ScreenSplash(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
