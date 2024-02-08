import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/audio_controller/audio_controller_bloc.dart';
import '../../../domain/songs/audio.dart';
import '../../core/resourse_manager/color_manager.dart';
import '../../core/resourse_manager/icon_manager.dart';
import 'icon_widgets.dart';
import 'play_screen_loop_widget.dart';

class PlayTopControllerWidget extends StatelessWidget {
  const PlayTopControllerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        BlocBuilder<AudioControllerBloc, AudioControllerState>(
          builder: (context, state) {
            return IconButton(
                onPressed: () async {
                  // await audioBloc.addRmoveFromDb(
                  //   playListName: PlayListName(StringManger.favourites),
                  //   audio: audio,
                  // );
                  // await audioBloc.isContainAudio(
                  //   playListName: PlayListName(StringManger.favourites),
                  //   audioPath: audio.audioPath,
                  // );
                },
                icon: PlayIconWidget(
                  icon: IconManager.favourites,
                  color:
                      //  snapshot.data ?? false
                      //     ? ColorManager.secondary
                      //     :
                      ColorManager.white,
                ));
          },
        ),
        BlocBuilder<AudioControllerBloc, AudioControllerState>(
          buildWhen: (p, c) => p.audioLoopMode != c.audioLoopMode,
          builder: (context, state) {
            if (state.audioLoopMode.isSome()) {
              return IconButton(
                onPressed: () {
                  final index = (AudioLoopMode.values.indexOf(state
                              .audioLoopMode
                              .getOrElse(() => AudioLoopMode.off)) +
                          1) %
                      3;
                  context
                      .read<AudioControllerBloc>()
                      .setAudioLoopMode(loopMode: AudioLoopMode.values[index]);
                },
                icon: LoopModeWidget(
                    audioLoopMode:
                        state.audioLoopMode.getOrElse(() => AudioLoopMode.off)),
              );
            } else {
              return const SizedBox();
            }
          },
        ),
        BlocBuilder<AudioControllerBloc, AudioControllerState>(
          buildWhen: (p, c) => p.isShuffleMode != c.isShuffleMode,
          builder: (context, state) {
            if (state.isShuffleMode.isSome()) {
              return IconButton(
                onPressed: () {
                  context.read<AudioControllerBloc>().shuffleAudio();
                },
                icon: state.isShuffleMode.getOrElse(() => false)
                    ? PlayIconWidget(
                        icon: IconManager.shuffle,
                        color: ColorManager.secondary,
                      )
                    : const PlayIconWidget(
                        icon: IconManager.shuffle,
                      ),
              );
            } else {
              return const SizedBox();
            }
          },
        ),
        IconButton(
          onPressed: () {},
          icon: const PlayIconWidget(icon: IconManager.playlist),
        ),
      ],
    );
  }
}
