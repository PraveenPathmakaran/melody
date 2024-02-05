import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/audio_controller/audio_controller_bloc.dart';
import '../../core/resourse_manager/color_manager.dart';

class PlayProgressSlideWidget extends StatelessWidget {
  const PlayProgressSlideWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AudioControllerBloc, AudioControllerState>(
      builder: (context, state) {
        return ProgressBar(
          progress: state.current.getOrCrash(),
          buffered: state.buffered.getOrCrash(),
          total: state.total.getOrCrash(),
          onSeek: context.read<AudioControllerBloc>().onSeek,
          thumbColor: ColorManager.secondary,
          progressBarColor: ColorManager.secondary,
          bufferedBarColor: ColorManager.lightGrey,
          baseBarColor: ColorManager.white,
        );
      },
    );
  }
}
