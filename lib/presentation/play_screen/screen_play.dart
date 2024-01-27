import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melody/application/audio_controller/audio_controller_bloc.dart';

import '../core/colors.dart';
import '../widgets.dart';
import 'widgets/play_controller_widget.dart';

class ScreenPlay extends StatelessWidget {
  const ScreenPlay(
      {super.key, required this.index, required this.isNavigateFromHome});

  final int index;
  final bool isNavigateFromHome;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (isNavigateFromHome) {
        context
            .read<AudioControllerBloc>()
            .add(AudioControllerEvent.addToPlay(index: index));
      }
    });
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: const Text(
            'Now Playing',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: const PlayContainer());
  }
}

class PlayContainer extends StatelessWidget {
  const PlayContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height * 0.10,
          ),
          CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: const AssetImage('assets/images/songsImage.png'),
            radius: size.width * 0.30,
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          // BlocBuilder<AudioBloc, AudioState>(
          //   buildWhen: (previous, current) =>
          //       previous.audio.name != current.audio.name,
          //   builder: (context, state) {
          //     return Container(
          //         height: size.height * 0.03,
          //         margin: const EdgeInsets.fromLTRB(0, 10, 0, 7),
          //         child: Text(
          //           state.audio.name.getOrCrash(),
          //           style: const TextStyle(color: Colors.white),
          //         ));
          //   },
          // ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                  onPressed: () {},
                  icon: functionIcon(Icons.favorite, 30, Colors.white)),
              IconButton(
                onPressed: () {},
                icon: functionIcon(Icons.repeat_one, 35, kWhiteColor),
              ),
              IconButton(
                  onPressed: () {
                    // showModalBottomSheet(
                    //   backgroundColor: kBackgroundColor2,
                    //   context: context,
                    //   shape: const RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.vertical(
                    //       top: Radius.circular(30),
                    //     ),
                    //   ),
                    //   builder: (BuildContext context) {
                    //     return ScreenAddToPlaylistFromHome(
                    //       id: realtimePlayingInfos1!
                    //           .current!.audio.audio.metas.id
                    //           .toString(),
                    //     );
                    //   },
                    // );
                  },
                  icon: functionIcon(Icons.playlist_play, 35, kWhiteColor))
            ],
          ),
          // const SliderWidget(),
          Container(
            transform: Matrix4.translationValues(0, -5, 0),
            margin: const EdgeInsets.fromLTRB(5, 0, 5, 15),
            //child: timeStamps(realtimePlayingInfos1!),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          const AudioControllerWidget()
        ],
      )),
    );
  }
}

// Widget _buildMarquee(String text) {
//   return Marquee(
//     text: text,
//     style: const TextStyle(color: kWhiteColor),
//     blankSpace: 50,
//   );
// }

// class SliderWidget extends StatelessWidget {
//   const SliderWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<ListenAudioBloc, ListenAudioState>(
//       builder: (context, state) {
//         return Stack(
//           children: <Widget>[
//             SliderTheme(
//               data: const SliderThemeData(
//                   thumbColor: Colors.white,
//                   activeTrackColor: Color(0xffe45923),
//                   inactiveTrackColor: Colors.grey,
//                   overlayColor: Colors.transparent),
//               child: Slider.adaptive(
//                 value: state.duration * 1 / 100,
//                 onChanged: (value) {},
                // max: realtimePlayingInfos.duration.inSeconds <= 0
                //     ? 10000
                //     : realtimePlayingInfos.duration.inSeconds.toDouble() + 3,
                //   onChanged: (double value) {
                //     if (value <= 0) {
                //       audioPlayer.seek(Duration.zero);
                //     } else if (value >= realtimePlayingInfos.duration.inSeconds) {
                //       audioPlayer.seek(realtimePlayingInfos.duration);
                //     } else {
                //       audioPlayer.seek(Duration(seconds: value.toInt()));
                //     }
                //   },
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
