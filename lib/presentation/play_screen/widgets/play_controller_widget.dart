import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melody/application/home_bloc/home_bloc.dart';

import '../../../application/audio/audio_bloc.dart';
import '../../../domain/songs/audio.dart';
import '../../widgets.dart';

class AudioControllerWidget extends StatelessWidget {
  const AudioControllerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AudioBloc, AudioState>(
      buildWhen: (previous, current) => previous.isPlaying != current.isPlaying,
      builder: (_, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                int currentIndex = context.read<AudioBloc>().state.index;
                int nextIndex = --currentIndex;

                //todo--manage if index is more than list length
                final Audio audio =
                    context.read<HomeBloc>().state.audios[nextIndex];
                context.read<AudioBloc>().add(AudioEvent.playStorageAudio(
                      audio: audio,
                      index: nextIndex,
                      isNavigationEnabled: true,
                    ));
              },
              child: functionIcon(Icons.skip_previous, 55, Colors.white),
            ),
            GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  if (state.isPlaying) {
                    context
                        .read<AudioBloc>()
                        .add(const AudioEvent.pauseAudio());
                  }
                  if (!state.isPlaying) {
                    context.read<AudioBloc>().add(const AudioEvent.playAudio());
                  }
                },
                child: state.isPlaying
                    ? functionIcon(Icons.pause_rounded, 55, Colors.white)
                    : functionIcon(Icons.play_arrow_rounded, 55, Colors.white)),
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                int currentIndex = context.read<AudioBloc>().state.index;
                int nextIndex = ++currentIndex;

                //todo--manage if index is more than list length
                final Audio audio =
                    context.read<HomeBloc>().state.audios[nextIndex];
                context.read<AudioBloc>().add(AudioEvent.playStorageAudio(
                      audio: audio,
                      index: nextIndex,
                      isNavigationEnabled: true,
                    ));
              },
              child: functionIcon(Icons.skip_next, 55, Colors.white),
            ),
          ],
        );
      },
    );
  }
}
