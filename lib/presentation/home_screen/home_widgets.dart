import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melody/presentation/core/constant.dart';
import 'package:melody/presentation/widgets.dart';

import '../../application/audio/audio_bloc.dart';
import '../core/error_widget.dart';
import 'widgets/home_screen_list_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: BlocBuilder<AudioBloc, AudioState>(
        builder: (context, state) {
          switch (state.loadingState) {
            case LoadingState.loaded:
              return HomeScreenListWidget(
                audioIds: state.audioId,
                isAudioListEmpty: state.isAudioListEmpty,
              );
            case LoadingState.loading:
              return circularPindicator;
            case LoadingState.failed:
              return const AppErrorWidget(errorMessage: "Somethind went wrong");
            default:
              return circularPindicator;
          }
        },
      ),
    );
  }
}
