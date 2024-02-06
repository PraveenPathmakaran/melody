import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melody/application/audio_controller/audio_controller_bloc.dart';
import 'package:melody/presentation/core/resourse_manager/icon_manager.dart';
import 'package:melody/presentation/core/resourse_manager/value_manager.dart';

import 'button_state_widget.dart';
import 'icon_widgets.dart';

class AudioControllerWidget extends StatelessWidget {
  const AudioControllerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AudioControllerBloc, AudioControllerState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  context.read<AudioControllerBloc>().previousAudio();
                },
                child: const PlayIconWidget(
                  icon: IconManager.skipPrevious,
                  size: AppSize.s50,
                )),
            BlocBuilder<AudioControllerBloc, AudioControllerState>(
              buildWhen: (p, c) => p.buttonState != c.buttonState,
              builder: (context, state) {
                return GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      context.read<AudioControllerBloc>().playOrPauseAudio();
                    },
                    child: PlayButtonWidget(buttonState: state.buttonState));
              },
            ),
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                context.read<AudioControllerBloc>().nextAudio();
              },
              child: const PlayIconWidget(
                icon: IconManager.skipNext,
                size: AppSize.s50,
              ),
            ),
          ],
        );
      },
    );
  }
}
