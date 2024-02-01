import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melody/application/audio_controller/audio_controller_bloc.dart';
import 'package:melody/presentation/core/app_size_manage.dart';
import 'package:melody/presentation/core/resourse_manager/color_manager.dart';
import 'package:melody/presentation/core/resourse_manager/font_manager.dart';
import 'package:melody/presentation/core/resourse_manager/icon_manager.dart';
import 'package:melody/presentation/core/resourse_manager/string_manage.dart';
import 'package:melody/presentation/core/resourse_manager/styles_manager.dart';
import 'package:melody/presentation/core/resourse_manager/value_manager.dart';
import 'package:melody/presentation/widgets.dart';

import '../core/widgets.dart';
import 'widgets/icon_widgets.dart';
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
      //open this page from mini player dont need to play new song
      if (isNavigateFromHome) {
        context.read<AudioControllerBloc>().addToPlay(index);
      }
      context
          .read<AudioControllerBloc>()
          .add(const AudioControllerEvent.listenAllStreams());
    });
    return PopScope(
      onPopInvoked: (didPop) => context
          .read<AudioControllerBloc>()
          .add(const AudioControllerEvent.closeStream()),
      child: Scaffold(
          appBar: AppBar(
            elevation: AppSize.s0,
            title: Text(
              StringManger.nowPlaying,
              style: getSemiBoldStyle(
                fontSize: AppSize.s18,
                color: ColorManager.white,
              ),
            ),
            centerTitle: true,
          ),
          body: const PlayContainer()),
    );
  }
}

class PlayContainer extends StatelessWidget {
  const PlayContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return BlocBuilder<AudioControllerBloc, AudioControllerState>(
      buildWhen: (p, c) => p.audio != c.audio,
      builder: (context, state) {
        if (state.audio.failureOption.isNone()) {
          return Container(
            height: size.height,
            width: size.width,
            padding: const EdgeInsets.all(AppPadding.p30),
            child: Column(
              children: <Widget>[
                //image
                SizedBox(
                  height: AppMediaQueryManager.height / 2,
                  child: Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                        child: CustomImageWidget(
                          image: state.audio.image.value.isLeft()
                              ? null
                              : state.audio.image.getOrCrash(),
                          height: AppMediaQueryManager.getWidthPercentage(
                              AppSize.s90),
                          width: AppMediaQueryManager.getWidthPercentage(
                              AppSize.s90),
                        ),
                      ),
                    ],
                  ),
                ),
                //controller and details
                SizedBox(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Text(
                          state.audio.name.getOrCrash(),
                          style: getRegularStyle(
                              fontSize: FontSize.s17,
                              color: ColorManager.white),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 1,
                        ),
                        Text(
                          state.audio.artist.getOrCrash(),
                          style: getMediumStyle(color: ColorManager.white),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const PlayTopControllerWidget(),
                        const PlayProgressSlideWidget(),
                        const AudioControllerWidget()
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        } else {
          return cicularPindicator;
        }
      },
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
          progress: state.current.getOrCrash(),
          buffered: state.buffered.getOrCrash(),
          total: state.total.getOrCrash(),
          onSeek: context.read<AudioControllerBloc>().onSeek,
          thumbColor: ColorManager.secondary,
          progressBarColor: ColorManager.secondary,
          bufferedBarColor: ColorManager.lightGrey,
          baseBarColor: ColorManager.white,
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
        IconButton(
            onPressed: () {},
            icon: const PlayIconWidget(icon: IconManager.favourites)),
        IconButton(
          onPressed: () {},
          icon: const PlayIconWidget(icon: IconManager.repeat),
        ),
        IconButton(
          onPressed: () {},
          icon: const PlayIconWidget(icon: IconManager.playlist),
        )
      ],
    );
  }
}
