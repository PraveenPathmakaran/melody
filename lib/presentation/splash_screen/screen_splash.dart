import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melody/application/permission_bloc/permission_handler_bloc.dart';

import '../home_screen/screen_home.dart';
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
    return BlocListener<PermissionHandlerBloc, PermissionHandlerState>(
      listener: (context, state) {
        state.maybeMap(
            orElse: () {},
            //permission state is granted then it navigate to ScreenHomeMain
            granted: (value) async {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const ScreenHomeMain(), // Replace HomeScreen with your actual home screen widget
                ),
              );
            });
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: BlocBuilder<PermissionHandlerBloc, PermissionHandlerState>(
              builder: (context, state) {
                return state.map(
                  initial: (value) {
                    return const SizedBox();
                  },
                  granted: (value) {
                    return const PermissionGrantedWidget();
                  },
                  denied: (value) {
                    return PermissionDeniedWidget(
                      text: 'Permission Denied',
                      voidCallBack: () => context
                          .read<PermissionHandlerBloc>()
                          .add(const PermissionHandlerEvent.checkPermission()),
                    );
                  },
                  permanentlyDenied: (value) {
                    return PermissionDeniedWidget(
                      text:
                          'Permission permanently Denied Please open app settings and allow permission',
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
