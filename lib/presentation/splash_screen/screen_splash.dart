import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:melody/application/home_bloc/home_bloc.dart';

import '../core/colors.dart';
import '../core/constant.dart';
import '../home_screen/screen_home.dart';
import '../widgets.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      listener: (context, state) {
        state.maybeMap(
            orElse: () {},
            loadSuccess: (value) {
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                functionText(
                  appName,
                  kWhiteColor,
                  FontWeight.bold,
                  48,
                ),
                functionText(
                  'Music Player',
                  kWhiteColor,
                  FontWeight.bold,
                  24,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                const CircularProgressIndicator(
                  color: kWhiteColor,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
