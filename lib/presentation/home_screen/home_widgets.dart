import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melody/presentation/play_screen/screen_play.dart';

import '../../application/audio/audio_bloc.dart';
import '../../application/home_bloc/home_bloc.dart';
import '../../application/listen_audio_bloc/listen_audio_bloc.dart';
import '../widgets.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.map(
          initial: (value) {
            return cicularPindicator;
          },
          loadInProgress: (value) {
            return cicularPindicator;
          },
          loadSuccess: (state) {
            return BlocListener<AudioBloc, AudioState>(
              listener: (lcontext, state) {
                state.maybeMap(
                  orElse: () {},
                  playing: (value) {
                    context
                        .read<ListenAudioBloc>()
                        .add(const ListenAudioEvent.started());
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ScreenPlay(),
                    ));
                  },
                );
              },
              child: Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                color: Colors.black,
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      margin: const EdgeInsets.all(3),
                      color: const Color(0xFF14202E),
                      child: ListTile(
                          onTap: () async {
                            context.read<AudioBloc>().add(AudioEvent.playSong(
                                path: state.audios[index].path, index: index));
                          },
                          leading: const CircleAvatar(
                            radius: 28,
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                AssetImage('assets/images/musicIcon1.png'),
                          ),
                          title: Text(
                            state.audios[index].name.getOrCrash(),
                            maxLines: 1,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 15),
                          ),
                          subtitle: Text(
                            state.audios[index].artist.getOrCrash(),
                            maxLines: 1,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 10),
                          ),
                          trailing: IconButton(
                            icon:
                                functionIcon(Icons.more_vert, 20, Colors.white),
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
                  itemCount: state.audios.length,
                  shrinkWrap: true,
                ),
              ),
            );
          },
          loadFailure: (value) {
            return cicularPindicator;
          },
        );
      },
    );
    //  Container(
    //     color: Colors.black,
    //     child: Center(
    //       child: functionText(
    //           'No Songs Found', Colors.white, FontWeight.bold, 20),
    //     ),
    //   )
  }
}
