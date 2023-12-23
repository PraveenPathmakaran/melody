import 'package:flutter/material.dart';
import 'package:melody/presentation/play_screen/play_screen.dart';
import 'package:melody/presentation/resources/theme_manger.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: getApplicationTheme(),
      home: const PlayScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
