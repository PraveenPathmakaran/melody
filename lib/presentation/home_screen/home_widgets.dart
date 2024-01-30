import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melody/presentation/core/resourse_manager/assets_manager.dart';
import 'package:melody/presentation/core/resourse_manager/color_manager.dart';
import 'package:melody/presentation/core/resourse_manager/string_manage.dart';
import 'package:melody/presentation/play_screen/screen_play.dart';

import '../../application/audio/audio_bloc.dart';
import '../../domain/songs/audio_value_objects.dart';
import '../core/error_widget.dart';
import '../widgets.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: BlocBuilder<AudioBloc, AudioState>(
        builder: (context, state) {
          return state.map(initial: (value) {
            return cicularPindicator;
          }, loadInProgress: (value) {
            return cicularPindicator;
          }, loadSuccess: (value) {
            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                final audioData = context
                    .read<AudioBloc>()
                    .fetchAudioData(id: Id(value.audioId[index]));
                return Card(
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
                        child: ClipOval(child: imageWidget(audioData.image)),
                      ),
                      title: Text(
                        audioData.name.getOrCrash(),
                        maxLines: 1,
                      ),
                      subtitle: Text(
                        audioData.artist.getOrCrash(),
                        maxLines: 1,
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.more_vert),
                        onPressed: () {},
                      )),
                );
              },
              itemCount: value.audioId.length,
              shrinkWrap: true,
            );
          }, loadFailure: (value) {
            return const AppErrorWidget(
              errorMessage: StringManger.somethingWentWrogn,
            );
          });
        },
      ),
    );
  }
}

Widget imageWidget(Uint8List? image) {
  try {
    if (image != null) {
      return Image.memory(
        image,
        fit: BoxFit.cover,
        height: 52,
        width: 52,
        errorBuilder: (context, error, stackTrace) =>
            Image.asset(ImageAssets.musicImage),
      );
    } else {
      return Image.asset(ImageAssets.musicImage);
    }
  } catch (e) {
    return Image.asset(ImageAssets.musicImage);
  }
}
