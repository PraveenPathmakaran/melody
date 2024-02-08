import 'package:flutter/material.dart';
import 'package:melody/presentation/core/resourse_manager/icon_manager.dart';
import 'package:melody/presentation/core/resourse_manager/string_manage.dart';

import '../favourite/favourite_screen.dart';
import 'home_widgets.dart';

class ScreenHomeMain extends StatelessWidget {
  const ScreenHomeMain({super.key});

  @override
  Widget build(BuildContext context) {
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
              onTap: (int value) {},
              tabs: const <Widget>[
                Tab(
                  text: StringManger.home,
                  icon: Icon(IconManager.home),
                ),
                Tab(
                  text: StringManger.favourites,
                  icon: Icon(IconManager.favourites),
                ),
                Tab(
                  text: StringManger.playlist,
                  icon: Icon(IconManager.playlist),
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
              ScreenPlayList(),
              Scaffold(
                body: Center(
                  child: Text('2'),
                ),
              ),
            ],
          ),
          // bottomNavigationBar: const MiniPlayer(),
        ),
      ),
    );
  }
}
