import 'package:aigammon_app/l10n/app_localizations.dart';
import 'package:aigammon_app/l10n/localization_lookup.dart';
import 'package:flutter/widgets.dart' show Locale;
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'all published first-wave locale files load the core play strings',
    () async {
      expect(AppLocalizations.supportedLocales, hasLength(28));
      final missingNumericValues = <String>[];

      for (final locale in AppLocalizations.supportedLocales) {
        final strings = await AppLocalizations.delegate.load(locale);
        expect(strings.homeTagline, isNotEmpty, reason: locale.toString());
        expect(strings.playOnline, isNotEmpty, reason: locale.toString());
        expect(strings.confirm, isNotEmpty, reason: locale.toString());
        expect(strings.noMovesPass, isNotEmpty, reason: locale.toString());
        expect(strings.tutoringStyle, isNotEmpty, reason: locale.toString());
        expect(
          strings.tutorCoachDescription,
          isNotEmpty,
          reason: locale.toString(),
        );
        expect(
          strings.tutorMoreBoardDetails,
          isNotEmpty,
          reason: locale.toString(),
        );
        expect(
          strings.tutorEstimateLimitations,
          isNotEmpty,
          reason: locale.toString(),
        );
        expect(
          strings.tutorForcedPassNoDecision,
          isNotEmpty,
          reason: locale.toString(),
        );
        expect(
          strings.settingsAppLanguage,
          isNotEmpty,
          reason: locale.toString(),
        );
        expect(
          strings.settingsTutorModeHelp,
          isNotEmpty,
          reason: locale.toString(),
        );
        expect(
          strings.settingsBuddyFriendlyHelp,
          isNotEmpty,
          reason: locale.toString(),
        );
        expect(
          strings.settingsAppVersion('1.2.3'),
          contains('1.2.3'),
          reason: locale.toString(),
        );
        for (final (key, value) in [
          ('tutorPhraseStagedHit', strings.tutorPhraseStagedHit(17)),
          ('tutorPhraseStagedBearOff', strings.tutorPhraseStagedBearOff(17)),
          ('tutorMoveObservationHit', strings.tutorMoveObservationHit(17)),
          (
            'tutorMoveObservationBlots',
            strings.tutorMoveObservationBlots(17, 3),
          ),
          (
            'learningGamesNeedingAnalysis',
            strings.learningGamesNeedingAnalysis(17),
          ),
          (
            'tutorMoveObservationBearOff',
            strings.tutorMoveObservationBearOff(17),
          ),
          ('tutorMoveObservationEntry', strings.tutorMoveObservationEntry(17)),
        ]) {
          if (!value.contains('17')) {
            missingNumericValues.add('$locale.$key => $value');
          }
        }
      }
      expect(
        missingNumericValues,
        isEmpty,
        reason:
            'Plural text must retain the quantity:\n${missingNumericValues.join('\n')}',
      );
    },
  );

  test(
    'language bundles include distinct English, French, and Ukrainian copy',
    () async {
      final english = await AppLocalizations.delegate.load(const Locale('en'));
      final french = await AppLocalizations.delegate.load(const Locale('fr'));
      final ukrainian = await AppLocalizations.delegate.load(
        const Locale('uk'),
      );
      final german = await AppLocalizations.delegate.load(const Locale('de'));

      expect(french.homeTagline, isNot(english.homeTagline));
      expect(ukrainian.homeTagline, isNot(english.homeTagline));
      expect(german.settingsAppLanguage, isNot(english.settingsAppLanguage));
      expect(
        german.settingsTutorModeHelp,
        isNot(english.settingsTutorModeHelp),
      );
    },
  );

  test('unsupported system languages fall back to English', () {
    expect(
      resolveAppLocale(const [
        Locale('ar'),
        Locale('en', 'GB'),
      ], AppLocalizations.supportedLocales),
      const Locale('en'),
    );
    expect(
      resolveAppLocale(const [Locale('ar')], AppLocalizations.supportedLocales),
      const Locale('en'),
    );
  });

  test('stale saved language choices safely return to system locale', () {
    expect(savedAppLocale(null, AppLocalizations.supportedLocales), isNull);
    expect(
      savedAppLocale('uk', AppLocalizations.supportedLocales),
      const Locale('uk'),
    );
    expect(savedAppLocale('xx', AppLocalizations.supportedLocales), isNull);
  });
}
