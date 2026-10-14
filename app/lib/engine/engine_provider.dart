import 'dart:async';
import 'dart:io';

import 'package:backgammon_core/backgammon_core.dart';
import 'package:engine_bindings/engine_bindings.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as p;

import '../analytics/analytics_events.dart';
import '../analytics/app_analytics.dart';
import '../diagnostics/crash_log.dart';
import '../game/player_agent.dart';
import 'nets_installer.dart';
import 'gnubg_installer.dart';
import '../data/app_settings.dart';
import '../data/settings_repository.dart';

/// The engine verbs [EngineManager] supervises, narrowed to an interface.
///
/// [EngineService] is a concrete class with a private constructor and needs
/// native code to instantiate, so it cannot be faked directly. This interface
/// is the seam: the default spawner wraps a real [EngineService] in an adapter
/// ([_EngineServiceApi]) that satisfies [EngineApi], and tests inject a fake
/// implementation via [EngineManager]'s `spawner`. Mirrors [EngineService]'s
/// verb signatures so the adapter is a pass-through.
abstract interface class EngineApi {
  Future<Probabilities> evaluate(BoardState board, Player mover);
  Future<Move> bestMove(
    BoardState board,
    Player mover,
    Dice dice, {
    int xAway,
    int oAway,
  });
  Future<List<ScoredMove>> rankMoves(BoardState board, Player mover, Dice dice);
  Future<CubeAdvice> cubeInfo(BoardState board, Player mover);
  void dispose();
}

/// Adapts a concrete [EngineService] to [EngineApi]. Pure pass-through.
class _EngineServiceApi implements EngineApi {
  _EngineServiceApi(this._service);
  final EngineService _service;

  @override
  Future<Probabilities> evaluate(BoardState board, Player mover) =>
      _service.evaluate(board, mover);

  @override
  Future<Move> bestMove(
    BoardState board,
    Player mover,
    Dice dice, {
    int xAway = 0,
    int oAway = 0,
  }) => _service.bestMove(board, mover, dice, xAway: xAway, oAway: oAway);

  @override
  Future<List<ScoredMove>> rankMoves(
    BoardState board,
    Player mover,
    Dice dice,
  ) => _service.rankMoves(board, mover, dice);

  @override
  Future<CubeAdvice> cubeInfo(BoardState board, Player mover) =>
      _service.cubeInfo(board, mover);

  @override
  void dispose() => _service.dispose();
}

abstract interface class ContextualEngineApi implements EngineApi {
  Future<Probabilities> evaluateWithContext(
    BoardState b,
    Player m,
    AnalysisContext c,
  );
  Future<List<ScoredMove>> rankWithContext(
    BoardState b,
    Player m,
    Dice d,
    AnalysisContext c,
  );
  Future<CubeAdvice> cubeWithContext(BoardState b, Player m, AnalysisContext c);
}

abstract interface class AssessmentEngineApi {
  Future<List<ScoredMove>> rankPlayed(
    BoardState b,
    Player mover,
    Dice dice,
    AnalysisContext context,
    Move played,
  );
}

class GnuBgServiceApi extends _EngineServiceApi
    implements ContextualEngineApi, AssessmentEngineApi {
  GnuBgServiceApi(this.service) : super(service);
  final EngineService service;
  @override
  Future<List<ScoredMove>> rankPlayed(
    BoardState b,
    Player mover,
    Dice dice,
    AnalysisContext context,
    Move played,
  ) => service.rankMoves(b, mover, dice, context: context, playedMove: played);

  @override
  Future<List<ScoredMove>> rankMoves(
    BoardState board,
    Player mover,
    Dice dice,
  ) => service.rankMoves(
    board,
    mover,
    dice,
    context: const AnalysisContext(cubeless: true),
  );

  @override
  Future<Probabilities> evaluateWithContext(
    BoardState b,
    Player m,
    AnalysisContext c,
  ) => service.evaluate(b, m, context: c);
  @override
  Future<List<ScoredMove>> rankWithContext(
    BoardState b,
    Player m,
    Dice d,
    AnalysisContext c,
  ) => service.rankMoves(b, m, d, context: c);
  @override
  Future<CubeAdvice> cubeWithContext(
    BoardState b,
    Player m,
    AnalysisContext c,
  ) => service.cubeInfo(b, m, context: c);
}

