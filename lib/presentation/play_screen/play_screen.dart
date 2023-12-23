import 'package:flutter/material.dart';
import 'package:melody/presentation/resources/value_manager.dart';

import 'widgets/play_bottom_widgets.dart';
import 'widgets/play_screen_widget.dart';
import 'widgets/thumbnail_widget.dart';

class PlayScreen extends StatelessWidget {
  const PlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppPadding.p25),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //app bar
                PlayAppBarWidget(),
                //thumbnail widget
                ThumbnailWidget(),
                //bottom section
                PlayBottomWidgets()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
