import 'package:flutter/material.dart';

import '../../../domain/songs/audio.dart';
import '../../core/resourse_manager/icon_manager.dart';
import '../../core/resourse_manager/value_manager.dart';
import '../../widgets.dart';
import 'icon_widgets.dart';

class PlayButtonWidget extends StatelessWidget {
  final ButtonState buttonState;
  const PlayButtonWidget({super.key, required this.buttonState});

  @override
  Widget build(BuildContext context) {
    switch (buttonState) {
      case ButtonState.playing:
        return const PlayIconWidget(
            icon: IconManager.pauseRounded, size: AppSize.s50);
      case ButtonState.paused:
        return const PlayIconWidget(
          icon: IconManager.playArrowRounded,
          size: AppSize.s50,
        );
      default:
        return circularPindicator;
    }
  }
}
