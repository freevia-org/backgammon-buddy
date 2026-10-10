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
      dice: Dice(4, 2),
    );
    final played = Move(const [CheckerMove(23, 21), CheckerMove(21, 17)]);
    final canonical = Move(const [CheckerMove(23, 19), CheckerMove(19, 17)]);
    final assessment = MoveAssessment(
      played: played,
      best: canonical,
      equityLoss: 0,
      ranked: [
        ScoredMove(
          move: canonical,
          probabilities: const Probabilities(
            win: .5,
            winGammon: 0,
            winBackgammon: 0,
            loseGammon: 0,
            loseBackgammon: 0,
          ),
        ),
      ],
    );
    expect(MoveExplanation.forAssessment(before, assessment), isNotNull);
  });

  test('malformed cached and in-memory moves cannot crash Explain', () {
    final points = List<int>.filled(24, 0)..[23] = 1;
    final before = GameState.testState(
      board: BoardState(points: points, whiteOff: 14),
      turn: Player.white,
      phase: GamePhase.moving,
      dice: Dice(4, 2),
    );
    final legal = before.legalMoves.first;
    final scored = ScoredMove(
      move: legal,
      probabilities: const Probabilities(
        win: .5,
        winGammon: 0,
        winBackgammon: 0,
        loseGammon: 0,
        loseBackgammon: 0,
      ),
    );
    final valid = MoveAssessment(
      played: legal,
      best: legal,
      equityLoss: 0,
      ranked: [scored],
    );
    final corrupted = valid.toJson()
      ..['played'] = [
        [99, 21, false],
      ];

    expect(
      () => MoveAssessment.fromJson(corrupted),
      throwsA(isA<FormatException>()),
    );
    expect(
      MoveExplanation.forAssessment(
        before,
        MoveAssessment(
          played: Move(const [CheckerMove(99, 21)]),
          best: legal,
          equityLoss: 0,
          ranked: [scored],
        ),
      ),
      isNull,
    );
  });

  test('cube response and forced pass prompts precede bar instructions', () {
    final points = List<int>.filled(24, 0);
    for (var i = 18; i < 24; i++) {
      points[i] = -2;
    }
    final board = BoardState(points: points, whiteBar: 1);
    expect(
      positionCommentary(
        GameState.testState(
          board: board,
          turn: Player.white,
          phase: GamePhase.cubeOffered,
        ),
      ),
      contains('take or pass'),
    );
    expect(
      positionCommentary(
        GameState.testState(
          board: board,
          turn: Player.white,
          phase: GamePhase.moving,
          dice: Dice(3, 1),
        ),
      ),
      contains('forced pass'),
    );
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
      expect(a.join(' '), contains('Leaves 2 exposed single checkers'));
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
      expect(explanation.verdict, 'The engine prefers another play here.');
      expect(explanation.estimate, contains('0.210 equity'));
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

  test(
    'current-position teaching mirrors without turning a pip lead into a win',
    () {
      final board = BoardState(
        points: List<int>.filled(24, 0)
          ..[4] = 4
          ..[18] = 2
          ..[10] = -3,
      );
      final a = PositionCoaching.forState(position(board, Player.white));
      final b = PositionCoaching.forState(
        position(board.mirrored(), Player.black),
      );
      expect(a.summary, b.summary);
      expect(a.plan, b.plan);
      expect(a.reasons, b.reasons);
      expect(a.summary, contains('anchor on 19'));
      expect(a.plan, contains('safe foothold'));
      expect(a.reasons.join(' '), isNot(contains('%')));
    },
  );

  test('a sole legal result is forced rather than praised as best', () {
    final board = BoardState(
      points: List<int>.filled(24, 0)
        ..[23] = 1
        ..[0] = -2,
      whiteOff: 14,
      blackOff: 13,
    );
    final state = GameState.testState(
      board: board,
      turn: Player.white,
      phase: GamePhase.moving,
      dice: Dice(4, 2),
    );
    expect(state.legalMoves, hasLength(1));
    final scored = ScoredMove(
      move: state.legalMoves.single,
      probabilities: const Probabilities(
        win: .5,
        winGammon: 0,
        winBackgammon: 0,
        loseGammon: 0,
        loseBackgammon: 0,
      ),
    );
    final explanation = MoveExplanation.forCandidate(state, scored, scored);
    expect(explanation.verdict, contains('not graded'));
    expect(explanation.verdict, isNot(contains('top choice')));
    expect(explanation.comparison, isNull);
    expect(
      PositionCoaching.forState(state).plan,
      contains('no choice to grade'),
    );
  });

  test(
    'partial staging never receives a full-turn verdict or reply forecast',
    () {
      final state = position(BoardState.initial(), Player.white);
      final move = state.legalMoves.first;
      final prefix = Move([move.checkerMoves.first]);
      for (final claimedComplete in [false, true]) {
        final text = stagedMoveCommentary(
          state,
          prefix,
          isComplete: claimedComplete,
        );
        expect(text, contains('remaining playable dice'));
        expect(text, isNot(contains('36 rolls')));
        expect(text, isNot(contains('top choice')));
        expect(text, isNot(contains('Confirm commits')));
      }
      expect(
        stagedMoveCommentary(state, move, isComplete: true),
        contains('full play is staged; Confirm commits'),
      );
      expect(
        stagedMoveCommentary(
          state,
          Move(const [CheckerMove(0, 23)]),
          isComplete: true,
        ),
        'Start a legal play to see commentary.',
      );
    },
  );

  test('staged facts mirror for both players and cannot invent a hit flag', () {
    final board = BoardState(
      points: List<int>.filled(24, 0)
        ..[5] = 2
        ..[2] = -1,
      whiteOff: 13,
      blackOff: 14,
    );
    final white = position(board, Player.white);
    final black = position(board.mirrored(), Player.black);
    final a = stagedMoveCommentary(
      white,
      Move(const [CheckerMove(5, 2)]),
      isComplete: false,
    );
    final b = stagedMoveCommentary(
      black,
      Move(const [CheckerMove(18, 21)]),
      isComplete: false,
    );
    expect(a, b);
    expect(a, contains('hit 1 opposing checker'));
    expect(a, contains('remaining playable dice'));
  });

  test('reply scenarios obey a closed board and forced bar entry', () {
    final points = List<int>.filled(24, 0)
      ..[10] = 1
      ..[8] = -1;
    for (var i = 0; i < 6; i++) {
      points[i] = 2;
    }
    final state = position(
      BoardState(points: points, blackBar: 1),
      Player.white,
    );
    final move = Move(const [CheckerMove(10, 7), CheckerMove(7, 6)]);
    final text = MoveExplanation.describeMove(state, move).join(' ');
    expect(text, contains('No legal next roll'));
    expect(text, contains('cannot re-enter until a point opens'));
    expect(text, isNot(contains('For example')));
  });

  test('bearing off with contact keeps the hit-risk tradeoff in the plan', () {
    final board = BoardState(
      points: List<int>.filled(24, 0)
        ..[2] = 2
        ..[0] = -1,
      whiteOff: 13,
      blackOff: 14,
    );
    final state = position(board, Player.white);
    final move = state.legalMoves.firstWhere(
      (m) => m.checkerMoves.any((hop) => hop.to == CheckerMove.off),
    );
    final scored = ScoredMove(
      move: move,
      probabilities: const Probabilities(
        win: .8,
        winGammon: 0,
        winBackgammon: 0,
        loseGammon: 0,
        loseBackgammon: 0,
      ),
    );
    final explanation = MoveExplanation.forCandidate(state, scored, scored);
    expect(explanation.plan, contains('contact'));
    expect(explanation.plan, contains('possible target'));
  });

  test('comparison explains the home-board and hit-exposure tradeoff', () {
    final state = position(BoardState.initial(), Player.white);
    final makeFive = state.legalMoves.firstWhere(
      (move) => state.board.applyMove(Player.white, move).points[4] == 2,
    );
    final split = state.legalMoves.firstWhere(
      (move) => state.board.applyMove(Player.white, move).points[22] == 1,
    );
    ScoredMove scored(Move move, double win) => ScoredMove(
      move: move,
      probabilities: Probabilities(
        win: win,
        winGammon: 0,
        winBackgammon: 0,
        loseGammon: 0,
        loseBackgammon: 0,
      ),
    );
    final explanation = MoveExplanation.forCandidate(
      state,
      scored(split, .5),
      scored(makeFive, .6),
    );
    expect(explanation.comparison, contains('home-board points'));
    expect(explanation.comparison, contains('entry points after a hit'));
    expect(explanation.comparison, contains('reply hit'));
    expect(explanation.summaryReason, contains('home-board points'));
    expect(explanation.summaryReason.length, lessThanOrEqualTo(100));
    final best = MoveExplanation.forCandidate(
      state,
      scored(makeFive, .6),
      scored(makeFive, .6),
    );
    expect(best.plan, contains('Strengthen your home board'));
    expect(best.summaryReason, contains('new home-board point'));
    expect(best.summaryReason.length, lessThanOrEqualTo(100));
    expect(best.summaryReason, isNot(best.plan));
    expect(explanation.observations.join(' '), contains('For example'));
  });
}
