import 'package:flutter/material.dart';

import '../core/colors.dart';
import '../widgets.dart';

class ScreenPlay extends StatelessWidget {
  const ScreenPlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: const Text(
            'Now Playing',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: const PlayContainer());
  }
}

class PlayContainer extends StatelessWidget {
  const PlayContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: size.height * 0.10,
            ),
            CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: const AssetImage('assets/images/songsImage.png'),
              radius: size.width * 0.30,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            // Container(
            //     height: size.height * 0.03,
            //     margin: const EdgeInsets.fromLTRB(0, 10, 0, 7),
            //     child: _buildMarquee(
            //       realtimePlayingInfos1!.current!.audio.audio.metas.title
            //           .toString(),
            //     )),
            SizedBox(
              height: size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                    onPressed: () {},
                    icon: functionIcon(Icons.favorite, 30, Colors.white)),
                IconButton(
                  onPressed: () {
                    // if (screenPlayController.loopButton.value) {
                    //   getIt<AssetsAudioPlayer>().setLoopMode(LoopMode.single);
                    //   screenPlayController.loopButton.value = false;
                    // } else {
                    //   getIt<AssetsAudioPlayer>().setLoopMode(LoopMode.none);
                    //   screenPlayController.loopButton.value = true;
                    // }
                  },
                  icon: functionIcon(Icons.repeat_one, 35, kWhiteColor),
                ),
                IconButton(
                    onPressed: () {
                      // showModalBottomSheet(
                      //   backgroundColor: kBackgroundColor2,
                      //   context: context,
                      //   shape: const RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.vertical(
                      //       top: Radius.circular(30),
                      //     ),
                      //   ),
                      //   builder: (BuildContext context) {
                      //     return ScreenAddToPlaylistFromHome(
                      //       id: realtimePlayingInfos1!
                      //           .current!.audio.audio.metas.id
                      //           .toString(),
                      //     );
                      //   },
                      // );
                    },
                    icon: functionIcon(Icons.playlist_play, 35, kWhiteColor))
              ],
            ),
            //  slider(realtimePlayingInfos1!),
            Container(
              transform: Matrix4.translationValues(0, -5, 0),
              margin: const EdgeInsets.fromLTRB(5, 0, 5, 15),
              //child: timeStamps(realtimePlayingInfos1!),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () async {
                    //await getIt<AssetsAudioPlayer>().previous();
                  },
                  child: functionIcon(Icons.skip_previous, 55, Colors.white),
                ),
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    // getIt<AssetsAudioPlayer>().playOrPause();
                  },
                  child:
                      functionIcon(Icons.play_arrow_rounded, 55, Colors.white),
                ),
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () async {
                    // await getIt<AssetsAudioPlayer>().next();
                  },
                  child: functionIcon(Icons.skip_next, 55, Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  // Widget _buildMarquee(String text) {
  //   return Marquee(
  //     text: text,
  //     style: const TextStyle(color: kWhiteColor),
  //     blankSpace: 50,
  //   );
  // }
}
