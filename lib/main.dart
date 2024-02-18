import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'injection_container.dart';
import 'presentation/core/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initGetIt();
  await Hive.initFlutter();
  runApp(const MyApp());
}
