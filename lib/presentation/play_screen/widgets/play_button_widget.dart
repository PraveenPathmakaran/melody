import 'package:flutter/material.dart';

import '../../resources/value_manager.dart';

class PlayButtonWidget extends StatelessWidget {
  const PlayButtonWidget({
    super.key,
    required this.iconData,
  });
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: const CircleBorder(),
      elevation: AppSize.s10,
      child: SizedBox(
          width: 80,
          height: 80,
          child: Icon(
            iconData,
            size: 35,
          )),
    );
  }
}
