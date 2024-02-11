import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melody/application/favourite/favourite_actor/favourite_actor_bloc.dart';
import 'package:melody/application/favourite/favourite_bloc.dart';
import 'package:melody/application/splash/splash_bloc.dart';
import 'package:melody/domain/songs/audio_value_objects.dart';
import 'package:melody/presentation/core/resourse_manager/string_manage.dart';

import '../../../application/audio_controller/audio_controller_bloc.dart';
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
          builder: (context, state) {
            final favouritesBloc = context.read<FavouriteBloc>();
            final audioBloc = context.read<AudioControllerBloc>();
            final splashBloc = context.read<SplashBloc>();
            final Audio? audio =
                audioBloc.state.audio.fold(() => null, (a) => a);

            final audioList = favouritesBloc.state.mapOrNull(
              loaded: (value) => value.audioList,
            );
            final audioListFromSplash = splashBloc.state.mapOrNull(
              loaded: (value) => value.audioList,
            );
            if (audio != null) {
              final isContain =
                  audioList?.any((element) => element == audio) ?? false;
              return IconButton(
                  onPressed: () async {
                    context.read<FavouriteActorBloc>().add(
                        FavouriteActorEvent.favouriteButtonClicked(
                            audio: audio,
                            playListName:
                                PlayListName(StringManger.favourites)));
                    context.read<FavouriteBloc>().add(
                        FavouriteEvent.concatenatingAudios(
                            audios: audioListFromSplash!));
                  },
                  icon: PlayIconWidget(
                    icon: IconManager.favourites,
                    color:
                        isContain ? ColorManager.secondary : ColorManager.white,
                  ));
            } else {
              return const SizedBox();
            }
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
