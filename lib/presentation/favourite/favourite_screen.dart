import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melody/application/favourite/favourite_bloc.dart';
import 'package:melody/presentation/core/empty_data_widget.dart';
import 'package:melody/presentation/core/resourse_manager/string_manage.dart';
import 'package:melody/presentation/core/resourse_manager/value_manager.dart';
import 'package:melody/presentation/core/widgets.dart';

import '../../application/audio_controller/audio_controller_bloc.dart';
import '../../application/splash/splash_bloc.dart';
import '../core/error_widget.dart';
import '../core/resourse_manager/color_manager.dart';
import '../core/utils.dart';
import '../play_screen/screen_play.dart';

class ScreenFavourites extends StatelessWidget {
  const ScreenFavourites({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            if (state.favouriteAudios.isEmpty) {
              return const EmptyDataWidget();
            }
            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                final audio = state.favouriteAudios[index];
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
                            audios: state.favouriteAudios,
                            index: index,
                            currentScreen: StringManger.favourites,
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
                                .read<SplashBloc>()
                                .fetchAudioData(audioPath: audio.audioPath),
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
                    // trailing: IconButton(
                    //   icon: const Icon(Icons.more_vert),
                    //   onPressed: () {},
                    // ),
                  ),
                );
              },
              itemCount: state.favouriteAudios.length,
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
