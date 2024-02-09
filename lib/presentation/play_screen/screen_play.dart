import 'package:flutter/material.dart';
import 'package:melody/presentation/core/resourse_manager/color_manager.dart';
import 'package:melody/presentation/core/resourse_manager/string_manage.dart';
import 'package:melody/presentation/core/resourse_manager/styles_manager.dart';
import 'package:melody/presentation/core/resourse_manager/value_manager.dart';

import 'widgets/play_container.dart';

class ScreenPlay extends StatelessWidget {
  const ScreenPlay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: AppSize.s0,
        title: Text(
          StringManger.nowPlaying,
          style: getSemiBoldStyle(
            fontSize: AppSize.s18,
            color: ColorManager.white,
          ),
        ),
        centerTitle: true,
      ),
      body: const PlayContainer(),
    );
  }
}
