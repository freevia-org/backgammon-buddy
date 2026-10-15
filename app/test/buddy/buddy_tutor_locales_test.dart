import 'package:aigammon_app/buddy/speaker.dart';
import 'package:aigammon_app/l10n/app_localizations.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'Buddy tutor dialogue resolves cleanly in every supported locale',
    () async {
      final english = await AppLocalizations.delegate.load(
        AppLocalizations.supportedLocales.firstWhere(
          (locale) => locale.languageCode == 'en',
        ),
      );

      for (final locale in AppLocalizations.supportedLocales) {
        final strings = await AppLocalizations.delegate.load(locale);
        final preferred = strings.buddyTutorPreferredMove(
          '24/18',
          strings.buddyTutorBarDifference('1', '2'),
        );
        final gameEnd = strings.buddySpeechGameWinnerYou(
          '2 ${strings.tutorMovePointPlural}',
        );

        expect(
          strings.buddySpeechIllegalPlay.trim(),
          isNotEmpty,
          reason: '${locale.languageCode}: illegal-play prompt',
        );
        expect(
          preferred.trim(),
          isNotEmpty,
          reason: '${locale.languageCode}: move explanation',
        );
        expect(
          preferred,
          contains('24/18'),
          reason: '${locale.languageCode}: move placeholder',
        );
        expect(
          preferred,
          contains('1'),
          reason: '${locale.languageCode}: best-value placeholder',
        );
        expect(
          preferred,
          contains('2'),
          reason: '${locale.languageCode}: played-value placeholder',
        );
        expect(
          preferred,
          isNot(RegExp(r'\{(?:move|reason|best|played)\}')),
          reason: '${locale.languageCode}: no untranslated placeholder',
        );
        expect(
          gameEnd,
          contains('2'),
          reason: '${locale.languageCode}: game-result placeholder',
        );
        expect(
          gameEnd,
          isNot(RegExp(r'\{points\}')),
          reason: '${locale.languageCode}: no game-result placeholder leak',
        );
        expect(
          buddySpeechLocaleTag(locale.languageCode),
          isNotEmpty,
          reason: '${locale.languageCode}: native voice tag',
        );
      }

      final french = await AppLocalizations.delegate.load(
        AppLocalizations.supportedLocales.firstWhere(
          (locale) => locale.languageCode == 'fr',
        ),
      );
      expect(
        french.buddySpeechIllegalPlay,
        isNot(english.buddySpeechIllegalPlay),
      );
    },
  );
}
