import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melody/application/audio_controller/audio_controller_bloc.dart';
import 'package:melody/presentation/core/resourse_manager/icon_manager.dart';

class AudioControllerWidget extends StatelessWidget {
  const AudioControllerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AudioControllerBloc, AudioControllerState>(
      builder: (_, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  context.read<AudioControllerBloc>().previousAudio();
                },
                child: const Icon(IconManager.skipPrevious)),
            BlocBuilder<AudioControllerBloc, AudioControllerState>(
              buildWhen: (p, c) => p.isPlaying != c.isPlaying,
              builder: (context, state) {
                return GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      context.read<AudioControllerBloc>().playOrPauseAudio();
                    },
                    child: state.isPlaying
                        ? const Icon(IconManager.pauseRounded)
                        : const Icon(IconManager.playArrowRounded));
              },
            ),
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                context.read<AudioControllerBloc>().nextAudio();
              },
              child: const Icon(IconManager.skipNext),
            ),
          ],
        );
      },
    );
  }
}
