import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/audio/audio_bloc.dart';
import '../../../application/audio_controller/audio_controller_bloc.dart';
import '../../../domain/songs/audio.dart';
import '../../core/resourse_manager/value_manager.dart';
import '../../widgets.dart';
import 'play_controller_widget.dart';
import 'play_screen_image_widget.dart';
import 'play_screen_progress_slider_widget.dart';
import 'play_screen_text_widget.dart';
import 'play_screen_top_controller_widget.dart';

class PlayContainer extends StatelessWidget {
  const PlayContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return BlocBuilder<AudioControllerBloc, AudioControllerState>(
      buildWhen: (p, c) => p.audioIndex != c.audioIndex,
      builder: (context, state) {
        if (state.audioIndex.isSome()) {
          final audio = context.read<AudioBloc>().state.maybeMap(
                orElse: () => Audio.emptyAudio(),
                loaded: (value) =>
                    value.audioList[state.audioIndex.getOrElse(() => 0)],
              );

          if (audio.failureOption.isNone()) {
            return Container(
              height: size.height,
              width: size.width,
              padding: const EdgeInsets.all(AppPadding.p30),
              child: Column(
                children: <Widget>[
                  //image
                  PlayScreenImageWidget(audio: audio),
                  const SizedBox(
                    height: AppSize.s50,
                  ),
                  PlayScreenTextWidgets(audio: audio),
                  const SizedBox(
                    height: AppSize.s50,
                  ),
                  //controller and details
                  const SizedBox(
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          PlayTopControllerWidget(),
                          PlayProgressSlideWidget(),
                          AudioControllerWidget()
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return circularPindicator;
          }
        }
        return const SizedBox();
      },
    );
  }
}
