import 'dart:ffi';
import 'dart:io';
import 'package:ffi/ffi.dart';
import 'package:backgammon_core/backgammon_core.dart';
import 'analysis_context.dart';
import 'position_codec.dart';
import 'scored_move.dart';

typedef _EvalNative = Int32 Function(
    Pointer<Int32>, Pointer<Int32>, Pointer<Float>);
typedef _EvalDart = int Function(
    Pointer<Int32>, Pointer<Int32>, Pointer<Float>);
typedef _RankNative = Int32 Function(Pointer<Int32>, Pointer<Int32>, Int32,
    Int32, Int32, Pointer<Int32>, Pointer<Float>, Pointer<Int32>);
typedef _RankDart = int Function(Pointer<Int32>, Pointer<Int32>, int, int, int,
    Pointer<Int32>, Pointer<Float>, Pointer<Int32>);

/// Blocking GNUbg API. Host it in EngineService, never on the Flutter isolate.
class GnuBgEngine {
  GnuBgEngine._(this._eval, this._rank, this._cube);
  final _EvalDart _eval, _cube;
  final _RankDart _rank;
  bool _disposed = false;
  static GnuBgEngine open({String? libraryPath, required String netsPath}) {
    final lib = Platform.isIOS
        ? DynamicLibrary.process()
        : DynamicLibrary.open(libraryPath ??
            (Platform.isWindows
                ? 'libbuddy_gnubg.dll'
                : Platform.isMacOS
                    ? 'libbuddy_gnubg.dylib'
                    : 'libbuddy_gnubg.so'));
    final abi = lib.lookupFunction<Int32 Function(), int Function()>(
        'buddy_gnubg_abi_version')();
    if (abi != 1) throw StateError('Unsupported GNUbg native ABI ($abi)');
    final init = lib.lookupFunction<Int32 Function(Pointer<Utf8>),
        int Function(Pointer<Utf8>)>('buddy_gnubg_init');
    final path = netsPath.toNativeUtf8();
    try {
      final code = init(path);
      if (code != 0) throw StateError('GNUbg initialization failed ($code)');
    } finally {
      calloc.free(path);
    }
    return GnuBgEngine._(
        lib.lookupFunction<_EvalNative, _EvalDart>('buddy_gnubg_evaluate'),
        lib.lookupFunction<_RankNative, _RankDart>('buddy_gnubg_rank'),
        lib.lookupFunction<_EvalNative, _EvalDart>('buddy_gnubg_cube'));
  }

  T _withPosition<T>(BoardState b, Player mover, AnalysisContext context,
      T Function(Pointer<Int32>, Pointer<Int32>) body) {
    if (_disposed) throw StateError('GNUbg engine disposed');
    final encoded = encodePips(b, mover);
    final ctx = context.encode(mover);
    final p = calloc<Int32>(26), c = calloc<Int32>(9);
    try {
      p.asTypedList(26).setAll(0, encoded);
      c.asTypedList(9).setAll(0, ctx);
      return body(p, c);
    } finally {
      calloc.free(p);
      calloc.free(c);
    }
  }

  Probabilities _probs(Pointer<Float> p) => Probabilities(
      win: p[0],
      winGammon: p[1],
      winBackgammon: p[2],
      loseGammon: p[3],
      loseBackgammon: p[4]);
  Probabilities evaluate(BoardState b, Player mover,
          {AnalysisContext context = const AnalysisContext()}) =>
      _withPosition(b, mover, context, (p, c) {
        final out = calloc<Float>(7);
        try {
          final status = _eval(p, c, out);
          if (status != 0) {
            throw StateError('GNUbg evaluation failed ($status)');
          }
          return _probs(out);
        } finally {
          calloc.free(out);
        }
      });
  List<ScoredMove> rankMoves(BoardState b, Player mover, Dice dice,
          {AnalysisContext context = const AnalysisContext(),
          Move? playedMove}) =>
      _withPosition(b, mover, context, (p, c) {
        const capacity = 3875;
        final details = calloc<Int32>(capacity * 8),
            scores = calloc<Float>(capacity * 9);
        final after = calloc<Int32>(26);
        try {
          if (playedMove != null) {
            after
                .asTypedList(26)
                .setAll(0, encodePips(b.applyMove(mover, playedMove), mover));
          }
          final count = _rank(p, c, dice.die1, dice.die2, capacity, details,
              scores, playedMove == null ? nullptr : after);
          if (count < 0) throw StateError('GNUbg ranking failed ($count)');
          final legal = MoveGenerator.legalMoves(b, mover, dice);
          final ranked = <ScoredMove>[];
          for (var i = 0; i < count; i++) {
            final hops = <CheckerMove>[];
            for (var j = 0; j < 8 && details[i * 8 + j] >= 0; j += 2) {
              hops.add(decodeDetail(
                  details[i * 8 + j] + 1, details[i * 8 + j + 1] + 1, mover));
            }
            final nativeMove = Move(hops);
            final target = b.applyMove(mover, nativeMove);
            // Match the resulting board to the core's canonical legal move.
            // This also reconstructs hit flags and rejects an ABI/orientation bug.
            final canonical =
                legal.where((m) => b.applyMove(mover, m) == target).firstOrNull;
            if (canonical == null) {
              throw StateError('GNUbg returned an illegal move');
            }
            final row = scores + i * 9;
            ranked.add(ScoredMove(
                move: canonical,
                probabilities: _probs(row),
                cubefulEquity: row[context.cubeless ? 5 : 6],
                searchPlies: row[8].toInt(),
                matchWinningChance: context.matchLength > 0 ? row[7] : null));
          }
          // Preserve GNUbg search order; pruned shallow candidates are not
          // interchangeable with the survivors searched at the requested depth.
          return ranked;
        } finally {
          calloc.free(after);
          calloc.free(details);
          calloc.free(scores);
        }
      });
  Move bestMove(BoardState b, Player mover, Dice dice,
      {int xAway = 0, int oAway = 0}) {
    final length = xAway > oAway ? xAway : oAway;
    final ranked = rankMoves(b, mover, dice,
        context: AnalysisContext(
            matchLength: length,
            whiteScore: length - xAway,
            blackScore: length - oAway));
    return ranked.isEmpty ? Move.none : ranked.first.move;
  }

  CubeAdvice cubeInfo(BoardState b, Player mover,
          {AnalysisContext context = const AnalysisContext()}) =>
      _withPosition(b, mover, context, (p, c) {
        final out = calloc<Float>(11);
        try {
          final decision = _cube(p, c, out);
          if (decision < 0) {
            throw StateError('GNUbg cube evaluation failed ($decision)');
          }
          const doubles = {0, 1, 7, 8, 16, 17, 19, 20};
          return CubeAdvice(
              shouldDouble: doubles.contains(decision),
              shouldAccept: out[2] <= out[3],
              equityCubeless: out[9],
              equityNoDouble: out[1],
              equityDoubleTake: out[2],
              equityDoublePass: out[3],
              matchAware: context.matchLength > 0);
        } finally {
          calloc.free(out);
        }
      });
  void dispose() {
    _disposed = true;
  }
}
