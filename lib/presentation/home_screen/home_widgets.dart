import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melody/application/audio_controller/audio_controller_bloc.dart';
import 'package:melody/application/home/home_bloc.dart';
import 'package:melody/presentation/core/resourse_manager/string_manage.dart';
import 'package:melody/presentation/core/resourse_manager/value_manager.dart';

import '../../application/audio/audio_bloc.dart';
import '../core/error_widget.dart';
import '../core/resourse_manager/color_manager.dart';
import '../core/widgets.dart';
import '../play_screen/screen_play.dart';
import '../widgets.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(
        AppPadding.p10,
        AppPadding.p10,
        AppPadding.p10,
        0,
      ),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return state.map(loading: (value) {
            return circularPindicator;
          }, loaded: (state) {
            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
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
                            currentScreen: StringManger.home,
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
                              future: context.read<AudioBloc>().fetchAudioData(
                                  audioPath: state.audioList[index].audioPath),
                              builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.waiting) {
                                  return circularPindicator;
                                }
                                return CustomImageWidget(
                                  image: snapshot.data,
                                  height: AppSize.s50,
                                  width: AppSize.s50,
                                );
                              })),
                    ),
                    title: Text(
                      state.audioList[index].title.getOrCrash(),
                      maxLines: ConstantValues.one,
                    ),
                    subtitle: Text(
                      state.audioList[index].artist.getOrCrash(),
                      maxLines: ConstantValues.one,
                    ),
                    // trailing: IconButton(
                    //   icon: const Icon(Icons.more_vert),
                    //   onPressed: () {},
                    // ),
                  ),
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
    );
  }
}
