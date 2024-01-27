import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melody/application/audio_controller/audio_controller_bloc.dart';

import '../core/colors.dart';
import '../widgets.dart';
import 'widgets/play_controller_widget.dart';

class ScreenPlay extends StatelessWidget {
  const ScreenPlay({
    super.key,
    required this.index,
    required this.isNavigateFromHome,
  });

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
    final size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height,
      width: size.width,
      padding: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage('assets/images/songsImage.png'),
            radius: 100,
          ),
          SizedBox(
            height: size.height * .10,
          ),
          // ValueListenableBuilder(
          //   valueListenable: currentSongTitleNotifier,
          //   builder: (context, value, child) => Text(
          //     value,
          //     style: const TextStyle(color: Colors.white),
          //   ),
          // ),
          SizedBox(
            height: size.height * .05,
          ),
          const Column(
            children: <Widget>[
              PlayTopControllerWidget(),
              //PlayProgressSlideWidget(),
              AudioControllerWidget()
            ],
          ),
        ],
      ),
    );
  }
}

// class PlayProgressSlideWidget extends StatelessWidget {
//   const PlayProgressSlideWidget({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ValueListenableBuilder<ProgressBarState>(
//       valueListenable: progressNotifier,
//       builder: (_, value, __) {
//         return ProgressBar(
//           progress: value.current,
//           buffered: value.buffered,
//           total: value.total,
//         );
//       },
//     );
//   }
// }

class PlayTopControllerWidget extends StatelessWidget {
  const PlayTopControllerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
            onPressed: () {},
            icon: functionIcon(Icons.playlist_play, 35, kWhiteColor))
      ],
    );
  }
}
