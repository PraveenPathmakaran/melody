import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/playlist/play_list_home/play_list_home_bloc.dart';
import '../../../application/playlist/play_list_home_action/play_list_home_action_bloc.dart';
import '../../core/resourse_manager/string_manage.dart';
import '../../core/resourse_manager/value_manager.dart';
import '../../core/utils.dart';
import '../play_list_screen/play_list_screen.dart';

class PlayListNameWidget extends StatelessWidget {
  const PlayListNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayListHomeBloc, PlayListHomeState>(
      builder: (context, state) {
        return state.map(
          loading: (_) => circularPindicator,
          loaded: (value) {
            return ListView.builder(
              controller: ScrollController(),
              itemBuilder: (BuildContext context, int index) {
                if (value.playListNames[index].value.isRight()) {
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSize.s15),
                    ),
                    margin: const EdgeInsets.all(AppMargin.m3),
                    child: ListTile(
                        onTap: () async {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ScreenPlayList(
                                playListName: value.playListNames[index]),
                          ));
                        },
                        title: Text(
                          value.playListNames[index].getOrCrash(),
                          maxLines: ConstantValues.one,
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  alignment: Alignment.center,
                                  actionsAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  content: const Text(StringManger.delete),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text(StringManger.cancel)),
                                    TextButton(
                                      onPressed: () {
                                        context
                                            .read<PlayListHomeActionBloc>()
                                            .add(PlayListHomeActionEvent
                                                .deletePlaylist(
                                                    playListName: value
                                                        .playListNames[index]));
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text(StringManger.create),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                        )),
                  );
                } else {
                  return const SizedBox();
                }
              },
              itemCount: value.playListNames.length,
              shrinkWrap: true,
            );
          },
          failure: (_) => circularPindicator,
        );
      },
    );
  }
}
