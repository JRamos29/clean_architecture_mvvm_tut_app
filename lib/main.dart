import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';

import 'app/app.dart';
import 'app/di.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Required by FlutterConfig and Dependency Injection
  await FlutterConfig.loadEnvVariables();
  await initAppModule(); // Init DI for appModule;

  runApp(MyApp());
}
