import 'package:flutter/material.dart';

import 'widgets/create_playlist_widget.dart';
import 'widgets/playlist_name_widget.dart';

class PlayListHomePage extends StatelessWidget {
  const PlayListHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const <Widget>[
          //create playList
          PlayLIstCreateWidget(),
          //list view builder
          PlayListNameWidget()
        ],
      ),
    );
  }
}
