import 'package:backgammon_core/backgammon_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:aigammon_app/export/backgammon_match_export.dart';

void main() {
  group('exportMatchSgf', () {
    test(
      'writes GM[6] collection metadata, opening dice, and checker hops',
      () {
        final sgf = exportMatchSgf(_sample());

        expect(sgf, contains('GM[6]FF[4]CA[UTF-8]'));
        expect(
          sgf,
          contains('PW[White]PB[Black]MI[length:5][game:1][ws:0][bs:0]'),
        );
        expect(sgf, contains(';W[63hefc]'));
        expect(sgf, contains('RE[W+1]'));
      },
    );

    test('escapes SGF delimiters and separates game trees', () {
      final match = _sample().copyWithPlayers(white: 'W]\n', black: 'B]');
      final sgf = exportMatchSgf(match);

      expect(sgf, contains(r'PW[W\]\n]'));
      expect(sgf, contains(r'PB[B\]]'));
      expect(RegExp(r'\(;GM\[6\]').allMatches(sgf).length, 2);
    });

    test('writes cube decisions with SGF verbs', () {
      final match = ExportableMatch(
        whitePlayer: 'White',
        blackPlayer: 'Black',
        length: 5,
        games: [
          ExportableGame(
            number: 1,
            whiteScore: 0,
            blackScore: 0,
            isCrawford: false,
            events: [
              const OpeningRollEvent(whiteDie: 6, blackDie: 3),
              DoubleEvent(Player.white),
              TakeEvent(Player.black),
            ],
            result: const GameResult(
              winner: Player.white,
              points: 2,
              outcome: GameOutcome.gammon,
            ),
          ),
        ],
      );

      final sgf = exportMatchSgf(match);
      expect(sgf, contains(';W[double];B[take]'));
      expect(sgf, contains('RE[W+2]'));
    });

    test('keeps black moves in fixed board coordinates', () {
      final match = ExportableMatch(
        whitePlayer: 'White',
        blackPlayer: 'Black',
        length: 5,
        games: [
          ExportableGame(
            number: 1,
            whiteScore: 0,
            blackScore: 0,
            isCrawford: false,
            events: [
              const OpeningRollEvent(whiteDie: 1, blackDie: 6),
              MoveEvent(Player.black, Move([const CheckerMove(24, 6)])),
            ],
            result: null,
          ),
        ],
      );

      expect(exportMatchSgf(match), contains(';B[61yg]'));
    });
  });
}

ExportableMatch _sample() => ExportableMatch(
  whitePlayer: 'White',
  blackPlayer: 'Black',
  length: 5,
  date: DateTime(2026, 10, 14),
  games: [
    ExportableGame(
      number: 1,
      whiteScore: 0,
      blackScore: 0,
      isCrawford: false,
      events: [
        const OpeningRollEvent(whiteDie: 6, blackDie: 3),
        MoveEvent(Player.white, Move([CheckerMove(7, 4), CheckerMove(5, 2)])),
      ],
      result: const GameResult(
        winner: Player.white,
        points: 1,
        outcome: GameOutcome.single,
      ),
    ),
    ExportableGame(
      number: 2,
      whiteScore: 1,
      blackScore: 0,
      isCrawford: false,
      events: const [OpeningRollEvent(whiteDie: 1, blackDie: 5)],
      result: const GameResult(
        winner: Player.black,
        points: 1,
        outcome: GameOutcome.single,
      ),
    ),
  ],
);

extension on ExportableMatch {
  ExportableMatch copyWithPlayers({
    required String white,
    required String black,
  }) => ExportableMatch(
    whitePlayer: white,
    blackPlayer: black,
    length: length,
    games: games,
    date: date,
    event: event,
  );
}
