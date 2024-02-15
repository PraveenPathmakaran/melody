import 'package:flutter/material.dart';

import '../../../domain/audio/audio.dart';
import '../../core/resourse_manager/color_manager.dart';
import '../../core/resourse_manager/icon_manager.dart';
import 'icon_widgets.dart';

class LoopModeWidget extends StatelessWidget {
  final AudioLoopMode audioLoopMode;
  const LoopModeWidget({
    super.key,
    required this.audioLoopMode,
  });

  @override
  Widget build(BuildContext context) {
    switch (audioLoopMode) {
      case AudioLoopMode.off:
        return const PlayIconWidget(icon: IconManager.repeatOff);
      case AudioLoopMode.one:
        return PlayIconWidget(
          icon: IconManager.repeatOne,
          color: ColorManager.secondary,
        );
      case AudioLoopMode.all:
        return Stack(
          alignment: Alignment.center,
          children: [
            Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'All',
                  style: TextStyle(fontSize: 8, color: ColorManager.secondary),
                )),
            PlayIconWidget(
              icon: IconManager.repeatOff,
              color: ColorManager.secondary,
            ),
          ],
        );
      default:
        return const PlayIconWidget(icon: IconManager.repeatOff);
    }
  }
}
