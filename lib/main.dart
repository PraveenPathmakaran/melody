import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melody/application/home_bloc/home_bloc.dart';
import 'package:melody/infrastructure/audio_repository.dart';
import 'package:melody/injection_container.dart';

import 'presentation/home_screen/screen_home.dart';

void main() {
  initGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AudioRepository().getAllAudio();
    return MaterialApp(
      title: 'Flutter Demo',
      //theme: getApplicationTheme(),
      home: BlocProvider(
        create: (context) =>
            getIt<HomeBloc>()..add(const HomeEvent.fetchAllSongs()),
        child: const ScreenHomeMain(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
