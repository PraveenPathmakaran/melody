import 'package:flutter/material.dart';
import 'package:melody/presentation/resources/color_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    useMaterial3: true,
    primaryColor: ColorManger.primaryWhite,
  );
}
