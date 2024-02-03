import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melody/application/audio_controller/audio_controller_bloc.dart';
import 'package:melody/application/permission_bloc/permission_handler_bloc.dart';
import 'package:melody/injection_container.dart';
import 'package:melody/presentation/splash_screen/screen_splash.dart';

import 'application/audio/audio_bloc.dart';
import 'presentation/core/resourse_manager/theme_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //Bloc.observer = const AppBlocObserver();

  
  await initGetIt();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PermissionHandlerBloc>(
          create: (_) => getIt<PermissionHandlerBloc>()
            ..add(const PermissionHandlerEvent.checkPermission()),
        ),
        BlocProvider<AudioBloc>(create: (_) => getIt<AudioBloc>()),
        BlocProvider<AudioControllerBloc>(
            create: (_) => getIt<AudioControllerBloc>()),
      ],
      child: MaterialApp(
        theme: getApplicationTheme(),
        home: const ScreenSplash(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
