// Exercises the production Dart ranking and match-cube adapter unchanged.
import 'dart:convert';
import 'dart:io';

import 'package:backgammon_core/backgammon_core.dart';
import 'package:engine_bindings/engine_bindings.dart';

BoardState fromReference(List<dynamic> b) {
  final p = b.cast<int>();
  return BoardState(
    points: p.sublist(1, 25),
    blackBar: p[0],
    whiteBar: p[25],
    whiteOff: 15 - p[25] - p.sublist(1, 25).where((n) => n > 0).fold(0, (a, b) => a + b),
    blackOff: 15 - p[0] + p.sublist(1, 25).where((n) => n < 0).fold(0, (a, b) => a + b),
  );
}

List<int> toReference(BoardState b) => [b.blackBar, ...b.points, b.whiteBar];

List<double> probabilities(Probabilities p) =>
    [p.win, p.winGammon, p.winBackgammon, p.loseGammon, p.loseBackgammon];

void main(List<String> args) {
  if (args.length != 4) {
    stderr.writeln('Usage: evaluate.dart sample.json library-path nets-directory output.jsonl');
    exitCode = 2;
    return;
  }
  final sample = jsonDecode(File(args[0]).readAsStringSync()) as Map<String, dynamic>;
  final startup = Stopwatch()..start();
  final engine = Engine.open(libraryPath: args[1], netsPath: args[2]);
  final out = File(args[3]).openSync(mode: FileMode.write);
  try {
    out.writeStringSync('${jsonEncode({'kind': 'metadata', 'startup_ms': startup.elapsedMicroseconds / 1000})}\n');
    // Warm up both models before collecting per-decision timings.
    engine.evaluate(BoardState.initial(), Player.white);
    var index = 0;
    for (final raw in sample['decisions'] as List) {
      final d = raw as Map<String, dynamic>;
      final board = fromReference(d['board'] as List);
      if (board.checkerCount(Player.white) != 15 || board.checkerCount(Player.black) != 15) {
        throw StateError('Malformed reference board ${d['sample_id']}');
      }
      final timer = Stopwatch()..start();
      final result = <String, dynamic>{'sample_id': d['sample_id'], 'kind': d['kind']};
      if (d['kind'] == 'checker') {
        final dice = (d['dice'] as List).cast<int>();
        final ranked = engine.rankMoves(board, Player.white, Dice(dice[0], dice[1]));
        timer.stop();
        result['latency_ms'] = timer.elapsedMicroseconds / 1000;
        result['moves'] = [for (final move in ranked) {
          'board': toReference(board.applyMove(Player.white, move.move)),
          'equity': move.equity,
          'probs': probabilities(move.probabilities),
        }];
        if (ranked.isEmpty) throw StateError('No moves for sampled checker decision');
        result['chosen_board'] = toReference(board.applyMove(Player.white, ranked.first.move));
        // An explicitly exploratory adapter; it is not the deployed AI policy.
        if (d['corpus'] == 'match5') {
          final adjusted = [...ranked]..sort((a, b) => matchEquityOfDistribution(
            b.probabilities, moverAway: d['away1'] as int,
            opponentAway: d['away2'] as int, stake: d['cube_value'] as int,
            crawfordPlayed: !(d['is_crawford'] as bool) &&
                ((d['away1'] as int) == 1 || (d['away2'] as int) == 1),
          ).compareTo(matchEquityOfDistribution(
            a.probabilities, moverAway: d['away1'] as int,
            opponentAway: d['away2'] as int, stake: d['cube_value'] as int,
            crawfordPlayed: !(d['is_crawford'] as bool) &&
                ((d['away1'] as int) == 1 || (d['away2'] as int) == 1),
          )));
          result['exploratory_score_aware_board'] = toReference(board.applyMove(Player.white, adjusted.first.move));
        }
      } else {
        final p = engine.evaluate(board, Player.white);
        result['probs'] = probabilities(p);
        if (d['corpus'] == 'match5') {
          final advice = const MatchCubeAdvisor().advise(
            probs: p, moverAway: d['away1'] as int, opponentAway: d['away2'] as int,
            cubeValue: d['cube_value'] as int,
            crawfordPlayed: !(d['is_crawford'] as bool) &&
                ((d['away1'] as int) == 1 || (d['away2'] as int) == 1),
          );
          result.addAll({'should_double': advice.shouldDouble, 'should_take': advice.shouldTake,
            'equity_nd_mwc': advice.equityNoDouble, 'equity_dt_mwc': advice.equityDoubleTake,
            'equity_dp_mwc': advice.equityDoubleDrop, 'policy': 'production MatchCubeAdvisor'});
        } else {
          final advice = engine.cubeInfo(board, Player.white);
          result.addAll({'should_double': advice.shouldDouble, 'should_take': advice.shouldAccept,
            'equity_nd': advice.equityNoDouble, 'equity_dt': advice.equityDoubleTake,
            'policy': 'native centered-cube money model; not app match policy'});
        }
        timer.stop();
        result['latency_ms'] = timer.elapsedMicroseconds / 1000;
      }
      out.writeStringSync('${jsonEncode(result)}\n');
      if (++index % 50 == 0) stdout.writeln('wildbg: $index decisions');
    }
  } finally {
    out.closeSync();
    engine.dispose();
  }
}
