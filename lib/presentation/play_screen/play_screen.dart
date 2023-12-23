import 'package:flutter/material.dart';
import 'package:melody/presentation/resources/value_manager.dart';

import '../resources/string_manager.dart';
import 'widgets/play_screen_widget.dart';
import 'widgets/thumbnail_widget.dart';

class PlayScreen extends StatelessWidget {
  const PlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //app bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const PlayScreenIconWidget(
                      iconData: Icons.arrow_back_ios_new_sharp),
                  Text(StringManager.playingNow),
                  const PlayScreenIconWidget(iconData: Icons.menu),
                ],
              ),
              //thumbnail widget

              const ThumbnailWidget(),
              const ThumbnailWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
