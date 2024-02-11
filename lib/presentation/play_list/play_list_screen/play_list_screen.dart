import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melody/application/playlist/play_list_audio/play_list_audio_bloc.dart';
import 'package:melody/application/playlist/play_list_home_action/play_list_home_action_bloc.dart';
import 'package:melody/application/splash/splash_bloc.dart';
import 'package:melody/domain/songs/audio_value_objects.dart';
import 'package:melody/presentation/core/resourse_manager/string_manage.dart';
import 'package:melody/presentation/core/resourse_manager/value_manager.dart';
import 'package:melody/presentation/core/widgets.dart';

import '../../../application/audio/audio_bloc.dart';
import '../../../application/audio_controller/audio_controller_bloc.dart';
import '../../../application/playlist/play_list_home/play_list_home_bloc.dart';
import '../../core/error_widget.dart';
import '../../core/resourse_manager/color_manager.dart';
import '../../play_screen/screen_play.dart';
import '../../widgets.dart';

class ScreenPlayList extends StatelessWidget {
  const ScreenPlayList({
    super.key,
    required this.playListName,
  });
  final PlayListName playListName;

  @override
  Widget build(BuildContext context) {
    context
        .read<PlayListAudioBloc>()
        .add(PlayListAudioEvent.concatenatingAudios(
          audios: context.read<SplashBloc>().state.mapOrNull(
                loaded: (value) => value.audioList,
              )!,
          playListName: playListName,
        ));
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
        child: BlocListener<PlayListAudioBloc, PlayListAudioState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              loaded: (value) {
                context
                    .read<PlayListHomeBloc>()
                    .add(const PlayListHomeEvent.loadPlayList());
              },
            );
          },
          child: BlocBuilder<PlayListAudioBloc, PlayListAudioState>(
            builder: (context, state) {
              return state.map(loading: (value) {
                return circularPindicator;
              }, loaded: (state) {
                return ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    final audio = state.audioList[index];
                    return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppSize.s15),
                      ),
                      margin: const EdgeInsets.all(AppMargin.m3),
                      child: ListTile(
                          onTap: () async {
                            context
                                .read<AudioControllerBloc>()
                                .add(AudioControllerEvent.concatenatingAudios(
                                  audios: state.audioList,
                                  index: index,
                                  currentScreen: playListName.getOrCrash(),
                                ));
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ScreenPlay(),
                            ));
                          },
                          leading: CircleAvatar(
                            backgroundColor: ColorManager.primary,
                            radius: AppSize.s25,
                            child: ClipOval(
                              child: FutureBuilder<Uint8List?>(
                                  future: context
                                      .read<AudioBloc>()
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
                                  PlayListHomeActionEvent.addToPlayList(
                                      playListName: playListName,
                                      audioPath: audio.audioPath));
                            },
                          )),
                    );
                  },
                  itemCount: state.audioList.length,
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
    );
  }
}
