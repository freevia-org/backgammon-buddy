import 'package:backgammon_core/backgammon_core.dart';
import 'package:engine_bindings/engine_bindings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/settings_repository.dart';
import '../game/player_agent.dart';
import '../l10n/localization_lookup.dart';
import 'engine_provider.dart';
import '../diagnostics/crash_log.dart';

/// Optional app integration: isolated game-screen hosts without a preferences
/// scope retain the default (comparison off) and need no engine dependencies.
class EngineComparisonPanel extends StatelessWidget {
  const EngineComparisonPanel({
    super.key,
    required this.position,
    required this.context,
  });
  final GameState position;
  final MatchContext context;
  @override
  Widget build(BuildContext context) {
    if (context
            .getElementForInheritedWidgetOfExactType<
              UncontrolledProviderScope
            >() ==
        null) {
      return const SizedBox.shrink();
    }
    return _ScopedComparison(position: position, context: this.context);
  }
}

class _ScopedComparison extends ConsumerStatefulWidget {
  const _ScopedComparison({required this.position, required this.context});
  final GameState position;
  final MatchContext context;
  @override
  ConsumerState<_ScopedComparison> createState() => _ComparisonState();
}

class _ComparisonResult {
  const _ComparisonResult(
    this.name,
    this.probabilities,
    this.moves, {
    this.failed = false,
  });
  final String name;
  final Probabilities? probabilities;
  final List<ScoredMove> moves;
  final bool failed;
}

class _ComparisonState extends ConsumerState<_ScopedComparison> {
  Future<List<_ComparisonResult>>? _request;
  @override
  void didUpdateWidget(_ScopedComparison old) {
    super.didUpdateWidget(old);
    if (old.position != widget.position ||
        old.context.moverAway != widget.context.moverAway ||
        old.context.opponentAway != widget.context.opponentAway ||
        old.context.crawfordPlayed != widget.context.crawfordPlayed ||
        old.context.cubeless != widget.context.cubeless) {
      _request = null;
    }
  }

  Future<_ComparisonResult> _analyse(
    EngineManager manager,
    String name,
    GameState position,
    AnalysisContext context,
  ) async {
    try {
      return await manager.withEngine((engine) async {
        final probability = engine is ContextualEngineApi
            ? await engine.evaluateWithContext(
                position.board,
                position.turn,
                context,
              )
            : await engine.evaluate(position.board, position.turn);
        final moves = position.dice == null
            ? const <ScoredMove>[]
            : engine is ContextualEngineApi
            ? await engine.rankWithContext(
                position.board,
                position.turn,
                position.dice!,
                context,
              )
            : await engine.rankMoves(
                position.board,
                position.turn,
                position.dice!,
              );
        return _ComparisonResult(name, probability, moves);
      });
    } catch (error, stack) {
      CrashLog.instance.record(
        error,
        stack: stack,
        source: 'engine-comparison-$name',
      );
      return _ComparisonResult(name, null, const [], failed: true);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!(ref.watch(settingsProvider).valueOrNull?.parallelEngineAnalysis ??
        false)) {
      return const SizedBox.shrink();
    }
    final l10n = appLocalizationsOf(context);
    // Both workers get this immutable snapshot, before either future is awaited.
    final position = widget.position;
    final analysis = analysisContextFor(
      position,
      position.turn,
      widget.context,
    );
    _request ??= Future.wait([
      _analyse(ref.read(engineManagerProvider), 'wildbg', position, analysis),
      _analyse(ref.read(gnuBgManagerProvider), 'GNUbg', position, analysis),
    ]);
    return ExpansionTile(
      title: Text(l10n.engineComparison),
      initiallyExpanded: true,
      children: [
        FutureBuilder<List<_ComparisonResult>>(
          future: _request,
          builder: (context, snapshot) {
            if (snapshot.connectionState != ConnectionState.done) {
              return const LinearProgressIndicator();
            }
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (final result
                    in snapshot.data ?? const <_ComparisonResult>[])
                  ListTile(
                    title: Text(result.name),
                    subtitle: Text(
                      result.failed
                          ? l10n.analysisError(result.name)
                          : '${l10n.engineWinChance}: ${(result.probabilities!.win * 100).toStringAsFixed(1)}%\n'
                                '${result.moves.isEmpty ? l10n.tutorNoHintsAvailable : l10n.tutorBestMove(result.moves.first.move.toString())}',
                    ),
                  ),
                Text(l10n.parallelEngineExplanation),
              ],
            );
          },
        ),
      ],
    );
  }
}
