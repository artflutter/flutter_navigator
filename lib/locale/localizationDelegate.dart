import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_routing/locale/translations/generated/messages_all.dart';
import 'package:intl/intl.dart';

import 'localizations.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  final Locale newLocale;

  LocaleChangeCallback onLocaleChanged;

  Map<String, String> get supportedLanguages => {
        "en": "English",
        "ar": "Arabic",
      };

  AppLocalizationsDelegate({this.newLocale});

  Iterable<Locale> supportedLocales() =>
      supportedLanguages.keys.map<Locale>((language) => Locale(language, ""));

  bool isRtl(Locale locale) => locale.toString() == 'ar';

  Locale initialLocale() => Locale('en');

  @override
  bool isSupported(Locale locale) =>
      supportedLanguages.keys.contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) async {
    var currentLocale = newLocale ?? locale;

    final String localeName =
        currentLocale.countryCode == null || currentLocale.countryCode.isEmpty
            ? currentLocale.languageCode
            : currentLocale.toString();

    final String canonicalLocaleName = Intl.canonicalizedLocale(localeName);

    await initializeMessages(canonicalLocaleName);

    Intl.defaultLocale = canonicalLocaleName;
    return AppLocalizations();
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) => true;
}

typedef void LocaleChangeCallback(Locale locale);
