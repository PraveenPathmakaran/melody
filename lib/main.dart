import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melody/application/listen_audio_bloc/listen_audio_bloc.dart';
import 'package:melody/application/permission_bloc/permission_handler_bloc.dart';
import 'package:melody/injection_container.dart';
import 'package:melody/presentation/splash_screen/screen_splash.dart';

import 'application/audio/audio_bloc.dart';
import 'application/home_bloc/home_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PermissionHandlerBloc>(
          create: (context) => getIt<PermissionHandlerBloc>()
            ..add(const PermissionHandlerEvent.checkPermission()),
        ),
        BlocProvider(
            create: (context) =>
                getIt<HomeBloc>()..add(const HomeEvent.fetchAllSongs())),
        BlocProvider<AudioBloc>(create: (context) => getIt<AudioBloc>()),
        BlocProvider<ListenAudioBloc>(create: (context) => getIt<ListenAudioBloc>()),
      ],
      child: const MaterialApp(
        title: 'Flutter Demo',
        //theme: getApplicationTheme(),
        home: ScreenSplash(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
