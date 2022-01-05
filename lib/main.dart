import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';

import 'app/app.dart';
import 'app/di.dart';
import 'presentation/resources/language_manager.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Required by FlutterConfig and Dependency Injection
  await EasyLocalization.ensureInitialized(); // Init DI for appModule;
  await FlutterConfig.loadEnvVariables();
  await initAppModule();

  runApp(EasyLocalization(
    saveLocale: false,
    supportedLocales: [ENGLISH_LOCAL, PORTUGUESE_BR_LOCAL, ARABIC_LOCAL],
    path: ASSETS_PATH_LOCALISATIONS,
    child: Phoenix(child: MyApp()),
  ));
}
