import 'package:flutter/material.dart';
import 'package:melody/presentation/core/resourse_manager/string_manage.dart';

import 'home_widgets.dart';

class ScreenHomeMain extends StatelessWidget {
  const ScreenHomeMain({super.key});

  @override
  Widget build(BuildContext context) {
    int tabIndex = 0;
    return PopScope(
      canPop: true,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            title: const Text(
              StringManger.musicPlayer,
            ),
            centerTitle: true,
            bottom: TabBar(
              onTap: (int value) {
                tabIndex = value;
              },
              tabs: const <Widget>[
                Tab(
                  text: StringManger.home,
                  icon: Icon(Icons.home),
                ),
                Tab(
                  text: StringManger.favourites,
                  icon: Icon(Icons.favorite),
                ),
                Tab(
                  text: StringManger.playlist,
                  icon: Icon(Icons.playlist_play),
                ),
              ],
            ),
            elevation: 0,
            actions: <Widget>[
              IconButton(onPressed: () {}, icon: const Icon(Icons.search))
            ],
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                    onPressed: () {}, icon: const Icon(Icons.settings));
              },
            ),
          ),
          body: const TabBarView(
            children: <Widget>[
              ScreenHome(),
              Scaffold(
                body: Center(
                  child: Text('1'),
                ),
              ),
              Scaffold(
                body: Center(
                  child: Text('2'),
                ),
              ),

              // ScreenFavourite(),
              // ScreenPlaylist(),
            ],
          ),
        ),
      ),
    );
  }
}
