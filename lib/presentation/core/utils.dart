import 'package:flutter/material.dart';

import 'resourse_manager/value_manager.dart';

void snackBar(
    {required BuildContext context,
    String content = "",
    Color color = Colors.red}) {
  ScaffoldMessenger.of(context).removeCurrentSnackBar();
  final SnackBar snackBar = SnackBar(
    content: Text(content),
    duration: const Duration(seconds: DurationConstant.one),
    backgroundColor: color,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

const Widget circularPindicator = Center(
  child: CircularProgressIndicator(),
);
