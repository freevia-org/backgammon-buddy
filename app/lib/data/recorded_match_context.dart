import 'package:backgammon_core/backgammon_core.dart';

import 'database.dart';
import 'match_repository.dart';

/// Reconstructs the score before a recorded game from a complete ordered
/// sequence of earlier results. Current/final match totals are never used as
/// a substitute for a missing historical score.
Future<MatchState?> matchBeforeRecordedGame(
    MatchRepository repo, GameRow row) async {
  final match = await repo.loadMatch(row.matchId);
  if (match.matchLength <= 0 || row.gameNumber < 1) return null;
  final earlier = (await repo.gamesFor(row.matchId))
      .where((game) => game.gameNumber < row.gameNumber)
      .toList();
  if (earlier.length != row.gameNumber - 1) return null;
  var score = MatchState(matchLength: match.matchLength);
  for (var i = 0; i < earlier.length; i++) {
    final game = earlier[i];
    if (game.gameNumber != i + 1 ||
        score.isMatchOver ||
        game.resultWinner == null ||
        game.resultPoints == null ||
        game.resultPoints! <= 0 ||
        game.resultOutcome == null ||
        game.isCrawford != score.isCrawfordNext) {
      return null;
    }
    try {
      score = score.applyResult(GameResult(
        winner: Player.values.byName(game.resultWinner!),
        points: game.resultPoints!,
        outcome: GameOutcome.values.byName(game.resultOutcome!),
      ));
    } on ArgumentError {
      return null;
    }
  }
  return score.isMatchOver || row.isCrawford != score.isCrawfordNext
      ? null
      : score;
}
