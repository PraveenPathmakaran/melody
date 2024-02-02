import 'package:flutter/material.dart';

void snackBar(String content, Color color, BuildContext context) {
  final SnackBar snackBar = SnackBar(
    content: Text(content),
    duration: const Duration(seconds: 1),
    backgroundColor: color,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

const Widget circularPindicator = Center(
  child: CircularProgressIndicator(),
);