Future<EngineApi> spawnGnuBg() async {
  final path = await GnuBgInstaller.ensureInstalled();
  String? library;
  if (Platform.isAndroid) library = 'libbuddy_gnubg.so';
  if (Platform.isWindows) {
    var dir = Directory.current;
    for (var i = 0; i < 5; i++) {
      final file = File(
        p.join(dir.path, 'native/gnubg/build/windows/libbuddy_gnubg.dll'),
      );
      if (file.existsSync()) {
        library = file.path;
        break;
      }
      dir = dir.parent;
    }
  }
  return GnuBgServiceApi(
    await EngineService.spawn(
      libraryPath: library,
      netsPath: path,
      backend: EvaluationEngine.gnubg,
      onIsolateError: (e, s) =>
          CrashLog.instance.record(e, stack: s, source: 'gnubg-isolate'),
    ),
  );
}

final gnuBgManagerProvider = Provider<EngineManager>((ref) {
  final manager = EngineManager(spawner: spawnGnuBg);
  ref.onDispose(manager.disposeManager);
  return manager;
});

/// Settings are captured once per request; each engine retains its own worker.
class SelectedEngineFacade
    implements EngineFacade, ContextualEngineFacade, PlayedMoveEngineFacade {
  SelectedEngineFacade(this.wildbg, this.gnubg, this.selection);
  final EngineManager wildbg, gnubg;
  final EvaluationEngine Function() selection;
  EngineManager get selected =>
      selection() == EvaluationEngine.gnubg ? gnubg : wildbg;
  @override
  Future<List<ScoredMove>?> rankForAssessment(
    GameState state,
    Move played,
    MatchContext? context,
  ) async {
    if (selection() != EvaluationEngine.gnubg) return null;
    final analysis = context == null
        ? const AnalysisContext(cubeless: true)
        : analysisContextFor(state, state.turn, context);
    return gnubg.withEngine(
      (e) => (e as AssessmentEngineApi).rankPlayed(
        state.board,
        state.turn,
        state.dice!,
        analysis,
        played,
      ),
    );
  }

  @override
  Future<Probabilities> evaluate(BoardState b, Player m) =>
      selected.withEngine((e) => e.evaluate(b, m));
  @override
  Future<List<ScoredMove>> rankMoves(BoardState b, Player m, Dice d) =>
      selected.withEngine((e) => e.rankMoves(b, m, d));
  @override
  Future<CubeAdvice> cubeInfo(BoardState b, Player m) =>
      selected.withEngine((e) => e.cubeInfo(b, m));
  @override
  Future<List<ScoredMove>?> rankForState(GameState s, MatchContext c) async {
    if (selection() != EvaluationEngine.gnubg) return null;
    return gnubg.withEngine(
      (e) => (e as ContextualEngineApi).rankWithContext(
        s.board,
        s.turn,
        s.dice!,
        analysisContextFor(s, s.turn, c),
      ),
    );
  }

  @override
  Future<CubeAdvice?> cubeForState(
    GameState s,
    Player mover,
    MatchContext c,
  ) async {
    if (selection() != EvaluationEngine.gnubg) return null;
    return gnubg.withEngine(
      (e) => (e as ContextualEngineApi).cubeWithContext(
        s.board,
        mover,
        analysisContextFor(s, mover, c),
      ),
    );
  }
}

/// Owns the [EngineApi] (engine-isolate) lifecycle for the whole app.
///
/// The [EngineService] isolate can die (a native crash, OOM). When it does, its
/// verb calls throw `StateError('engine isolate died…')` and the service is
/// permanently dead — the OWNER must re-spawn. That owner is this manager:
/// callers go through [withEngine], which lazily spawns on first use and
/// transparently re-spawns once if a call fails because the isolate died.
///
/// Spawning is serialized: concurrent first-callers (or concurrent re-spawns)
/// share a single in-flight spawn future rather than racing two isolates.
class EngineManager {
  /// [spawner] builds a fresh engine; defaults to [_defaultSpawner] which wires
  /// a real [EngineService]. Tests inject a fake to exercise the lifecycle
  /// without native code.
  EngineManager({Future<EngineApi> Function()? spawner})
    : _spawner = spawner ?? _defaultSpawner;

