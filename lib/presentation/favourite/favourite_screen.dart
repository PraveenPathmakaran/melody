import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melody/application/favourite/favourite_bloc.dart';
import 'package:melody/domain/songs/audio_value_objects.dart';
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
    context.read<AudioBloc>().add(AudioEvent.changePlayList(
        playListName: PlayListName(StringManger.favourites)));
    return BlocListener<AudioBloc, AudioState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          loaded: (value) {},
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
        child: BlocBuilder<FavouriteBloc, FavouriteState>(
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
                                          audioPath: audio.audioPath),
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
                        ),
                        subtitle: Text(
                          audio.artist.getOrCrash(),
                          maxLines: ConstantValues.one,
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.more_vert),
                          onPressed: () {},
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
    );
  }
}
