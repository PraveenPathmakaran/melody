import 'package:flutter/material.dart';
import 'package:melody/presentation/core/resourse_manager/color_manager.dart';
import 'package:melody/presentation/core/resourse_manager/string_manage.dart';

import '../../core/resourse_manager/styles_manager.dart';
import '../../core/resourse_manager/value_manager.dart';
import '../../core/utils.dart';

class PermissionGrantedWidget extends StatelessWidget {
  const PermissionGrantedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          StringManger.appName,
          style: getLargeStyle(color: ColorManager.white),
        ),
        const SizedBox(height: AppSize.s12),
        Text(
          StringManger.appName,
          style: getMediumStyle(color: ColorManager.white),
        ),
        const SizedBox(height: AppSize.s18),
        circularPindicator
      ],
    );
  }
}