  final Future<EngineApi> Function() _spawner;

  EngineApi? _engine;
  Future<EngineApi>? _spawning;
  bool _disposed = false;

  /// Runs [fn] with a live engine, spawning one on first use.
  ///
  /// If [fn] throws a `StateError` whose message contains `isolate died`, the
  /// dead engine is dropped, a new one is spawned ONCE, and [fn] is retried. A
  /// second death (or any other error) propagates to the caller. Retrying only
  /// on the death signal keeps genuine engine errors (bad input, unknown verb)
  /// visible instead of masking them behind a re-spawn loop.
  ///
  /// A [TimeoutException] — [EngineService] giving up on a worker that never
  /// replied — is treated the SAME way, because a wedged isolate is a dead one
  /// that has not noticed yet: it never recovers on its own, so leaving it in
  /// place would cost every later call a full timeout before failing the same
  /// way.
  ///
  /// The recovery is not free, and the cost is NOT symmetric with the death
  /// case. Dropping disposes, and dispose asks the isolate to stop — but a
  /// worker genuinely blocked inside a native FFI call is not running Dart, so
  /// it reaches neither the queued `dispose` message nor the kill until that
  /// call returns, which by assumption it never does. See [EngineService.dispose]
  /// for why no isolate priority changes that. So the new engine is spawned
  /// BESIDE the old one, and the old one keeps its native handle. That is still
  /// the right trade — one leaked worker beats a session where every engine call
  /// costs 30s and then fails — but it is a leak, and [wedgedEngineDrops]
  /// makes it countable instead of silent.
  Future<T> withEngine<T>(Future<T> Function(EngineApi) fn) async {
    var engine = await _ensureEngine();
    try {
      return await fn(engine);
    } on StateError catch (e) {
      if (!_isIsolateDeath(e)) rethrow;
      // The isolate died mid-call. Drop it and re-spawn exactly once. Nothing
      // is leaked here: the worker is already gone, which is how we found out.
      _dropIfCurrent(engine);
      engine = await _ensureEngine();
      return await fn(engine);
    } on TimeoutException {
      // The isolate is wedged. Same recovery, same single retry — but the old
      // worker may well still be alive and holding a native engine.
      _noteWedgedDrop();
      _dropIfCurrent(engine);
      engine = await _ensureEngine();
      return await fn(engine);
    }
  }

  /// How many engines this manager has dropped because a call TIMED OUT rather
  /// than because the isolate was confirmed dead.
  ///
  /// Each one is a SUSPECTED leaked isolate plus its native engine handle — see
  /// [withEngine]. Zero is the expected value for a whole session; anything
  /// climbing means a worker is wedging repeatedly, which is a native-engine bug
  /// worth chasing and, until it is chased, a per-occurrence leak. Surfaced two
  /// ways because they answer different questions: this counter for a test or a
  /// live probe, and a [CrashLog] entry for the diagnostics report a tester can
  /// actually copy out of Settings.
  int get wedgedEngineDrops => _wedgedEngineDrops;
  int _wedgedEngineDrops = 0;

  void _noteWedgedDrop() {
    _wedgedEngineDrops++;
    CrashLog.instance.record(
      StateError(
        'engine isolate wedged: dropped without confirmed death '
        '(occurrence $_wedgedEngineDrops). Its worker and native engine may '
        'still be alive — a blocked native call cannot be preempted.',
      ),
      source: 'engine-wedged',
    );
  }

  /// Returns the live engine, spawning (or awaiting an in-flight spawn) if
  /// needed. Serialized via [_spawning] so concurrent callers share one spawn.
  Future<EngineApi> _ensureEngine() {
    if (_disposed) {
      throw StateError('EngineManager has been disposed');
    }
    final existing = _engine;
    if (existing != null) return Future.value(existing);

    final inFlight = _spawning;
    if (inFlight != null) return inFlight;

    final spawn = _spawner().then(
      (engine) {
        _spawning = null;
        // A dispose() that raced the spawn must not leave a live engine dangling.
        if (_disposed) {
          engine.dispose();
          throw StateError('EngineManager has been disposed');
        }
        _engine = engine;
        return engine;
      },
      onError: (Object e, StackTrace s) {
        _spawning = null;
        throw e;
      },
    );
    _spawning = spawn;
    return spawn;
  }

