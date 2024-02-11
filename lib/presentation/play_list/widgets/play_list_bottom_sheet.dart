import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/audio_controller/audio_controller_bloc.dart';
import '../../../application/playlist/play_list_home/play_list_home_bloc.dart';
import '../../../application/playlist/play_list_home_action/play_list_home_action_bloc.dart';
import '../../../domain/songs/audio.dart';
import '../../core/resourse_manager/color_manager.dart';
import '../../core/resourse_manager/string_manage.dart';
import '../../core/resourse_manager/value_manager.dart';
import '../../widgets.dart';

class PlayListBottomSheet extends StatelessWidget {
  const PlayListBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const <Widget>[
          //create playList
          PlayLIstCreateWidgetSheet(),
          //list view builder
          PlayListNameWidget()
        ],
      ),
    );
  }
}

class PlayLIstCreateWidgetSheet extends StatelessWidget {
  const PlayLIstCreateWidgetSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PlayListHomeActionBloc, PlayListHomeActionState>(
      listener: (context, state) {
        state.failureOrSuccessOption.fold(
            () {},
            (either) => either.fold((failure) {
                  snackBar(
                      context: context,
                      content: failure.map(
                          nameAlreadyInUse: (_) =>
                              StringManger.playListNameExist,
                          emptyPlayListName: (_) => StringManger.invalidName,
                          dataBaseFailure: (_) =>
                              StringManger.somethingWentWrong,
                          deleteFailure: (_) =>
                              StringManger.somethingWentWrong));
                }, (r) {
                  snackBar(
                    context: context,
                    content: StringManger.successfull,
                    color: ColorManager.black,
                  );
                  context
                      .read<PlayListHomeBloc>()
                      .add(const PlayListHomeEvent.loadPlayList());
                }));
      },
      builder: (context, state) {
        return BlocBuilder<PlayListHomeActionBloc, PlayListHomeActionState>(
          builder: (context, state) {
            return SizedBox(
              height: 50,
              width: double.infinity,
              child: Center(
                  child: GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Form(
                        autovalidateMode: state.showErrorMessage
                            ? AutovalidateMode.always
                            : AutovalidateMode.disabled,
                        child: AlertDialog(
                          alignment: Alignment.center,
                          actionsAlignment: MainAxisAlignment.spaceBetween,
                          content: TextFormField(
                            onChanged: (value) => context
                                .read<PlayListHomeActionBloc>()
                                .add(
                                    PlayListHomeActionEvent.playListNameChanged(
                                        playListName: value)),
                            validator: (_) => context
                                .read<PlayListHomeActionBloc>()
                                .state
                                .playListName
                                .value
                                .fold(
                                    (l) => l.maybeMap(
                                        orElse: () => null,
                                        empty: (value) =>
                                            StringManger.invalidName),
                                    (r) => null),
                          ),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text(StringManger.cancel)),
                            TextButton(
                              onPressed: () {
                                context.read<PlayListHomeActionBloc>().add(
                                    const PlayListHomeActionEvent
                                        .playListCreateButtonClick());
                                Navigator.of(context).pop();
                              },
                              child: const Text(StringManger.create),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(StringManger.createPlayList),
                    Icon(Icons.add_circle_outline)
                  ],
                ),
              )),
            );
          },
        );
      },
    );
  }
}

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
                          final Audio? audio = context
                              .read<AudioControllerBloc>()
                              .state
                              .audio
                              .fold(() => null, (a) => a);

                          if (audio != null) {
                            context.read<PlayListHomeActionBloc>().add(
                                PlayListHomeActionEvent.addToPlayList(
                                    playListName: value.playListNames[index],
                                    audioPath: audio.audioPath));
                          }
                        },
                        title: Text(
                          value.playListNames[index].getOrCrash(),
                          maxLines: ConstantValues.one,
                        ),
                        trailing: TextButton(
                          child: const Text("Add"),
                          onPressed: () {
                            //context.read<>()
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
