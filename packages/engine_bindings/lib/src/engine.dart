import 'dart:ffi';
import 'dart:typed_data';

import 'package:backgammon_core/backgammon_core.dart';
import 'package:ffi/ffi.dart';

import 'ffi/wildbg_ffi.dart';
import 'position_codec.dart';
import 'scored_move.dart';

/// Synchronous engine facade over the native wildbg library. Blocking —
/// UI code drives `EngineService` instead, which hosts one of these in an
/// isolate so a rank/eval never stalls a frame.
///
/// NOT thread-safe: a single reused pips buffer is shared across calls, so a
/// single [Engine] instance must only be used from one isolate at a time.
///
/// [dispose] is the way to release the native engine. As a backstop the handle
/// and the scratch buffer are also attached to native finalizers, which run
/// when the instance is collected or its isolate shuts down — so an [Engine]
/// whose isolate is killed or crashes before `dispose()` does not leak the
/// loaded nets.
class Engine implements Finalizable {
  final WildbgFfi _ffi;
  Pointer<Void> _handle;
  bool _disposed = false;

  /// Reused 26-int scratch buffer for pip encoding. The class is explicitly
  /// single-threaded, so one buffer per instance is safe.
  final Pointer<Int32> _pips = calloc<Int32>(26);

  /// Dart view of [_pips], created once so loading a position is one bulk
  /// copy rather than 26 pointer stores.
  late final Int32List _pipsView = _pips.asTypedList(26);

  static final NativeFinalizer _bufferFinalizer =
      NativeFinalizer(calloc.nativeFree);

  Engine._(this._ffi, this._handle) {
    _ffi.handleFinalizer.attach(this, _handle, detach: this);
    _bufferFinalizer.attach(this, _pips.cast(), detach: this);
  }

  /// Opens the library and initializes with nets from [netsPath] (a
  /// directory containing contact.onnx and race.onnx). Throws StateError
  /// if the engine returns NULL (bad nets path is the usual cause).
  factory Engine.open({String? libraryPath, required String netsPath}) {
    final ffi = WildbgFfi(libraryPath ?? WildbgFfi.defaultLibraryPath());
    final pathPtr = netsPath.toNativeUtf8();
    try {
      final handle = ffi.wildbgNewWithPath(pathPtr);
      if (handle == nullptr) {
        throw StateError(
            'wildbg_new_with_path returned NULL for nets path "$netsPath" '
            '(directory must contain contact.onnx and race.onnx).');
      }
      return Engine._(ffi, handle);
    } finally {
      calloc.free(pathPtr);
    }
  }

  void _checkAlive() {
    if (_disposed) {
      throw StateError('Engine has been disposed.');
    }
  }

  /// Loads [board] from [mover]'s perspective into the reused pips buffer.
  void _loadPips(BoardState board, Player mover) {
    _pipsView.setAll(0, encodePips(board, mover));
  }

  /// Cubeless win/gammon/backgammon probabilities for [mover] ON ROLL in
  /// [board]. To see the same turn from the opponent's perspective, invert the
  /// returned probabilities; changing [mover] gives the opponent the next roll.
  Probabilities evaluate(BoardState board, Player mover) {
    _checkAlive();
    _loadPips(board, mover);
    final c = _ffi.probabilities(_handle, _pips);
    return Probabilities(
      win: c.win,
      winGammon: c.winG,
      winBackgammon: c.winBg,
      loseGammon: c.loseG,
      loseBackgammon: c.loseBg,
    );
  }

  /// Engine's best move in real coordinates; [Move.none] on a dance.
  ///
  /// wildbg itself only scores money games (`0/0`) and 1-pointers (`1/1`); the
  /// shim rejects every other away pair. Throws [ArgumentError] for a negative
  /// away score and [StateError] if the native call fails — the shim reports a
  /// failure as `detail_count == 0`, the same value as a dance, so the two are
  /// told apart here instead of handing the caller "no move" for a position
  /// that has one.
  Move bestMove(BoardState board, Player mover, Dice dice,
      {int xAway = 0, int oAway = 0}) {
    _checkAlive();
    if (xAway < 0 || oAway < 0) {
      // BgConfig's fields are unsigned: a negative value would wrap.
      throw ArgumentError('away scores must be >= 0, got $xAway/$oAway');
    }
    _loadPips(board, mover);
    final config = calloc<BgConfig>();
    config.ref.xAway = xAway;
    config.ref.oAway = oAway;
    try {
      final cMove =
          _ffi.bestMove(_handle, _pips, dice.die1, dice.die2, config);
      final count = cMove.detailCount;
      if (count == 0) {
        if (MoveGenerator.legalMoves(board, mover, dice).isNotEmpty) {
          throw StateError('best_move failed for dice ${dice.die1}/${dice.die2}'
              ' at $xAway-away/$oAway-away (the native engine rejected the '
              'request; wildbg supports only money and 1-pointer scores).');
        }
        return Move.none;
      }
      final moves = <CheckerMove>[
        for (var i = 0; i < count; i++)
          decodeDetail(cMove.details[i].from, cMove.details[i].to, mover),
      ];
      return Move(moves);
    } finally {
      calloc.free(config);
    }
  }

  /// Every legal move scored by evaluating the resulting position from the
  /// opponent's perspective and inverting; sorted best-first.
  List<ScoredMove> rankMoves(BoardState board, Player mover, Dice dice) {
    _checkAlive();
    final legal = MoveGenerator.legalMoves(board, mover, dice);
    final scored = [
      for (final move in legal)
        ScoredMove(
          move: move,
          probabilities:
              evaluate(board.applyMove(mover, move), mover.opponent).inverted,
        ),
    ]..sort((a, b) => b.equity.compareTo(a.equity));
    return scored;
  }

  CubeAdvice cubeInfo(BoardState board, Player mover) {
    _checkAlive();
    _loadPips(board, mover);
    final c = _ffi.cubeInfo(_handle, _pips);
    return CubeAdvice(
      shouldDouble: c.shouldDouble,
      shouldAccept: c.shouldAccept,
      equityCubeless: c.equityCubeless,
      equityNoDouble: c.equityNoDouble,
      equityDoubleTake: c.equityDoubleTake,
    );
  }

  /// Frees the native handle and scratch buffer. Idempotent; any further
  /// evaluation call throws StateError.
  void dispose() {
    if (_disposed) return;
    _disposed = true;
    _ffi.handleFinalizer.detach(this);
    _bufferFinalizer.detach(this);
    _ffi.wildbgFree(_handle);
    _handle = nullptr;
    calloc.free(_pips);
  }
}
