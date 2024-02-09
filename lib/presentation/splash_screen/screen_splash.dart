import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melody/application/home/home_bloc.dart';
import 'package:melody/application/permission_bloc/permission_handler_bloc.dart';
import 'package:melody/presentation/core/app_size_manage.dart';
import 'package:melody/presentation/core/resourse_manager/string_manage.dart';

import '../../application/splash/splash_bloc.dart';
import '../home_screen/screen_home.dart';
import '../widgets.dart';
import 'widgets/permission_denied_widget.dart';
import 'widgets/permission_granted_widget.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

//"Observer added for opening app settings, then back to the app; however,
// there is no checkPermission occurring.
// This is the reason for adding this observer."
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      context
          .read<PermissionHandlerBloc>()
          .add(const PermissionHandlerEvent.checkPermission());
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AppMediaQueryManager.initializeSize(context);
    return MultiBlocListener(
      listeners: [
        BlocListener<PermissionHandlerBloc, PermissionHandlerState>(
          listener: (context, state) {
            state.maybeMap(
                orElse: () {},
                denied: (value) => snackBar(
                    context: context, content: StringManger.permissionDenied),
                permanentlyDenied: (value) => snackBar(
                    context: context,
                    content: StringManger.permissionPermanentlyDenied),
                //permission state is granted then it navigate to ScreenHomeMain
                granted: (value) async {
                  context
                      .read<SplashBloc>()
                      .add(const SplashEvent.getAllAudiosFromDevice());
                });
          },
        ),
        BlocListener<SplashBloc, SplashState>(
          listenWhen: (p, c) => p != c,
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              error: (value) => snackBar(
                  context: context, content: StringManger.somethingWentWrong),
              loaded: (value) {
                context
                    .read<HomeBloc>()
                    .add(HomeEvent.loadAudios(audios: value.audioList));
              },
            );
          },
        ),
        BlocListener<HomeBloc, HomeState>(
          listenWhen: (p, c) => p != c,
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              error: (value) => snackBar(
                  context: context, content: StringManger.somethingWentWrong),
              loaded: (value) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ScreenHomeMain(),
                ));
              },
            );
          },
        )
      ],
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: BlocBuilder<PermissionHandlerBloc, PermissionHandlerState>(
              builder: (context, state) {
                return state.map(
                  initial: (value) {
                    return const SizedBox();
                  },
                  //permission granted then show this widget
                  granted: (value) {
                    return const PermissionGrantedWidget();
                  },
                  denied: (value) {
                    return PermissionDeniedWidget(
                      text: StringManger.permissionDenied,
                      voidCallBack: () => context
                          .read<PermissionHandlerBloc>()
                          .add(const PermissionHandlerEvent.checkPermission()),
                    );
                  },
                  permanentlyDenied: (value) {
                    return PermissionDeniedWidget(
                      text:
                          '${StringManger.permissionPermanentlyDenied} ${StringManger.pleaseOpenAppSettingsAndAllowPermission}',
                      voidCallBack: () => context
                          .read<PermissionHandlerBloc>()
                          .add(const PermissionHandlerEvent.openAppSettings()),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
