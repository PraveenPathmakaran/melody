import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/constant.dart';
import '../../widgets.dart';

class PermissionGrantedWidget extends StatelessWidget {
  const PermissionGrantedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
