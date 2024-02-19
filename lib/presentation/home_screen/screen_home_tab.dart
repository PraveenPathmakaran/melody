import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:melody/presentation/core/resourse_manager/icon_manager.dart';
import 'package:melody/presentation/core/resourse_manager/string_manage.dart';

import '../favourite/favourite_screen.dart';
import '../play_list/play_list_home.dart';
import 'home_widgets.dart';
import 'widgets/miniplayer.dart';

class ScreenHomeTab extends StatelessWidget {
  const ScreenHomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (didPop) {
        showDialog(
          context: context,
          builder: (context) {
            return SizedBox(
              height: 50,
              child: AlertDialog(
                alignment: Alignment.center,
                actionsAlignment: MainAxisAlignment.spaceBetween,
                content: const Text(
                  StringManger.youWontAbleToRevertThis,
                  textAlign: TextAlign.center,
                ),
                title: const Text(
                  StringManger.areYouSure,
                  textAlign: TextAlign.center,
                ),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text(StringManger.cancel)),
                  TextButton(
                    onPressed: () {
                      SystemNavigator.pop();
                    },
                    child: const Text(StringManger.exit),
                  ),
                ],
              ),
            );
          },
        );
      },
      canPop: false,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            title: const Text(
              StringManger.appName,
            ),
            leading: const SizedBox(),
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
            // actions: <Widget>[
            //   IconButton(onPressed: () {}, icon: const Icon(Icons.search))
            // ],
            // leading: Builder(
            //   builder: (BuildContext context) {
            //     return IconButton(
            //         onPressed: () {}, icon: const Icon(Icons.settings));
            //   },
            // ),
          ),
          body: const TabBarView(
            children: <Widget>[
              ScreenHome(),
              ScreenFavourites(),
              PlayListHomePage(),
            ],
          ),
          bottomNavigationBar: const MiniPlayer(),
        ),
      ),
    );
  }
}
