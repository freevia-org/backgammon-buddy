import 'package:aigammon_app/tutor/coaching.dart';
import 'package:aigammon_app/tutor/move_assessment.dart';
import 'package:backgammon_core/backgammon_core.dart';
import 'package:engine_bindings/engine_bindings.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('equivalent checker paths explain the assessed result', () {
    final points = List<int>.filled(24, 0)..[23] = 1;
    final before = GameState.testState(
        board: BoardState(points: points, whiteOff: 14),
        turn: Player.white,
        phase: GamePhase.moving,
        dice: Dice(4, 2));
    final played = Move(const [CheckerMove(23, 21), CheckerMove(21, 17)]);
    final canonical = Move(const [CheckerMove(23, 19), CheckerMove(19, 17)]);
    final assessment =
        MoveAssessment(played: played, best: canonical, equityLoss: 0, ranked: [
      ScoredMove(
          move: canonical,
          probabilities: const Probabilities(
              win: .5,
              winGammon: 0,
              winBackgammon: 0,
              loseGammon: 0,
              loseBackgammon: 0))
    ]);
    expect(MoveExplanation.forAssessment(before, assessment), isNotNull);
  });

  test('cube response and forced pass prompts precede bar instructions', () {
    final points = List<int>.filled(24, 0);
    for (var i = 18; i < 24; i++) {
      points[i] = -2;
    }
    final board = BoardState(points: points, whiteBar: 1);
    expect(
        positionCommentary(GameState.testState(
            board: board, turn: Player.white, phase: GamePhase.cubeOffered)),
        contains('take or pass'));
    expect(
        positionCommentary(GameState.testState(
            board: board,
            turn: Player.white,
            phase: GamePhase.moving,
            dice: Dice(3, 1))),
        contains('forced pass'));
  });

  GameState position(BoardState board, Player side) => GameState.testState(
        board: board,
        turn: side,
        phase: GamePhase.moving,
        dice: Dice(3, 1),
      );

  test(
    'board observations are symmetric for either player and recompute hits',
    () {
      final points = List<int>.filled(24, 0);
      points[5] = 2;
      points[2] = -1;
      final white = BoardState(points: points, whiteOff: 13, blackOff: 14);
      final move = Move(const [CheckerMove(5, 2), CheckerMove(5, 4)]);
      final mirroredMove = Move(const [
        CheckerMove(18, 21),
        CheckerMove(18, 19),
      ]);
      final a = MoveExplanation.describeMove(
        position(white, Player.white),
        move,
      );
      final b = MoveExplanation.describeMove(
        position(white.mirrored(), Player.black),
        mirroredMove,
      );
      expect(a, b);
      expect(a.join(' '), contains('Hits 1 opposing checker'));
      expect(a.join(' '), contains('Leaves 2 blots'));
      expect(a.join(' '), contains('Gives up made point 6'));
    },
  );

  test(
    'explains an equity preference without conflating it with win chance',
    () {
      final before = position(BoardState.initial(), Player.white);
      final best = ScoredMove(
        move: before.legalMoves.first,
        probabilities: const Probabilities(
          win: .55,
          winGammon: .3,
          winBackgammon: .01,
          loseGammon: .05,
          loseBackgammon: 0,
        ),
      );
      final alternative = ScoredMove(
        move: before.legalMoves.last,
        probabilities: const Probabilities(
          win: .60,
          winGammon: .05,
          winBackgammon: 0,
          loseGammon: .10,
          loseBackgammon: 0,
        ),
      );
      final explanation = MoveExplanation.forCandidate(
        before,
        alternative,
        best,
      );
      expect(explanation.verdict, contains('0.210 less equity'));
      expect(explanation.comparison, contains('5.0 percentage points lower'));
      expect(explanation.estimate, contains('60.0% wins'));
      expect(MoveExplanation.limitations, contains('not the neural engine'));
    },
  );

  test('a forced pass is described without a quality judgement', () {
    final points = List<int>.filled(24, 0);
    for (var i = 18; i < 24; i++) {
      points[i] = -2;
    }
    final before = position(
      BoardState(points: points, whiteBar: 1),
      Player.white,
    );
    expect(MoveExplanation.describeMove(before, Move.none), [
      'No legal checker play: the turn must pass.',
    ]);
  });
}
