import 'package:aigammon_app/l10n/app_localizations.dart';
import 'package:aigammon_app/l10n/move_explanation_localization.dart';
import 'package:aigammon_app/l10n/tutor_phrase_localization.dart';
import 'package:aigammon_app/tutor/move_explanation_copy.dart';
import 'package:aigammon_app/tutor/tutor_phrase.dart';
import 'package:backgammon_core/backgammon_core.dart';
import 'package:flutter/widgets.dart' show Locale;
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'every supported language resolves representative live tutor copy',
    () async {
      for (final locale in AppLocalizations.supportedLocales) {
        final strings = await AppLocalizations.delegate.load(locale);
        for (final id in TutorPhraseId.values) {
          final phrase = localizeTutorPhrase(
            strings,
            TutorPhrase(
              id,
              count: 12,
              otherCount: 3,
              point: 4,
              points: const [4, 5, 8],
              ahead: true,
              parts: [TutorPhrase(TutorPhraseId.stagedHit, count: 2)],
            ),
          );
          expect(phrase, isNotEmpty, reason: '$locale.$id');
          expect(
            phrase,
            isNot(RegExp(r'\{[A-Za-z_]\w*\}')),
            reason: '$locale.$id leaked a placeholder',
          );
        }

        final arguments = <String, Object?>{
          'count': 3,
          'previousCount': 2,
          'total': 36,
          'exampleDieOne': 3,
          'exampleDieTwo': 5,
          'examplePoint': 8,
          'closedPoints': 4,
          'playedCount': 2,
          'bestCount': 3,
          'point': 6,
          'points': <int>[4, 5, 8],
          'previousPoints': <int>[3, 5],
          'bestPoints': <int>[4, 5],
          'playedPoints': <int>[3],
          'homePoints': 4,
          'homePointsForExtraGuidance': 3,
          'gammonsCanChangeRanking': true,
          'matchScoreAware': true,
          'winChanceDeltaPercentagePoints': 1.25,
          'winChanceIsHigher': true,
          'closesMore': true,
          'reducesRisk': true,
          'allClosed': true,
          'forced': true,
          'win': 0.5,
          'winGammon': 0.1,
          'loseGammon': 0.1,
          'side': Player.white,
        };
        for (final id in MoveExplanationCopyId.values) {
          final text = localizeMoveExplanationCopy(
            strings,
            MoveExplanationCopy(id, arguments: arguments),
          );
          expect(text, isNotEmpty, reason: '$locale.$id');
          expect(
            text,
            isNot(RegExp(r'\{[A-Za-z_]\w*\}')),
            reason: '$locale.$id leaked a placeholder',
          );
        }
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
