import 'package:flutter/material.dart';

class AppMediaQueryManager {
  static late Size _size;

  static initializeSize(BuildContext context) {
    try {
      _size = MediaQuery.sizeOf(context);
    } catch (e) {
      throw Exception();
    }
  }

  static double get height => _size.height;

  static double get width => _size.width;

  static double getHeightPercentage(double value) {
    return (value * _size.height) / 100;
  }

  static double getWidthPercentage(double value) {
    return (value * _size.width) / 100;
  }
}
