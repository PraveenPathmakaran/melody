import 'package:flutter/material.dart';

import 'core/colors.dart';

//---------------------------functions for common usage

//common text function
Widget functionText(
    String content, Color color, FontWeight weight, double fontSize) {
  return Text(
    content,
    style: TextStyle(
      color: color,
      fontWeight: weight,
      fontSize: fontSize,
    ),
  );
}

//common icon
Widget functionIcon(IconData icon1, double iconSize, Color iconColor) {
  return Icon(
    icon1,
    size: iconSize,
    color: iconColor,
  );
}

//text function
Widget functionTextButton(Function() textFunction, String text) {
  return TextButton(
    style: ButtonStyle(
        alignment: Alignment.centerLeft,
        padding: MaterialStateProperty.all<EdgeInsets>(
          EdgeInsets.zero,
        )),
    onPressed: textFunction,
    child: functionText(
      text,
      kWhiteColor,
      FontWeight.bold,
      20,
    ),
  );
}

void snackBar(String content, Color color, BuildContext context) {
  final SnackBar snackBar = SnackBar(
    content: Text(content),
    duration: const Duration(seconds: 1),
    backgroundColor: color,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

Widget cicularPindicator = const Center(
  child: CircularProgressIndicator(),
);
