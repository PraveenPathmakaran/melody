import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melody/application/playlist/play_list_audio/play_list_audio_bloc.dart';
import 'package:melody/application/playlist/play_list_home_action/play_list_home_action_bloc.dart';
import 'package:melody/application/splash/splash_bloc.dart';
import 'package:melody/domain/songs/audio_value_objects.dart';
import 'package:melody/presentation/core/empty_data_widget.dart';
import 'package:melody/presentation/core/resourse_manager/string_manage.dart';
import 'package:melody/presentation/core/resourse_manager/value_manager.dart';
import 'package:melody/presentation/core/widgets.dart';

import '../../../application/audio_controller/audio_controller_bloc.dart';
import '../../core/error_widget.dart';
import '../../core/resourse_manager/color_manager.dart';
import '../../core/utils.dart';
import '../../home_screen/widgets/miniplayer.dart';
import '../../play_screen/screen_play.dart';

class ScreenPlayList extends StatelessWidget {
  const ScreenPlayList({
    super.key,
    required this.playListName,
  });
  final PlayListName playListName;

  @override
  Widget build(BuildContext context) {
    context.read<PlayListAudioBloc>().state.maybeMap(
        orElse: () => [],
        loaded: (value) => context.read<PlayListAudioBloc>().add(
            PlayListAudioEvent.loadAudio(
                audios: value.audioList, playListName: playListName)));

    return Scaffold(
      appBar: AppBar(
        title: Text(playListName.getOrCrash()),
        backgroundColor: ColorManager.primary,
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(
          AppPadding.p10,
          AppPadding.p10,
          AppPadding.p10,
          0,
        ),
        child: BlocListener<PlayListHomeActionBloc, PlayListHomeActionState>(
          listener: (context, state) {
            //this listener work audio delete from playlist
            state.failureOrSuccessOption.fold(
                () => null,
                (either) => either.fold(
                    (l) => null,
                    (r) => context.read<PlayListAudioBloc>().state.maybeMap(
                        orElse: () => [],
                        loaded: (value) => context
                            .read<PlayListAudioBloc>()
                            .add(PlayListAudioEvent.loadAudio(
                              audios: value.audioList,
                              playListName: playListName,
                            )))));
          },
          child: BlocBuilder<PlayListAudioBloc, PlayListAudioState>(
            builder: (context, state) {
              return state.map(loading: (value) {
                return circularPindicator;
              }, loaded: (state) {
                if (state.playList.isEmpty) {
                  return const EmptyDataWidget();
                }
                return ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    final audio = state.playList[index];
                    return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppSize.s15),
                      ),
                      margin: const EdgeInsets.all(AppMargin.m3),
                      child: ListTile(
                          onTap: () async {
                            if (playListName.isValid()) {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  context.read<AudioControllerBloc>().add(
                                          AudioControllerEvent
                                              .concatenatingAudios(
                                        audios: state.playList,
                                        index: index,
                                        currentScreen:
                                            playListName.getOrCrash(),
                                      ));
                                  return const ScreenPlay();
                                },
                              ));
                            }
                          },
                          leading: CircleAvatar(
                            backgroundColor: ColorManager.primary,
                            radius: AppSize.s25,
                            child: ClipOval(
                              child: FutureBuilder<Uint8List?>(
                                  future: context
                                      .read<SplashBloc>()
                                      .fetchAudioData(
                                          audioPath: audio.audioPath),
                                  builder: (context, snapshot) {
                                    return CustomImageWidget(
                                      image: snapshot.data,
                                      height: AppSize.s50,
                                      width: AppSize.s50,
                                    );
                                  }),
                            ),
                          ),
                          title: Text(
                            audio.title.getOrCrash(),
                            maxLines: ConstantValues.one,
                          ),
                          subtitle: Text(
                            audio.artist.getOrCrash(),
                            maxLines: ConstantValues.one,
                          ),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {
                              context.read<PlayListHomeActionBloc>().add(
                                      PlayListHomeActionEvent
                                          .removeAudioFromPlayList(
                                    playListName: playListName,
                                    audioPath: audio.audioPath,
                                    index: index,
                                  ));
                            },
                          )),
                    );
                  },
                  itemCount: state.playList.length,
                  shrinkWrap: true,
                );
              }, error: (value) {
                return const AppErrorWidget(
                  errorMessage: StringManger.somethingWentWrong,
                );
              });
            },
          ),
        ),
      ),
      bottomNavigationBar: const MiniPlayer(),
    );
  }
}