  /// Drops [engine] as the current one (disposing it) only if it is still the
  /// one we hold — guards against dropping a healthy re-spawned engine when two
  /// deaths interleave.
  void _dropIfCurrent(EngineApi engine) {
    if (identical(_engine, engine)) {
      _engine = null;
      engine.dispose();
    }
  }

  /// The death signal is a MESSAGE match, so it is a contract with
  /// [EngineService], not an implementation detail of it: the service reports
  /// `engine isolate died` for a worker that died on us — whether the death was
  /// seen mid-call or before the call was even issued — and
  /// `EngineService disposed` for one WE shut down. Only the former is worth
  /// re-spawning for; re-spawning after a deliberate disposal would resurrect an
  /// engine something else just decided to end.
  /// `app/test/engine/engine_manager_death_recovery_test.dart` pins both halves
  /// against a real isolate, because a fake engine chooses the string itself and
  /// so can never catch a drift here.
  static bool _isIsolateDeath(StateError e) =>
      e.message.contains('isolate died');

  /// Disposes the live engine, if any. Idempotent. Any subsequent [withEngine]
  /// call throws.
  Future<void> disposeManager() async {
    if (_disposed) return;
    _disposed = true;
    // Await any in-flight spawn so we can dispose the engine it produces
    // instead of leaking it; the spawn's own _disposed check also handles this.
    final spawning = _spawning;
    if (spawning != null) {
      try {
        await spawning;
      } catch (_) {
        // Spawn failure is fine here — nothing to dispose.
      }
    }
    _engine?.dispose();
    _engine = null;
  }

  /// Builds a production engine: resolves the native library and nets paths,
  /// spawns an [EngineService] isolate, and adapts it to [EngineApi].
  static Future<EngineApi> _defaultSpawner() async {
    final netsPath = await NetsInstaller.ensureInstalled();
    final service = await EngineService.spawn(
      libraryPath: _resolveLibraryPath(),
      netsPath: netsPath,
      // An uncaught error inside the engine isolate reaches neither
      // FlutterError.onError nor PlatformDispatcher.onError. Without this the
      // manager's transparent re-spawn would quietly paper over a repeating
      // native failure and the user would only notice the AI "thinking"
      // forever. Record it, then let the existing recovery run.
      onIsolateError: (error, stack) => CrashLog.instance.record(
        error,
        stack: stack,
        source: 'engine-isolate',
      ),
    );
    return _EngineServiceApi(service);
  }

  /// Resolves the native shim's path.
  ///
  /// - Android: the bare `libaigammon_engine.so` name; the Android loader finds
  ///   it in the packaged jniLibs.
  /// - Desktop dev: the staged Windows DLL if found by walking up from
  ///   [Directory.current] (the repo has it under
  ///   `packages/engine_bindings/native/windows/`).
  /// - Otherwise: null, letting [EngineService]/[WildbgFfi] apply its own
  ///   default / env-var resolution.
  static String? _resolveLibraryPath() {
    if (Platform.isAndroid) return 'libaigammon_engine.so';
    return _findWindowsDll();
  }

  static const _windowsDllRelative =
      'packages/engine_bindings/native/windows/aigammon_engine.dll';

  static String? _findWindowsDll() {
    var dir = Directory.current;
    for (var i = 0; i <= 4; i++) {
      final candidate = File(p.join(dir.path, _windowsDllRelative));
      if (candidate.existsSync()) return candidate.path;
      final parent = dir.parent;
      if (parent.path == dir.path) break;
      dir = parent;
    }
    return null;
  }
}

/// The app-wide engine manager. Its lifecycle is tied to the [ProviderScope];
/// disposing the scope disposes the live engine isolate.
final engineManagerProvider = Provider<EngineManager>((ref) {
  final manager = EngineManager();
  ref.onDispose(manager.disposeManager);
  return manager;
});

/// An [EngineFacade] (consumed by [AiAgent]) backed by [EngineManager], so AI
/// engine calls inherit the manager's transparent re-spawn-on-death behaviour.
class ManagedEngineFacade implements EngineFacade {
  ManagedEngineFacade(this._manager);
  final EngineManager _manager;

  @override
  Future<Probabilities> evaluate(BoardState board, Player mover) =>
      _manager.withEngine((e) => e.evaluate(board, mover));

