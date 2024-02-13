import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/playlist/play_list_home/play_list_home_bloc.dart';
import '../../../application/playlist/play_list_home_action/play_list_home_action_bloc.dart';
import '../../core/resourse_manager/color_manager.dart';
import '../../core/resourse_manager/string_manage.dart';
import '../../core/utils.dart';

class PlayLIstCreateWidget extends StatelessWidget {
  const PlayLIstCreateWidget({
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
                    content: failure.maybeMap(
                        orElse: () => "",
                        nameAlreadyInUse: (_) => StringManger.playListNameExist,
                        emptyPlayListName: (_) => StringManger.invalidName,
                        dataBaseFailure: (_) => StringManger.somethingWentWrong,
                        deleteFailure: (_) => StringManger.somethingWentWrong),
                  );
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
