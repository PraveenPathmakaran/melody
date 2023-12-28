import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melody/application/permission_bloc/permission_handler_bloc.dart';
import 'package:melody/injection_container.dart';
import 'package:melody/presentation/splash_screen/screen_splash.dart';

void main() {
  initGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //theme: getApplicationTheme(),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<PermissionHandlerBloc>()
              ..add(const PermissionHandlerEvent.checkPermission()),
          ),
        ],
        child: const ScreenSplash(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
