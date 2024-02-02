import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melody/presentation/widgets.dart';

import '../../../application/audio/audio_bloc.dart';
import '../../../application/audio_controller/audio_controller_bloc.dart';
import '../../../domain/songs/audio_value_objects.dart';
import '../../core/resourse_manager/color_manager.dart';
import '../../core/widgets.dart';
import '../../play_screen/screen_play.dart';

class HomeScreenListWidget extends StatelessWidget {
  final List<Id> audioIds;
  final bool isAudioListEmpty;
  HomeScreenListWidget({
    super.key,
    required this.audioIds,
    required this.isAudioListEmpty,
  });
  final ScrollController _scrollController = ScrollController();

  void listenScrollController(BuildContext context) {
    _scrollController.addListener(() {
      if (_scrollController.position.atEdge) {
        if (_scrollController.position.pixels != 0) {
          context.read<AudioBloc>().add(const AudioEvent.concatenatingAudios());
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (!isAudioListEmpty) {
        listenScrollController(context);
      }
      if (audioIds.length > 50) {
        //Future.delayed(const Duration(seconds: 1));
        _scrollController
            .jumpTo(_scrollController.position.maxScrollExtent - 500);
      }
    });

    return ListView.builder(
      controller: _scrollController,
      itemBuilder: (BuildContext context, int index) {
        if (index < audioIds.length) {
          final audioData = context
              .read<AudioControllerBloc>()
              .fetchAudioData(id: Id(audioIds[index].getOrCrash()));
          return Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            margin: const EdgeInsets.all(3),
            child: ListTile(
                onTap: () async {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        ScreenPlay(index: index, isNavigateFromHome: true),
                  ));
                },
                leading: CircleAvatar(
                  backgroundColor: ColorManager.primary,
                  radius: 28,
                  child: ClipOval(
                      child: CustomImageWidget(
                    image: audioData.image.value.isLeft()
                        ? null
                        : audioData.image.getOrCrash(),
                    height: 52,
                    width: 52,
                  )),
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
        } else {
          return circularPindicator;
        }
      },
      itemCount: isAudioListEmpty ? audioIds.length : audioIds.length + 1,
      shrinkWrap: true,
    );
  }
}
