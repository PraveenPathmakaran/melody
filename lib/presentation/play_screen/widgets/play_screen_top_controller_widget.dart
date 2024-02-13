import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melody/domain/songs/audio_value_objects.dart';
import 'package:melody/presentation/core/resourse_manager/string_manage.dart';

import '../../../application/audio_controller/audio_controller_bloc.dart';
import '../../../application/favourite/favourite_bloc.dart';
import '../../../domain/songs/audio.dart';
import '../../core/resourse_manager/color_manager.dart';
import '../../core/resourse_manager/icon_manager.dart';
import '../../play_list/widgets/play_list_bottom_sheet.dart';
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
          buildWhen: (c, p) => c.audio != p.audio,
          builder: (context, controllerState) {
            return BlocBuilder<FavouriteBloc, FavouriteState>(
              builder: (context, state) {
                final audio =
                    controllerState.audio.getOrElse(() => Audio.emptyAudio());
                final bool isContain = state.maybeMap(
                  orElse: () => false,
                  loaded: (value) => value.favouriteAudios.contains(audio),
                );
                return IconButton(
                    onPressed: () async {
                      context.read<FavouriteBloc>().add(
                          FavouriteEvent.favouriteButtonClicked(
                              audio: audio,
                              playListName:
                                  PlayListName(StringManger.favourites)));
                    },
                    icon: PlayIconWidget(
                      icon: IconManager.favourites,
                      color: isContain
                          ? ColorManager.secondary
                          : ColorManager.white,
                    ));
              },
            );
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
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return BottomSheet(
                  onClosing: () {},
                  builder: (context) {
                    return const PlayListBottomSheet();
                  },
                );
              },
            );
          },
          icon: const PlayIconWidget(icon: IconManager.playlist),
        ),
      ],
    );
  }
}
