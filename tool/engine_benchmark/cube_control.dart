// Controlled diagnostic: use reference probabilities with the unchanged app
// cube adapter to distinguish adapter approximation from neural-net error.
import 'dart:convert';
import 'dart:io';
import 'package:engine_bindings/engine_bindings.dart';

void main(List<String> args) {
  final sample = jsonDecode(File(args[0]).readAsStringSync()) as Map<String, dynamic>;
  final records = <Map<String, dynamic>>[];
  for (final raw in sample['decisions'] as List) {
    final d = raw as Map<String, dynamic>;
    if (d['kind'] != 'cube' || d['corpus'] != 'match5') continue;
    final values = (d['probs'] as List).cast<num>();
    final p = Probabilities(win: values[0].toDouble(), winGammon: values[1].toDouble(),
      winBackgammon: values[2].toDouble(), loseGammon: values[3].toDouble(),
      loseBackgammon: values[4].toDouble());
    final advice = const MatchCubeAdvisor().advise(
      probs: p, moverAway: d['away1'] as int, opponentAway: d['away2'] as int,
      cubeValue: d['cube_value'] as int,
      crawfordPlayed: !(d['is_crawford'] as bool) &&
          ((d['away1'] as int) == 1 || (d['away2'] as int) == 1),
    );
    records.add({'sample_id': d['sample_id'], 'should_double': advice.shouldDouble,
      'should_take': advice.shouldTake, 'reference_double': d['should_double_ref'],
      'reference_take': d['should_take_ref'], 'has_double': d['has_double'], 'has_take': d['has_take']});
  }
  File(args[1]).writeAsStringSync(const JsonEncoder.withIndent('  ').convert(records));
  stdout.writeln('Reference-probability cube control: ${records.length} positions');
}
