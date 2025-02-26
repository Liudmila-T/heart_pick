import 'package:flutter/material.dart';

import 'app_localizations_keys.dart';
import 'localized_values/localized_values_uk.dart';

const localizedValues = {
  'uk': localizedValuesUk,
};

class AppLocalizations {
  AppLocalizations(this.locale);

  static const List<Locale> supportedLocales = [Locale('uk', 'UA')];

  final Locale locale;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of(context, AppLocalizations);
  }

  String get start => localizedValues[locale.languageCode]![QLocalizationsKeys.start]!;
  String get loading => localizedValues[locale.languageCode]![QLocalizationsKeys.loading]!;
}
