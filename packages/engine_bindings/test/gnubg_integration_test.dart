@Tags(['gnubg'])
library;

import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:test/test.dart';
import 'package:backgammon_core/backgammon_core.dart';
import 'package:engine_bindings/engine_bindings.dart';

BoardState boardFromPips(List raw) {
  final p = raw.cast<int>();
  return BoardState(
      points: p.sublist(1, 25),
      whiteBar: p[25],
      blackBar: p[0],
      whiteOff: 15 -
          p[25] -
          p.sublist(1, 25).where((n) => n > 0).fold(0, (a, b) => a + b),
      blackOff: 15 -
          p[0] +
          p.sublist(1, 25).where((n) => n < 0).fold(0, (a, b) => a + b));
}

AnalysisContext contextFor(Map d) {
  final a = d['away1'] as int? ?? 0, b = d['away2'] as int? ?? 0;
  final length = max(a, b);
  return AnalysisContext(
      cubeValue: d['cube_value'] as int,
      cubeOwner: d['cube_owner'] == 'player'
          ? Player.white
          : d['cube_owner'] == 'opponent'
              ? Player.black
              : null,
      matchLength: length,
      whiteScore: length - a,
      blackScore: length - b,
      crawford: d['is_crawford'] as bool? ?? false,
      jacoby: d['corpus'] == 'money');
}

void main() {
  final library = Platform.environment['GNUBG_LIBRARY'];
  final data = Platform.environment['GNUBG_DATA'];
  final fixtures =
      jsonDecode(File('test/fixtures/gnubg_desktop.json').readAsStringSync())
          as Map;
  group('native GNUbg desktop parity', () {
    late GnuBgEngine engine;
    setUpAll(
        () => engine = GnuBgEngine.open(libraryPath: library, netsPath: data!));
    tearDownAll(() => engine.dispose());
    for (final d in fixtures['decisions'] as List) {
      test(d['sample_id'] as String, () {
        final b = boardFromPips(d['board'] as List),
            ctx = contextFor(d as Map),
            expected = d['expected'] as Map;
        if (d['kind'] == 'checker') {
          final dice = Dice(d['dice'][0] as int, d['dice'][1] as int);
          final moves = engine.rankMoves(b, Player.white, dice, context: ctx);
          final chosen =
              moves.isEmpty ? b : b.applyMove(Player.white, moves.first.move);
          expect(chosen, boardFromPips(expected['chosen_board'] as List));
          for (final move in moves) {
            expect(move.searchPlies, inInclusiveRange(0, 2));
            if (ctx.matchLength > 0) {
              expect(move.matchWinningChance, inInclusiveRange(0.0, 1.0));
            }
          }
        } else {
          final advice = engine.cubeInfo(b, Player.white, context: ctx);
          expect(advice.shouldDouble, expected['should_double']);
          if (expected['should_take'] != null) {
            expect(advice.shouldAccept, expected['should_take']);
          }
          if (ctx.matchLength == 0) {
            expect(advice.equityNoDouble,
                closeTo(expected['equity_nd'] as num, 0.002));
            expect(advice.equityDoubleTake,
                closeTo(expected['equity_dt'] as num, 0.002));
          } else {
            expect(advice.equityNoDouble, inInclusiveRange(0.0, 1.0));
            expect(advice.equityDoubleTake, inInclusiveRange(0.0, 1.0));
            expect(advice.equityDoublePass, inInclusiveRange(0.0, 1.0));
          }
        }
      });
    }
    test('oversized match cube fails before native table indexing', () {
      expect(
          () => engine.evaluate(BoardState.initial(), Player.white,
              context: const AnalysisContext(matchLength: 5, cubeValue: 128)),
          throwsStateError);
    });
    test('played move is assessed at the same search depth as the best move',
        () {
      final d = (fixtures['decisions'] as List).first as Map;
      final board = boardFromPips(d['board'] as List);
      final dice = Dice(d['dice'][0] as int, d['dice'][1] as int);
      final played = MoveGenerator.legalMoves(board, Player.white, dice).last;
      final ranked = engine.rankMoves(board, Player.white, dice,
          context: contextFor(d), playedMove: played);
      final assessed = ranked.firstWhere((m) =>
          board.applyMove(Player.white, m.move) ==
          board.applyMove(Player.white, played));
      expect(assessed.searchPlies, ranked.first.searchPlies);
    });
    test('asymmetric boards and bar moves mirror correctly for Black', () {
      final d = (fixtures['decisions'] as List)
              .firstWhere((d) => d['kind'] == 'checker' && d['board'][0] > 0)
          as Map;
      final board = boardFromPips(d['board'] as List),
          dice = Dice(d['dice'][0] as int, d['dice'][1] as int);
      final white = engine.rankMoves(board, Player.white, dice);
      final black = engine.rankMoves(board.mirrored(), Player.black, dice);
      expect(white.length, black.length);
      if (white.isNotEmpty) {
        expect(board.applyMove(Player.white, white.first.move).mirrored(),
            board.mirrored().applyMove(Player.black, black.first.move));
      }
      expect(
          engine.evaluate(board, Player.white).win,
          closeTo(
              engine.evaluate(board.mirrored(), Player.black).win, 0.00001));
    });
    test('both player orientations give the same opening evaluation', () {
      final b = BoardState.initial();
      expect(engine.evaluate(b, Player.white).win,
          closeTo(engine.evaluate(b, Player.black).win, 0.00001));
    });
    test('isolate preserves match score, rankings and metadata across reopen',
        () async {
      final d = (fixtures['decisions'] as List).firstWhere(
          (d) => d['corpus'] == 'match5' && d['kind'] == 'checker') as Map;
      final b = boardFromPips(d['board'] as List),
          dice = Dice(d['dice'][0] as int, d['dice'][1] as int),
          ctx = contextFor(d);
      for (var i = 0; i < 2; i++) {
        final service = await EngineService.spawn(
            backend: EvaluationEngine.gnubg,
            libraryPath: library,
            netsPath: data!);
        try {
          final moves =
              await service.rankMoves(b, Player.white, dice, context: ctx);
          expect(b.applyMove(Player.white, moves.first.move),
              boardFromPips(d['expected']['chosen_board'] as List));
          expect(moves.first.matchWinningChance, inInclusiveRange(0.0, 1.0));
          expect(moves.first.searchPlies, isNotNull);
        } finally {
          service.dispose();
        }
      }
    });
  },
      skip: library == null || data == null
          ? 'Set GNUBG_LIBRARY and GNUBG_DATA after building the native library'
          : false);
}
