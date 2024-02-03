import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melody/presentation/core/constant.dart';
import 'package:melody/presentation/widgets.dart';

import '../../application/audio/audio_bloc.dart';
import '../core/error_widget.dart';
import '../core/resourse_manager/color_manager.dart';
import '../core/widgets.dart';
import '../play_screen/screen_play.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: BlocBuilder<AudioBloc, AudioState>(
        buildWhen: (p, c) => p.loadingState != c.loadingState,
        builder: (context, state) {
          switch (state.loadingState) {
            case LoadingState.loaded:
              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  if (index < context.read<AudioBloc>().audios.length) {
                    return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      margin: const EdgeInsets.all(3),
                      child: ListTile(
                          onTap: () async {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ScreenPlay(
                                  index: index, isNavigateFromHome: true),
                            ));
                          },
                          leading: CircleAvatar(
                            backgroundColor: ColorManager.primary,
                            radius: 28,
                            child: ClipOval(
                                child: CustomImageWidget(
                              image: context
                                      .read<AudioBloc>()
                                      .audios[index]
                                      .image
                                      .value
                                      .isLeft()
                                  ? null
                                  : context
                                      .read<AudioBloc>()
                                      .audios[index]
                                      .image
                                      .getOrCrash(),
                              height: 52,
                              width: 52,
                            )),
                          ),
                          title: Text(
                            context
                                .read<AudioBloc>()
                                .audios[index]
                                .name
                                .getOrCrash(),
                            maxLines: 1,
                          ),
                          subtitle: Text(
                            context
                                .read<AudioBloc>()
                                .audios[index]
                                .artist
                                .getOrCrash(),
                            maxLines: 1,
                          ),
                          trailing: IconButton(
                            icon: const Icon(Icons.more_vert),
                            onPressed: () {},
                          )),
                    );
                  } else {
                    return circularPindicator;
                  }
                },
                itemCount: context.read<AudioBloc>().state.isAudioListEmpty
                    ? context.read<AudioBloc>().audios.length
                    : context.read<AudioBloc>().audios.length + 1,
                shrinkWrap: true,
              );
            case LoadingState.loading:
              return circularPindicator;
            case LoadingState.failed:
              return const AppErrorWidget(errorMessage: "Somethind went wrong");
            default:
              return circularPindicator;
          }
        },
      ),
    );
  }
}
