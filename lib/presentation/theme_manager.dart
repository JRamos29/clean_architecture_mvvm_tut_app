import 'package:flutter/material.dart';

import 'color_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      // Main colors of the app
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.primaryOpacity70,
      primaryColorDark: ColorManager.darkPrimary,
      disabledColor: ColorManager
          .grey1, // will be used in case of disabled button for example
      accentColor: ColorManager.grey

      // App bar theme

      // Card view theme

      // Button theme

      // Text theme

      // Input decoration theme (text form field)
      );
}
