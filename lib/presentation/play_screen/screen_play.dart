import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melody/application/audio_controller/audio_controller_bloc.dart';

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
        context.read<AudioControllerBloc>().addToPlay(index);
        context
            .read<AudioControllerBloc>()
            .add(const AudioControllerEvent.listenAllStreams());
      }
    });
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            'Now Playing',
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
          BlocBuilder<AudioControllerBloc, AudioControllerState>(
            buildWhen: (p, c) => p.title != c.title,
            builder: (context, state) {
              return Text(
                state.title,
              );
            },
          ),
          SizedBox(
            height: size.height * .05,
          ),
          const Column(
            children: <Widget>[
              PlayTopControllerWidget(),
              PlayProgressSlideWidget(),
              AudioControllerWidget()
            ],
          ),
        ],
      ),
    );
  }
}

class PlayProgressSlideWidget extends StatelessWidget {
  const PlayProgressSlideWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AudioControllerBloc, AudioControllerState>(
      builder: (context, state) {
        return ProgressBar(
          progress: state.current,
          buffered: state.buffered,
          total: state.total,
          onSeek: context.read<AudioControllerBloc>().onSeek,
        );
      },
    );
  }
}

class PlayTopControllerWidget extends StatelessWidget {
  const PlayTopControllerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.repeat_one),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.playlist_play),
        )
      ],
    );
  }
}
