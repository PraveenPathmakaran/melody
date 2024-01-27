import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melody/presentation/play_screen/screen_play.dart';

import '../../application/audio/audio_bloc.dart';
import '../core/error_widget.dart';
import '../widgets.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      color: Colors.black,
      child: BlocBuilder<AudioBloc, AudioState>(
        builder: (context, state) {
          return state.map(initial: (value) {
            return cicularPindicator;
          }, loadInProgress: (value) {
            return cicularPindicator;
          }, loadSuccess: (value) {
            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                final allKeys = value.audios.keys.toList();
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  margin: const EdgeInsets.all(3),
                  color: const Color(0xFF14202E),
                  child: ListTile(
                      contentPadding: const EdgeInsets.all(10),
                      onTap: () async {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ScreenPlay(
                              index: index, isNavigateFromHome: true),
                        ));
                      },
                      leading: const CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage('assets/images/musicIcon1.png'),
                      ),
                      title: Text(
                        value.audios[allKeys[index]]?.name.getOrCrash() ?? "",
                        maxLines: 1,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      // subtitle: const Text(
                      //   "",
                      //   maxLines: 1,
                      //   style: TextStyle(color: Colors.white, fontSize: 10),
                      // ),
                      trailing: IconButton(
                        icon: functionIcon(Icons.more_vert, 20, Colors.white),
                        onPressed: () {
                          // showModalBottomSheet(
                          //     backgroundColor: kAppbarColor,
                          //     context: context,
                          //     shape: const RoundedRectangleBorder(
                          //       borderRadius: BorderRadius.vertical(
                          //         top: Radius.circular(30),
                          //       ),
                          //     ),
                          //     builder: (BuildContext ctx) {
                          //       return SizedBox(
                          //         height: 300,
                          //         child: HomeBottomSheet(
                          //           id: allAudioListFromDB[index].id.toString(),
                          //         ),
                          //       );
                          //     });
                        },
                      )),
                );
              },
              itemCount: value.audios.length,
              shrinkWrap: true,
            );
          }, loadFailure: (value) {
            return const AppErrorWidget(
              errorMessage: "Something went wrong",
            );
          });
        },
      ),
    );
  }
  //  Container(
  //     color: Colors.black,
  //     child: Center(
  //       child: functionText(
  //           'No Songs Found', Colors.white, FontWeight.bold, 20),
  //     ),
  //   )
}
