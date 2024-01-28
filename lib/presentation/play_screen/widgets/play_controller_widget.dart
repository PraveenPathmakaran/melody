import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melody/application/audio_controller/audio_controller_bloc.dart';

import '../../widgets.dart';

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
              child: functionIcon(Icons.skip_previous, 55, Colors.white),
            ),
            BlocBuilder<AudioControllerBloc, AudioControllerState>(
              buildWhen: (p, c) => p.isPlaying != c.isPlaying,
              builder: (context, state) {
                return GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      context.read<AudioControllerBloc>().playOrPauseAudio();
                    },
                    child: state.isPlaying
                        ? functionIcon(Icons.pause_rounded, 55, Colors.white)
                        : functionIcon(
                            Icons.play_arrow_rounded, 55, Colors.white));
              },
            ),
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                context.read<AudioControllerBloc>().nextAudio();
              },
              child: functionIcon(Icons.skip_next, 55, Colors.white),
            ),
          ],
        );
      },
    );
  }
}
