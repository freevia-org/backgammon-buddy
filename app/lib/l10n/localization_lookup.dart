import 'package:flutter/widgets.dart';

import 'app_localizations.dart';
import 'app_localizations_en.dart';

/// Chooses the first supported language from the device's preferred locales.
/// English is the safe fallback when none match.
Locale resolveAppLocale(
  List<Locale>? preferredLocales,
  Iterable<Locale> supportedLocales,
) {
  final supported = supportedLocales.toList(growable: false);
  for (final preferred in preferredLocales ?? const <Locale>[]) {
    for (final candidate in supported) {
      if (preferred.languageCode == candidate.languageCode) return candidate;
    }
  }
  return supportedLocales.firstWhere(
    (locale) => locale.languageCode == 'en',
    orElse: () => supported.first,
  );
}

/// Turns a saved language choice into a supported locale, ignoring stale or
/// malformed values rather than forcing an unknown language at startup.
Locale? savedAppLocale(String? languageTag, List<Locale> supportedLocales) {
  if (languageTag == null || languageTag.trim().isEmpty) return null;
  final languageCode = languageTag.trim().split(RegExp('[-_]')).first;
  for (final locale in supportedLocales) {
    if (locale.languageCode == languageCode) return locale;
  }
  return null;
}

/// Reads the active app strings, falling back to English when a screen is
/// hosted without the app delegate (for example, in an isolated preview or
/// embedder). The application root always registers the generated delegates.
AppLocalizations appLocalizationsOf(BuildContext context) =>
    Localizations.of<AppLocalizations>(context, AppLocalizations) ??
    AppLocalizationsEn();
