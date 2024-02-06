import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melody/domain/songs/audio_value_objects.dart';

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
        if (state.current.isSome() &&
            state.buffered.isSome() &&
            state.total.isSome()) {
          return ProgressBar(
            progress:
                state.current.getOrElse(() => AudioDuration(0)).getOrCrash(),
            buffered:
                state.buffered.getOrElse(() => AudioDuration(0)).getOrCrash(),
            total: state.total.getOrElse(() => AudioDuration(0)).getOrCrash(),
            onSeek: context.read<AudioControllerBloc>().onSeek,
            thumbColor: ColorManager.secondary,
            progressBarColor: ColorManager.secondary,
            bufferedBarColor: ColorManager.lightGrey,
            baseBarColor: ColorManager.white,
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