  @override
  Future<List<ScoredMove>> rankMoves(
    BoardState board,
    Player mover,
    Dice dice,
  ) => _manager.withEngine((e) => e.rankMoves(board, mover, dice));

  @override
  Future<CubeAdvice> cubeInfo(BoardState board, Player mover) =>
      _manager.withEngine((e) => e.cubeInfo(board, mover));
}

/// Times every engine call and reports it as a custom performance trace.
///
/// **Why here and not inside [EngineService].** The isolate has no idea what a
/// trace is, and must not: it is pure Dart that also runs on Windows and under
/// `dart test`. This decorator sits at the provider boundary, so EVERY consumer
/// of the facade — the bot, the tutor, the post-match analyzer — is measured by
/// construction, and no call site can forget to.
///
/// **Why these three verbs.** [rankMoves] is the "AI is thinking" wait, the one
/// a player actually feels. [evaluate] and [cubeInfo] are shorter but drive the
/// bot's cube decisions and the tutor's advice, and a regression in either
/// shows up as the same symptom (a board that sits there), so telling them
/// apart in the dashboard is worth three trace names instead of one.
class TracedEngineFacade
    implements EngineFacade, ContextualEngineFacade, PlayedMoveEngineFacade {
  TracedEngineFacade(this._inner, this._performance);

  final EngineFacade _inner;
  final AppPerformance _performance;
  @override
  Future<List<ScoredMove>?> rankForAssessment(
    GameState state,
    Move played,
    MatchContext? context,
  ) => _inner is PlayedMoveEngineFacade
      ? _performance.trace(
          PerfTraces.engineRankMoves,
          () => (_inner as PlayedMoveEngineFacade).rankForAssessment(
            state,
            played,
            context,
          ),
        )
      : Future.value(null);
  @override
  Future<List<ScoredMove>?> rankForState(GameState s, MatchContext c) =>
      _inner is ContextualEngineFacade
      ? _performance.trace(
          PerfTraces.engineRankMoves,
          () => (_inner as ContextualEngineFacade).rankForState(s, c),
        )
      : Future.value(null);
  @override
  Future<CubeAdvice?> cubeForState(GameState s, Player m, MatchContext c) =>
      _inner is ContextualEngineFacade
      ? _performance.trace(
          PerfTraces.engineCubeInfo,
          () => (_inner as ContextualEngineFacade).cubeForState(s, m, c),
        )
      : Future.value(null);

  @override
  Future<Probabilities> evaluate(BoardState board, Player mover) => _performance
      .trace(PerfTraces.engineEvaluate, () => _inner.evaluate(board, mover));

  @override
  Future<List<ScoredMove>> rankMoves(
    BoardState board,
    Player mover,
    Dice dice,
  ) => _performance.trace(
    PerfTraces.engineRankMoves,
    () => _inner.rankMoves(board, mover, dice),
  );

  @override
  Future<CubeAdvice> cubeInfo(BoardState board, Player mover) => _performance
      .trace(PerfTraces.engineCubeInfo, () => _inner.cubeInfo(board, mover));
}

/// The [EngineFacade] for wiring an [AiAgent], backed by the managed engine and
/// wrapped in the performance decorator.
///
/// On desktop and in tests [appPerformanceProvider] is the no-op, whose `trace`
/// is a straight `await body()` — no allocation, no branch a profiler could
/// find. The decorator is therefore always in place and never in the way.
final engineFacadeProvider = Provider<EngineFacade>((ref) {
  return TracedEngineFacade(
    SelectedEngineFacade(
      ref.watch(engineManagerProvider),
      ref.watch(gnuBgManagerProvider),
      () => (ref.read(settingsProvider).valueOrNull ?? AppSettings.defaults)
          .evaluationEngine,
    ),
    ref.watch(appPerformanceProvider),
  );
});

/// A fixed selection for a complete post-game analysis job and its cache identity.
final fixedEngineFacadeProvider =
    Provider.family<EngineFacade, EvaluationEngine>((ref, choice) {
      return TracedEngineFacade(
        SelectedEngineFacade(
          ref.watch(engineManagerProvider),
          ref.watch(gnuBgManagerProvider),
          () => choice,
        ),
        ref.watch(appPerformanceProvider),
      );
    });
