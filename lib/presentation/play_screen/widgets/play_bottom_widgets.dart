import 'package:flutter/material.dart';

import '../../resources/value_manager.dart';
import 'play_button_widget.dart';
import 'slider_widget.dart';

class PlayBottomWidgets extends StatelessWidget {
  const PlayBottomWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        //title subtitle
        ListTile(
          title: Center(child: Text('Never Be Like You')),
          subtitle: Center(child: Text('floma ft krea')),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('12:00'),
            Text('12:00'),
          ],
        ),
        //slider widget
        SliderWidget(),

        SizedBox(
          height: AppSize.s50,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
                child: PlayButtonWidget(iconData: Icons.fast_rewind_outlined)),
            Expanded(child: PlayButtonWidget(iconData: Icons.pause)),
            Expanded(
                child: PlayButtonWidget(iconData: Icons.fast_forward_outlined))
          ],
        ),
      ],
    );
  }
}
