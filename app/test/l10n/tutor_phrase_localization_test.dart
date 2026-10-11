import 'package:aigammon_app/l10n/app_localizations.dart';
import 'package:aigammon_app/l10n/tutor_phrase_localization.dart';
import 'package:aigammon_app/tutor/tutor_phrase.dart';
import 'package:flutter/widgets.dart' show Locale;
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'every supported language resolves representative live tutor copy',
    () async {
      for (final locale in AppLocalizations.supportedLocales) {
        final strings = await AppLocalizations.delegate.load(locale);
        final position = localizeTutorPhrase(
          strings,
          TutorPhrase(TutorPhraseId.pipCountsAhead, count: 12),
        );
        final stage = localizeTutorPhrase(
          strings,
          TutorPhrase(
            TutorPhraseId.stagedPartialPrompt,
            parts: [TutorPhrase(TutorPhraseId.stagedHit, count: 2)],
          ),
        );

        expect(position, isNotEmpty, reason: locale.toString());
        expect(position, contains('12'), reason: locale.toString());
        expect(stage, isNotEmpty, reason: locale.toString());
        expect(stage, isNot(contains('{part}')), reason: locale.toString());
      }
    },
  );

  test(
    'translated tutor catalog differs from English and preserves plural counts',
    () async {
      final english = await AppLocalizations.delegate.load(const Locale('en'));
      final german = await AppLocalizations.delegate.load(const Locale('de'));

      expect(
        localizeTutorPhrase(english, TutorPhrase(TutorPhraseId.pipCountsLevel)),
        isNot(
          localizeTutorPhrase(
            german,
            TutorPhrase(TutorPhraseId.pipCountsLevel),
          ),
        ),
      );
      expect(
        localizeTutorPhrase(
          german,
          TutorPhrase(TutorPhraseId.stagedHit, count: 2),
        ),
        contains('2'),
      );
    },
  );
}
