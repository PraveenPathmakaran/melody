import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/audio/audio_bloc.dart';
import '../../../application/audio_controller/audio_controller_bloc.dart';
import '../../core/resourse_manager/color_manager.dart';
import '../../core/resourse_manager/value_manager.dart';
import '../../core/widgets.dart';
import '../../play_screen/screen_play.dart';
import '../../play_screen/widgets/play_controller_widget.dart';

class MiniPlayer extends StatelessWidget {
  const MiniPlayer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AudioControllerBloc, AudioControllerState>(
      buildWhen: (p, c) => p.audioIndex != c.audioIndex,
      builder: (context, state) {
        if (state.audioIndex.isSome()) {
          final audio = context
              .read<AudioBloc>()
              .audiosList[state.audioIndex.getOrElse(() => 0)];
          return Visibility(
            visible: state.miniPlayerVisibility.getOrElse(() => false),
            child: Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.s15),
              ),
              margin: const EdgeInsets.all(AppMargin.m3),
              child: ListTile(
                  tileColor: ColorManager.grey,
                  onTap: () async {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          const ScreenPlay(isNavigateFromHome: false),
                    ));
                  },
                  leading: CircleAvatar(
                    backgroundColor: ColorManager.primary,
                    radius: AppSize.s25,
                    child: ClipOval(
                        child: FutureBuilder<Uint8List?>(
                            future: context
                                .read<AudioBloc>()
                                .fetchAudioData(audioPath: audio.audioPath),
                            builder: (context, snapshot) {
                              return CustomImageWidget(
                                image: snapshot.data,
                                height: AppSize.s50,
                                width: AppSize.s50,
                              );
                            })),
                  ),
                  title: Text(
                    audio.title.getOrCrash(),
                    maxLines: ConstantValues.one,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(
                    audio.artist.getOrCrash(),
                    maxLines: ConstantValues.one,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: const SizedBox(
                      width: 200, child: AudioControllerWidget())),
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
