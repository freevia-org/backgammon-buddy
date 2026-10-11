import 'package:aigammon_app/l10n/app_localizations.dart';
import 'package:flutter/widgets.dart' show Locale;
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('all published first-wave locale files load the core play strings', () async {
    expect(AppLocalizations.supportedLocales, hasLength(28));

    for (final locale in AppLocalizations.supportedLocales) {
      final strings = await AppLocalizations.delegate.load(locale);
      expect(strings.homeTagline, isNotEmpty, reason: locale.toString());
      expect(strings.playOnline, isNotEmpty, reason: locale.toString());
      expect(strings.confirm, isNotEmpty, reason: locale.toString());
      expect(strings.noMovesPass, isNotEmpty, reason: locale.toString());
    }
  });

  test('language bundles include distinct English, French, and Ukrainian copy',
      () async {
    final english = await AppLocalizations.delegate.load(const Locale('en'));
    final french = await AppLocalizations.delegate.load(const Locale('fr'));
    final ukrainian = await AppLocalizations.delegate.load(const Locale('uk'));

    expect(french.homeTagline, isNot(english.homeTagline));
    expect(ukrainian.homeTagline, isNot(english.homeTagline));
  });
}
