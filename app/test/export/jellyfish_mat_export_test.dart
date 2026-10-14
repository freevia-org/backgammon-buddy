import 'package:backgammon_core/backgammon_core.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:aigammon_app/export/backgammon_match_export.dart';
import 'package:aigammon_app/export/jellyfish_mat_export.dart';

void main() {
  group('exportMatchMat', () {
    test('writes a match header and aligned player turns in MAT notation', () {
      final match = ExportableMatch(
        whitePlayer: 'Alice',
        blackPlayer: 'Buddy',
        length: 5,
        date: DateTime.utc(2026, 3, 7),
        event: 'Practice match',
        games: [
          ExportableGame(
            number: 1,
            whiteScore: 2,
            blackScore: 1,
            isCrawford: false,
            events: [
              const OpeningRollEvent(whiteDie: 5, blackDie: 3),
              MoveEvent(
                Player.white,
                Move([CheckerMove(12, 7), CheckerMove(5, 2)]),
              ),
              const RollEvent(Player.black, 4, 3),
              MoveEvent(
                Player.black,
                Move([CheckerMove(11, 15), CheckerMove(23, 20, isHit: true)]),
              ),
            ],
            result: const GameResult(
              winner: Player.white,
              points: 1,
              outcome: GameOutcome.single,
            ),
          ),
        ],
      );

      final text = exportMatchMat(match);
      expect(text, contains('; [Player 1 "Alice"]'));
      expect(text, contains('; [Player 2 "Buddy"]'));
      expect(text, contains('; [EventDate "2026.03.07"]'));
      expect(text, contains('5 point match'));
      expect(text, contains('Game 1'));
      expect(text, contains('Alice : 2  Buddy : 1'));
      expect(text, contains('1) 53: 13/8 6/3'));
      expect(text, contains('43: 13/9 1/4*'));
      expect(text, contains('Alice wins 1 point'));
    });

    test(
      'marks Crawford games and states that MAT may discard that metadata',
      () {
        final match = ExportableMatch(
          whitePlayer: 'A',
          blackPlayer: 'B',
          length: 7,
          games: [
            const ExportableGame(
              number: 3,
              whiteScore: 6,
              blackScore: 6,
              isCrawford: true,
              events: [],
              result: null,
            ),
          ],
        );

        final text = exportMatchMat(match);
        expect(text, contains('; Crawford game'));
        expect(text, contains('MAT readers may ignore this marker'));
      },
    );

    test('places a Black opening win first and White in the next MAT row', () {
      final match = ExportableMatch(
        whitePlayer: 'White',
        blackPlayer: 'Black',
        length: 3,
        games: [
          ExportableGame(
            number: 1,
            whiteScore: 0,
            blackScore: 0,
            isCrawford: false,
            events: [
              const OpeningRollEvent(whiteDie: 3, blackDie: 5),
              MoveEvent(Player.black, Move([CheckerMove(11, 15)])),
              const RollEvent(Player.white, 2, 1),
              MoveEvent(Player.white, Move([CheckerMove(12, 10)])),
            ],
            result: null,
          ),
        ],
      );

      final row = exportMatchMat(
        match,
      ).split('\n').singleWhere((line) => line.startsWith(' 1)'));
      expect(row, contains('53: 13/9'));
      final nextRow = exportMatchMat(
        match,
      ).split('\n').singleWhere((line) => line.startsWith(' 2)'));
      expect(row, isNot(contains('21:')));
      expect(nextRow, contains('21: 13/11'));
    });

    test('preserves resignation outcome in text and discloses lost detail', () {
      final match = ExportableMatch(
        whitePlayer: 'A',
        blackPlayer: 'B',
        length: 3,
        games: [
          ExportableGame(
            number: 1,
            whiteScore: 0,
            blackScore: 0,
            isCrawford: false,
            events: const [
              ResignOfferEvent(Player.black, ResignValue.gammon),
              ResignAcceptEvent(Player.white),
            ],
            result: const GameResult(
              winner: Player.black,
              points: 2,
              outcome: GameOutcome.resignation,
            ),
          ),
        ],
      );

      final text = exportMatchMat(match);
      expect(text, contains('B wins 2 points by resignation'));
      expect(text, contains('offer value and response sequence may be lost'));
    });

    test('rejects an empty match and a move without a matching roll', () {
      expect(
        () => exportMatchMat(
          const ExportableMatch(
            whitePlayer: 'A',
            blackPlayer: 'B',
            length: 1,
            games: [],
          ),
        ),
        throwsArgumentError,
      );
      expect(
        () => exportMatchMat(
          ExportableMatch(
            whitePlayer: 'A',
            blackPlayer: 'B',
            length: 1,
            games: [
              ExportableGame(
                number: 1,
                whiteScore: 0,
                blackScore: 0,
                isCrawford: false,
                events: [
                  MoveEvent(Player.white, Move([CheckerMove(12, 8)])),
                ],
                result: null,
              ),
            ],
          ),
        ),
        throwsFormatException,
      );
    });
  });
}
