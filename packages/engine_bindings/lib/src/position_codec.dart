import 'package:backgammon_core/backgammon_core.dart';

/// Encodes a board as wildbg's 26-int pip array from [mover]'s perspective:
/// index 0 = opponent's bar (negative), 1-24 = pips (mover positive, moving
/// 24 -> 1), index 25 = mover's bar.
List<int> encodePips(BoardState board, Player mover) {
  final n = mover == Player.white ? board : board.mirrored();
  final pips = [
    -n.blackBar,
    ...n.points,
    n.whiteBar,
  ];
  // The native shim receives these as c_int, then narrows each value to i8
  // before Wildbg validates the position. Reject malformed Dart positions
  // before that cast: otherwise values such as 256 can wrap to 0 and produce
  // plausible analysis for a different board. Partial test/analysis positions
  // are supported (unrepresented checkers are treated as borne off), but no
  // side may have more than 15 checkers represented on the board or bar.
  var moverCheckers = 0;
  var opponentCheckers = 0;
  for (final pip in pips) {
    if (pip.abs() > 15) {
      throw ArgumentError.value(
          pip, 'board', 'each point and bar count must be at most 15');
    }
    if (pip > 0) {
      moverCheckers += pip;
    } else {
      opponentCheckers -= pip;
    }
  }
  if (moverCheckers > 15 || opponentCheckers > 15) {
    throw ArgumentError.value(
        board, 'board', 'a player cannot have more than 15 checkers');
  }
  return pips;
}

/// Maps one wildbg move detail (from: 1-25 where 25 = bar; to: 0-24 where
/// 0 = off) back to a [CheckerMove] in real White-perspective coordinates.
/// Hit flags are not reconstructed — BoardState.applyMove recomputes hits.
///
/// Assumes in-contract input (from ∈ [1,25], to ∈ [0,24]); out-of-contract
/// input yields undefined results, matching the package's assumed-legal
/// philosophy.
CheckerMove decodeDetail(int from, int to, Player mover) {
  if (mover == Player.white) {
    return CheckerMove(
      from == 25 ? CheckerMove.bar : from - 1,
      to == 0 ? CheckerMove.off : to - 1,
    );
  }
  return CheckerMove(
    from == 25 ? CheckerMove.bar : 24 - from,
    to == 0 ? CheckerMove.off : 24 - to,
  );
}
