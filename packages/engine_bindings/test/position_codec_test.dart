import 'package:backgammon_core/backgammon_core.dart';
import 'package:engine_bindings/engine_bindings.dart';
import 'package:test/test.dart';

void main() {
  // Golden from wildbg's own C API docs (starting position, mover's view).
  const wildbgStart = [
    0, -2, 0, 0, 0, 0, 5, 0, 3, 0, 0, 0, //
    -5, 5, 0, 0, 0, -3, 0, -5, 0, 0, 0, 0, 2, 0,
  ];

  test('white mover: starting position matches wildbg golden array', () {
    expect(encodePips(BoardState.initial(), Player.white), wildbgStart);
  });

  test('black mover: symmetric start encodes identically', () {
    expect(encodePips(BoardState.initial(), Player.black), wildbgStart);
  });

  test('bars are encoded at indices 25 (mover) and 0 (opponent, negative)', () {
    final b = BoardState(points: List.filled(24, 0), whiteBar: 2, blackBar: 1);
    final whiteView = encodePips(b, Player.white);
    expect(whiteView[25], 2);
    expect(whiteView[0], -1);
    final blackView = encodePips(b, Player.black);
    expect(blackView[25], 1);
    expect(blackView[0], -2);
  });

  test('asymmetric position mirrors correctly for the black mover', () {
    // Lone white checker on White's 24-point (index 23).
    final pts = List<int>.filled(24, 0);
    pts[23] = 1;
    final b = BoardState(points: pts);
    // White mover: that checker is on wildbg pip 24.
    expect(encodePips(b, Player.white)[24], 1);
    // Black mover: mirrored — the white checker is the OPPONENT on pip 1.
    expect(encodePips(b, Player.black)[1], -1);
  });

  test('rejects checker counts that would overflow the native i8 encoding', () {
    final points = List<int>.filled(24, 0);
    points[0] = 256; // would narrow to zero in the native shim
    final board = BoardState(points: points);

    expect(() => encodePips(board, Player.white), throwsArgumentError);
  });

  test('accepts the native checker-count boundary of plus and minus 15', () {
    final points = List<int>.filled(24, 0);
    points[0] = 15;
    points[23] = -15;

    final pips = encodePips(BoardState(points: points), Player.white);
    expect(pips[1], 15);
    expect(pips[24], -15);
  });

  test('rejects a position with more than 15 checkers on one side', () {
    final points = List<int>.filled(24, 0);
    points[0] = 8;
    points[1] = 8;

    expect(
      () => encodePips(BoardState(points: points), Player.white),
      throwsArgumentError,
    );
  });

  // GnuBgEngine.rankMoves keys the core's legal moves by resulting board to
  // canonicalise native moves in one lookup each. That needs BoardState to be
  // a sound map key and legalMoves to yield one move per resulting position.
  test('legal moves map one-to-one onto their resulting boards', () {
    final board = BoardState.initial();
    for (final dice in [Dice(3, 1), Dice(6, 6), Dice(2, 2)]) {
      for (final mover in Player.values) {
        final legal = MoveGenerator.legalMoves(board, mover, dice);
        final byTarget = {for (final m in legal) board.applyMove(mover, m): m};
        expect(byTarget, hasLength(legal.length));
        for (final m in legal) {
          expect(byTarget[board.applyMove(mover, m)], same(m));
        }
      }
    }
  });

  test('decodeDetail maps pips back to CheckerMove for both movers', () {
    // White mover: pip 8 -> 5 is index 7 -> 4.
    expect(decodeDetail(8, 5, Player.white), const CheckerMove(7, 4));
    // Bar entry: from 25; die 3 lands on pip 22 = index 21.
    expect(decodeDetail(25, 22, Player.white),
        const CheckerMove(CheckerMove.bar, 21));
    // Bear-off: to 0.
    expect(decodeDetail(3, 0, Player.white),
        const CheckerMove(2, CheckerMove.off));
    // Black mover: pip p = real index 24 - p.
    expect(decodeDetail(8, 5, Player.black), const CheckerMove(16, 19));
    expect(decodeDetail(25, 22, Player.black),
        const CheckerMove(CheckerMove.bar, 2));
    expect(decodeDetail(3, 0, Player.black),
        const CheckerMove(21, CheckerMove.off));
  });
}
