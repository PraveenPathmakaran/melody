import 'package:flutter/material.dart';

import '../../../domain/songs/audio.dart';
import '../../core/resourse_manager/color_manager.dart';
import '../../core/resourse_manager/font_manager.dart';
import '../../core/resourse_manager/styles_manager.dart';
import '../../core/resourse_manager/value_manager.dart';

class PlayScreenTextWidgets extends StatelessWidget {
  const PlayScreenTextWidgets({
    super.key,
    required this.audio,
  });

  final Audio audio;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          audio.title.getOrCrash(),
          style: getRegularStyle(
              fontSize: FontSize.s17, color: ColorManager.white),
          maxLines: ConstantValues.one,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: AppSize.s1_5,
        ),
        Text(
          audio.artist.getOrCrash(),
          style: getMediumStyle(color: ColorManager.white),
          maxLines: ConstantValues.one,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
