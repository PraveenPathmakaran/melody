import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melody/presentation/core/bloc_providers.dart';

import 'package:melody/presentation/splash_screen/screen_splash.dart';

import 'resourse_manager/theme_manager.dart';

class MyApp extends StatelessWidget {
 const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //DataBaseRepository().clearPlayList();
    return MultiBlocProvider(
      providers: BlocProviders.providers,
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
