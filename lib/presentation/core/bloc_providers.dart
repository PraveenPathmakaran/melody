import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melody/application/audio_controller/audio_controller_bloc.dart';
import 'package:melody/application/favourite/favourite_bloc.dart';
import 'package:melody/application/home/home_bloc.dart';
import 'package:melody/application/permission_bloc/permission_handler_bloc.dart';
import 'package:melody/application/playlist/play_list_audio/play_list_audio_bloc.dart';
import 'package:melody/application/playlist/play_list_home/play_list_home_bloc.dart';
import 'package:melody/application/playlist/play_list_home_action/play_list_home_action_bloc.dart';
import 'package:melody/application/splash/splash_bloc.dart';
import 'package:melody/injection_container.dart';

class BlocProviders {
  static final providers = [
    BlocProvider<PermissionHandlerBloc>(
      create: (_) => getIt<PermissionHandlerBloc>()
        ..add(const PermissionHandlerEvent.checkPermission()),
    ),
    BlocProvider<AudioControllerBloc>(
        create: (_) => getIt<AudioControllerBloc>()),
    BlocProvider<SplashBloc>(create: (_) => getIt<SplashBloc>()),
    BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
    BlocProvider<FavouriteBloc>(create: (_) => getIt<FavouriteBloc>()),
    BlocProvider<PlayListHomeBloc>(create: (_) => getIt<PlayListHomeBloc>()),
    BlocProvider<PlayListHomeActionBloc>(
        create: (_) => getIt<PlayListHomeActionBloc>()),
    BlocProvider<PlayListAudioBloc>(create: (_) => getIt<PlayListAudioBloc>()),
  ];
}
