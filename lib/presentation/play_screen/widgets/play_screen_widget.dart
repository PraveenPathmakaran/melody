import 'package:flutter/material.dart';

import '../../resources/color_manager.dart';
import '../../resources/value_manager.dart';

class PlayScreenIconWidget extends StatelessWidget {
  final IconData iconData;
  const PlayScreenIconWidget({super.key, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: AppSize.s10,
      shape: const CircleBorder(),
      child: Container(
        alignment: Alignment.center,
        height: AppSize.s50,
        width: AppSize.s50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s100),
            color: ColorManger.iconWhite),
        child: Icon(
          iconData,
          size: AppSize.s23,
        ),
      ),
    );
  }
}
