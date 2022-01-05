import 'package:flutter/material.dart';

enum LanguageType { ENGLISH, PORTUGUESE_BR, ARABIC }

const String ARABIC = "ar";
const String ENGLISH = "en";
const String PORTUGUESE_BR = 'pt-BR';
const String ASSETS_PATH_LOCALISATIONS = "assets/translations";
const Locale ARABIC_LOCAL = Locale("ar", "SA");
const Locale ENGLISH_LOCAL = Locale("en", "US");
const Locale PORTUGUESE_BR_LOCAL = Locale("pt", "BR");

extension LanguageTypeExtension on LanguageType {
  String getValue() {
    switch (this) {
      case LanguageType.ENGLISH:
        return ENGLISH;
      case LanguageType.PORTUGUESE_BR:
        return PORTUGUESE_BR;
      case LanguageType.ARABIC:
        return ARABIC;
    }
  }
}
