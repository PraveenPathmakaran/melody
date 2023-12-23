import 'package:flutter/material.dart';

import '../../resources/color_manager.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
        data: SliderTheme.of(context).copyWith(
            activeTrackColor: ColorManger.blue,
            inactiveTrackColor: ColorManger.primaryWhite,
            thumbColor: ColorManger.primaryWhite,
            trackHeight: 10),
        child: Slider(
          value: 0.5,
          onChanged: (value) {},
        ));
  }
}
