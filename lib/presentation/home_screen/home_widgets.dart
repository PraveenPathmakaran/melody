import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: BlocBuilder<AudioBloc, AudioState>(
        builder: (context, state) {
          return state.map(initial: (value) {
            return circularPindicator;
          }, loading: (value) {
            return circularPindicator;
          }, loaded: (state) {
            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
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
                            child: FutureBuilder<Uint8List?>(
                                future: context
                                    .read<AudioBloc>()
                                    .fetchAudioData(
                                        audioPath:
                                            state.audioList[index].audioPath),
                                builder: (context, snapshot) {
                                  return CustomImageWidget(
                                    image: snapshot.data,
                                    height: 52,
                                    width: 52,
                                  );
                                })),
                      ),
                      title: Text(
                        state.audioList[index].title.getOrCrash(),
                        maxLines: 1,
                      ),
                      subtitle: Text(
                        state.audioList[index].artist.getOrCrash(),
                        maxLines: 1,
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
            return const AppErrorWidget(errorMessage: "Something went wrong");
          });
        },
      ),
    );
  }
}
