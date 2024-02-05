import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melody/application/audio_controller/audio_controller_bloc.dart';
import 'package:melody/presentation/core/resourse_manager/color_manager.dart';
import 'package:melody/presentation/core/resourse_manager/string_manage.dart';
import 'package:melody/presentation/core/resourse_manager/styles_manager.dart';
import 'package:melody/presentation/core/resourse_manager/value_manager.dart';

import 'widgets/play_container.dart';

class ScreenPlay extends StatelessWidget {
  const ScreenPlay({
    super.key,
    required this.index,
    required this.isNavigateFromHome,
  });

  final int index;
  final bool isNavigateFromHome;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      //open this page from mini player dont need to play new song
      if (isNavigateFromHome) {
        context.read<AudioControllerBloc>().addToPlay(index);
      }
      context
          .read<AudioControllerBloc>()
          .add(const AudioControllerEvent.listenAllStreams());
    });
    return PopScope(
      onPopInvoked: (didPop) => context
          .read<AudioControllerBloc>()
          .add(const AudioControllerEvent.closeStream()),
      child: Scaffold(
        appBar: AppBar(
          elevation: AppSize.s0,
          title: Text(
            StringManger.nowPlaying,
            style: getSemiBoldStyle(
              fontSize: AppSize.s18,
              color: ColorManager.white,
            ),
          ),
          centerTitle: true,
        ),
        body: const PlayContainer(),
      ),
    );
  }
}
