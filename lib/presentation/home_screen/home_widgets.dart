import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melody/application/audio_controller/audio_controller_bloc.dart';
import 'package:melody/application/home/home_bloc.dart';
import 'package:melody/domain/audio/audio.dart';
import 'package:melody/presentation/core/resourse_manager/string_manage.dart';
import 'package:melody/presentation/core/resourse_manager/value_manager.dart';

import '../../application/splash/splash_bloc.dart';
import '../core/empty_data_widget.dart';
import '../core/error_widget.dart';
import '../core/resourse_manager/color_manager.dart';
import '../core/utils.dart';
import '../core/widgets.dart';
import '../play_screen/screen_play.dart';

ValueNotifier<List<Audio>> selectedList = ValueNotifier(<Audio>[]);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.map(loading: (value) {
          return circularPindicator;
        }, loaded: (state) {
          if (state.audioList.isEmpty) {
            return const EmptyDataWidget();
          }
          return ValueListenableBuilder(
              valueListenable: selectedList,
              builder: (context, data, _) {
                bool isEqual = state.audioList.length == data.length;
                return Scaffold(
                  body: Container(
                    padding: const EdgeInsets.fromLTRB(
                      AppPadding.p10,
                      AppPadding.p10,
                      AppPadding.p10,
                      0,
                    ),
                    child: ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        final isContains =
                            data.contains(state.audioList[index]);
                        return Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(AppSize.s15),
                          ),
                          margin: const EdgeInsets.all(AppMargin.m3),
                          child: ListTile(
                            selected: isContains,
                            onLongPress: () {
                              if (!isContains) {
                                final newList =
                                    List<Audio>.from(selectedList.value);
                                newList.add(state.audioList[index]);
                                selectedList.value = newList;
                              } else {
                                final newList =
                                    List<Audio>.from(selectedList.value);
                                newList.remove(state.audioList[index]);
                                selectedList.value = newList;
                              }
                            },
                            onTap: () async {
                              if (data.isEmpty) {
                                context.read<AudioControllerBloc>().add(
                                        AudioControllerEvent
                                            .concatenatingAudios(
                                      audios: state.audioList,
                                      index: index,
                                      currentScreen: StringManger.home,
                                    ));
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const ScreenPlay(),
                                ));
                              } else {
                                if (!isContains) {
                                  final newList =
                                      List<Audio>.from(selectedList.value);
                                  newList.add(state.audioList[index]);
                                  selectedList.value = newList;
                                } else {
                                  final newList =
                                      List<Audio>.from(selectedList.value);
                                  newList.remove(state.audioList[index]);
                                  selectedList.value = newList;
                                }
                              }
                            },
                            leading: CircleAvatar(
                              backgroundColor: ColorManager.primary,
                              radius: AppSize.s25,
                              child: ClipOval(
                                  child: FutureBuilder<Uint8List?>(
                                      future: context
                                          .read<SplashBloc>()
                                          .fetchAudioData(
                                              audioPath: state
                                                  .audioList[index].audioPath),
                                      builder: (context, snapshot) {
                                        if (snapshot.connectionState ==
                                            ConnectionState.waiting) {
                                          return circularPindicator;
                                        }
                                        return CustomImageWidget(
                                          image: snapshot.data,
                                          height: AppSize.s50,
                                          width: AppSize.s50,
                                        );
                                      })),
                            ),
                            title: Text(
                              state.audioList[index].title.getOrCrash(),
                              maxLines: ConstantValues.one,
                            ),
                            subtitle: Text(
                              state.audioList[index].artist.getOrCrash(),
                              maxLines: ConstantValues.one,
                            ),
                            // trailing: IconButton(
                            //   icon: const Icon(Icons.more_vert),
                            //   onPressed: () {},
                            // ),
                          ),
                        );
                      },
                      itemCount: state.audioList.length,
                      shrinkWrap: true,
                    ),
                  ),
                  bottomNavigationBar: selectedList.value.isEmpty
                      ? null
                      : BottomNavigationBar(
                          unselectedItemColor:
                              isEqual ? ColorManager.secondary : null,
                          unselectedLabelStyle: TextStyle(
                            color: ColorManager.secondary,
                          ),
                          items: [
                              BottomNavigationBarItem(
                                icon: IconButton(
                                    onPressed: () {
                                      conFirmDialogue(
                                          context, StringManger.confirmDelete,
                                          () {
                                        Navigator.pop(context);
                                        context.read<HomeBloc>().add(
                                            HomeEvent.deleteButtonPressed(
                                                audios: selectedList.value));
                                        selectedList.value = [];
                                      });
                                    },
                                    icon: const Icon(Icons.delete)),
                                label: "Delete",
                              ),
                              BottomNavigationBarItem(
                                icon: IconButton(
                                  onPressed: () {
                                    if (!isEqual) {
                                      selectedList.value = state.audioList;
                                    } else {
                                      selectedList.value = [];
                                    }
                                  },
                                  icon: const Icon(Icons.select_all),
                                  color:
                                      isEqual ? ColorManager.secondary : null,
                                ),
                                label: isEqual ? "Remove All" : "Add All",
                              ),
                            ]),
                );
              });
        }, error: (value) {
          return const AppErrorWidget(
            errorMessage: StringManger.somethingWentWrong,
          );
        });
      },
    );
  }
}
