import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';

import 'app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Required by FlutterConfig
  await FlutterConfig.loadEnvVariables();

  runApp(MyApp());
}
