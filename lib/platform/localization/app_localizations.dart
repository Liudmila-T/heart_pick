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

  String get collectBonuses => localizedValues[locale.languageCode]![QLocalizationsKeys.collectBonuses]!;

  String get congratulations => localizedValues[locale.languageCode]![QLocalizationsKeys.congratulations]!;

  String get yourWinnings => localizedValues[locale.languageCode]![QLocalizationsKeys.yourWinnings]!;

  String get whatWillYouChoose => localizedValues[locale.languageCode]![QLocalizationsKeys.whatWillYouChoose]!;

  String get next => localizedValues[locale.languageCode]![QLocalizationsKeys.next]!;

  String get or => localizedValues[locale.languageCode]![QLocalizationsKeys.or]!;

  String get close => localizedValues[locale.languageCode]![QLocalizationsKeys.close]!;

  String get somethingWentWrong => localizedValues[locale.languageCode]![QLocalizationsKeys.somethingWentWrong]!;
}
