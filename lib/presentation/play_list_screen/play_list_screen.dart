import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melody/domain/songs/audio.dart';
import 'package:melody/presentation/core/resourse_manager/string_manage.dart';
import 'package:melody/presentation/core/resourse_manager/value_manager.dart';

import '../../application/audio/audio_bloc.dart';
import '../core/error_widget.dart';
import '../core/resourse_manager/color_manager.dart';
import '../core/widgets.dart';
import '../play_screen/screen_play.dart';
import '../widgets.dart';

class ScreenPlayList extends StatelessWidget {
  const ScreenPlayList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AudioBloc, AudioState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          error: (value) => snackBar(
            context: context,
            content: StringManger.somethingWentWrong,
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(
          AppPadding.p10,
          AppPadding.p10,
          AppPadding.p10,
          0,
        ),
        child: BlocBuilder<AudioBloc, AudioState>(
          builder: (context, state) {
            return state.map(initial: (value) {
              return circularPindicator;
            }, loading: (value) {
              return circularPindicator;
            }, loaded: (state) {
              final audioListData = context.read<AudioBloc>().playlist;

              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  String key = audioListData.keys.elementAt(index);
                  Audio audioData = audioListData[key]!;
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSize.s15),
                    ),
                    margin: const EdgeInsets.all(AppMargin.m3),
                    child: ListTile(
                        onTap: () async {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ScreenPlay(
                                index: index, isNavigateFromHome: true),
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
                                          audioPath: audioData.audioPath),
                                  builder: (context, snapshot) {
                                    return CustomImageWidget(
                                      image: snapshot.data,
                                      height: AppSize.s50,
                                      width: AppSize.s50,
                                    );
                                  })),
                        ),
                        title: Text(
                          audioData.title.getOrCrash(),
                          maxLines: ConstantValues.one,
                        ),
                        subtitle: Text(
                          audioData.artist.getOrCrash(),
                          maxLines: ConstantValues.one,
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.more_vert),
                          onPressed: () {},
                        )),
                  );
                },
                itemCount: audioListData.length,
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
    );
  }
}
