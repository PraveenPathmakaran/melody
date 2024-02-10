import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melody/presentation/core/constant.dart';
import 'package:melody/presentation/widgets.dart';

import '../../../application/audio_controller/audio_controller_bloc.dart';
import '../../core/resourse_manager/value_manager.dart';
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
      buildWhen: (p, c) =>
          (p.audio != c.audio) || (p.currentScreen != c.currentScreen),
      builder: (context, state) {
        if (state.loadingState == LoadingState.loaded) {
          final audio = state.audio.fold(() => null, (a) => a);

          if (audio != null) {
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
          }
          return circularPindicator;
        } else {
          return circularPindicator;
        }
      },
    );
  }
}
