import 'dart:io';

import 'package:watch_app/app/types/language_type.dart';
import 'package:watch_app/domain/entities/preference/setting_preference.dart';
import 'package:flutter/material.dart';

class PreferenceHelper {
  static Locale? language({
    String? languageKey,
  }) {
    String? currentLanguage = Platform.localeName;

    SettingPreference selectedLocale = selectLanguage(currentLanguage);
    LanguageType type = selectedLocale.dynamicValue;

    return Locale(
      type.language,
      type.country,
    );
  }
}
