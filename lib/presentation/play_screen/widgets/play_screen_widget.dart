import 'package:flutter/material.dart';

import '../../resources/color_manager.dart';
import '../../resources/string_manager.dart';
import '../../resources/value_manager.dart';

class PlayAppBarWidget extends StatelessWidget {
  const PlayAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const PlayScreenIconWidget(iconData: Icons.arrow_back_ios_new_sharp),
        Text(StringManager.playingNow),
        const PlayScreenIconWidget(iconData: Icons.menu),
      ],
    );
  }
}

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
