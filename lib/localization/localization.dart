import 'package:flutter/material.dart';
import 'package:kobza/localization/translations.i69n.dart';

const _supportedLocales = ['uk'];

class AppLocalizations {
  const AppLocalizations(this.translations);

  final Translations translations;

  static final _translations = <String, Translations Function()>{
    'uk': () => const Translations(),
  };

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _LocalizationsDelegate();

  static final List<Locale> supportedLocales =
      _supportedLocales.map(Locale.new).toList();

  static Future<AppLocalizations> load(Locale locale) =>
      Future.value(AppLocalizations(_translations[locale.languageCode]!()));

  static Translations of(BuildContext context) =>
      Localizations.of<AppLocalizations>(context, AppLocalizations)!
          .translations;
}

class _LocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _LocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      _supportedLocales.contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) => false;
}
