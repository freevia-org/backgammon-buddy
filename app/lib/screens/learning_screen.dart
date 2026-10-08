import 'dart:convert';

import 'package:backgammon_core/backgammon_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/database.dart';
import '../data/match_repository.dart';
import '../data/practice_repository.dart';
import '../data/recorded_match_context.dart';
import '../engine/engine_provider.dart';
import '../tutor/coaching.dart';
import '../tutor/game_analyzer.dart';
import '../tutor/move_assessment.dart';
import '../tutor/tutor_service.dart';
import 'history_screen.dart';
import 'practice_screen.dart';

class LearningScreen extends ConsumerStatefulWidget {
  const LearningScreen({super.key});
  @override
  ConsumerState<LearningScreen> createState() => _LearningScreenState();
}

class _LearningScreenState extends ConsumerState<LearningScreen> {
  late Future<LearningSnapshot> _snapshot;
  Player? _side;
  bool _humansOnly = true;
  bool _busy = false;
  String? _status;
  @override
  void initState() {
    super.initState();
    _reload();
  }

  void _reload() {
    _snapshot = ref.read(practiceRepositoryProvider).loadLearning();
  }

  Future<void> _analyse() async {
    setState(() {
      _busy = true;
      _status = 'Analysing saved games…';
    });
    var completed = 0, failed = 0;
    try {
      final repo = ref.read(matchRepositoryProvider);
      final games = await ref
          .read(databaseProvider)
          .select(ref.read(databaseProvider).games)
          .get();
      final analyzer =
          GameAnalyzer(TutorService(ref.read(engineFacadeProvider)));
      for (final row in games) {
        if (!mounted) return;
        final match = await repo.loadMatch(row.matchId);
        final score = await matchBeforeRecordedGame(repo, row);
        if (row.analysisJson != null) {
          try {
            final cached = GameAnalysis.fromJson(
                (jsonDecode(row.analysisJson!) as Map).cast<String, dynamic>());
            if (cached.matchesContext(score, match.cubeless)) continue;
          } on FormatException {/* Stale cache: recompute. */} on TypeError {
            /* Malformed derived cache: recompute. */
          } on ArgumentError {/* Invalid enum values: recompute. */}
        }
        try {
          final analysis = await analyzer.analyze(
            await repo.loadGameEvents(row.id),
            isCrawford: row.isCrawford,
            matchBefore: score,
            // Unknown historical cube settings cannot justify missed-double feedback.
            cubeless: match.cubeless,
          );
          await repo.saveAnalysis(row.id, jsonEncode(analysis.toJson()));
          completed++;
        } catch (_) {
          failed++;
        }
        if (mounted) {
          setState(() => _status =
              'Analysed $completed games${failed == 0 ? '' : ' · $failed unavailable'}.');
        }
      }
    } catch (_) {
      failed++;
    }
    if (mounted) {
      setState(() {
        _busy = false;
        _reload();
        _status =
            'Analysed $completed games${failed == 0 ? '.' : '; $failed could not be analysed. Try again when the engine is ready.'}';
      });
    }
  }

  Future<void> _saveMistakes(List<LearningDecision> decisions) async {
    setState(() {
      _busy = true;
      _status = null;
    });
    var saved = 0;
    try {
      for (final decision in decisions.where((d) => d.isMistake)) {
        await ref.read(practiceRepositoryProvider).saveMistake(
            gameId: decision.gameId, eventIndex: decision.eventIndex);
        saved++;
      }
      if (mounted) {
        setState(() => _status =
            '$saved decisions are in your practice list. Existing saves are kept once.');
      }
    } catch (_) {
      if (mounted) {
        setState(() => _status =
            'Some decisions could not be saved. Completed saves are kept; retry safely.');
      }
    } finally {
      if (mounted) {
        setState(() {
          _busy = false;
          _reload();
        });
      }
    }
  }

  Future<void> _practice(int id) async {
    await Navigator.of(context).push(MaterialPageRoute<void>(
        builder: (_) => PracticeScreen(positionId: id)));
    if (mounted) setState(_reload);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Learning & practice'), actions: [
          IconButton(
              tooltip: 'Refresh learning progress',
              onPressed: _busy ? null : () => setState(_reload),
              icon: const Icon(Icons.refresh)),
          PopupMenuButton<String>(
              tooltip: 'Learning options',
              onSelected: (_) => _resetProgress(),
              itemBuilder: (_) => [
                    PopupMenuItem(
                        enabled: !_busy,
                        value: 'reset',
                        child: const Text('Reset practice progress'))
                  ]),
        ]),
        body: FutureBuilder<LearningSnapshot>(
            future: _snapshot,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Center(
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                  const Text('Could not load learning progress.'),
                  TextButton(
                      onPressed: () => setState(_reload),
                      child: const Text('Retry')),
                ]));
              }
              if (!snapshot.hasData) {
                return const Center(child: CircularProgressIndicator());
              }
              final data = snapshot.data!;
              final decisions = data.decisions
                  .where((d) =>
                      (_side == null || d.player == _side) &&
                      (!_humansOnly || d.human))
                  .toList();
              final mistakeCount = decisions.where((d) => d.isMistake).length;
              final positions = data.positions
                  .where((p) => _side == null || p.player == _side!.name)
                  .toList();
              final positionIds = positions.map((p) => p.id).toSet();
              final attempts = data.attempts
                  .where((a) => positionIds.contains(a.positionId))
                  .toList();
              final due = positions
                  .where((p) => !p.dueAt.isAfter(DateTime.now()))
                  .toList();
              final themes = <CoachingTheme, int>{};
              for (final d in decisions.where((d) => d.isMistake)) {
                for (final theme in d.themes) {
                  themes.update(theme, (n) => n + 1, ifAbsent: () => 1);
                }
              }
              final orderedThemes = themes.entries.toList()
                ..sort((a, b) => b.value.compareTo(a.value));
              return SafeArea(
                  child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Center(
                    child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 720),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Learn from your decisions',
                            style: Theme.of(context).textTheme.headlineSmall),
                        const SizedBox(height: 8),
                        const Text(
                            'Progress stays on this device. Review recurring themes, then retry saved positions '
                            'without seeing the answer. White and Black can be reviewed separately.'),
                        const SizedBox(height: 12),
                        Wrap(spacing: 8, children: [
                          for (final side in <Player?>[
                            null,
                            Player.white,
                            Player.black
                          ])
                            ChoiceChip(
                                label: Text(side == null
                                    ? 'Both sides'
                                    : side == Player.white
                                        ? 'White'
                                        : 'Black'),
                                selected: _side == side,
                                onSelected: (_) =>
                                    setState(() => _side = side)),
                        ]),
                        SwitchListTile(
                            contentPadding: EdgeInsets.zero,
                            title: const Text('Human decisions only'),
                            subtitle: const Text(
                                'Turn off to include computer and remote-player decisions'),
                            value: _humansOnly,
                            onChanged: (v) => setState(() => _humansOnly = v)),
                        Text(
                            '${decisions.length} decisions · $mistakeCount to improve · '
                            '${decisions.where((d) => d.assessment.mark == MoveMark.blunder).length} blunders'),
                        for (final metric in AssessmentMetric.values) ...[
                          if (decisions
                              .any((d) => d.assessment.metric == metric))
                            Text(_averageLabel(
                                decisions
                                    .where((d) => d.assessment.metric == metric)
                                    .toList(),
                                metric)),
                        ],
                        const Text(
                            'Forced plays are excluded. These are engine estimates, not a tournament rating.'),
                        const SizedBox(height: 16),
                        if (_busy) const LinearProgressIndicator(),
                        if (_status != null)
                          Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Text(_status!)),
                        if (data.gamesNeedingAnalysis > 0) ...[
                          Text(
                              '${data.gamesNeedingAnalysis} saved games need analysis or refreshed analysis.'),
                          FilledButton.icon(
                              onPressed: _busy ? null : _analyse,
                              icon: const Icon(Icons.analytics_outlined),
                              label: const Text('Analyse saved games')),
                        ],
                        if (data.decisions.isEmpty &&
                            data.gamesNeedingAnalysis == 0)
                          const Text(
                              'Play and finish a game to build your learning profile. You can also save individual '
                              'decisions from a game’s replay.'),
                        OutlinedButton.icon(
                            onPressed: () async {
                              await Navigator.of(context).push(
                                  MaterialPageRoute<void>(
                                      builder: (_) => const HistoryScreen()));
                              if (mounted) setState(_reload);
                            },
                            icon: const Icon(Icons.history),
                            label: const Text('Open match history')),
                        const SizedBox(height: 20),
                        Text('Recurring themes',
                            style: Theme.of(context).textTheme.titleLarge),
                        const SizedBox(height: 8),
                        if (orderedThemes.isEmpty)
                          const Text(
                              'No recurring mistake themes in this selection yet.'),
                        for (final theme in orderedThemes.take(6))
                          ListTile(
                              contentPadding: EdgeInsets.zero,
                              title: Text(_themeLabel(theme.key)),
                              subtitle: Text(
                                  '${theme.value} decisions to revisit. A position can have more than one theme.')),
                        FilledButton(
                            onPressed: _busy || mistakeCount == 0
                                ? null
                                : () => _saveMistakes(decisions),
                            child:
                                const Text('Save these mistakes for practice')),
                        const SizedBox(height: 24),
                        Text('Spaced practice',
                            style: Theme.of(context).textTheme.titleLarge),
                        const SizedBox(height: 8),
                        Text(
                            '${due.length} due now · ${positions.length} saved · ${attempts.length} attempts · '
                            '${attempts.where((a) => a.passed).length} successful recalls'),
                        const Text(
                            'Successful due reviews return after 1, 3, 7, 14 and 30 days. '
                            'Mistakes or revealed answers return after 10 minutes. Early repeats do not advance the interval.'),
                        const Text(
                            'Practice results reflect your answers here, even when the original position belonged to an opponent.'),
                        if (positions.isEmpty)
                          const Padding(
                              padding: EdgeInsets.only(top: 12),
                              child: Text(
                                  'Save a decision from replay, or use the mistake button above.')),
                        for (final position in positions)
                          Card(
                              child: ListTile(
                            title: Text(
                                '${position.player == 'white' ? 'White' : 'Black'} decision · game ${position.gameId}'),
                            subtitle: Text(
                                '${position.dueAt.isAfter(DateTime.now()) ? 'Review ${_date(position.dueAt)}' : 'Ready to review'}'
                                ' · ${position.successStreak} successful due reviews'),
                            onTap: _busy ? null : () => _practice(position.id),
                            trailing: IconButton(
                                tooltip: 'Remove saved decision',
                                icon: const Icon(Icons.delete_outline),
                                onPressed:
                                    _busy ? null : () => _delete(position)),
                          )),
                        if (attempts.isNotEmpty) ...[
                          const SizedBox(height: 20),
                          Text('Recent practice',
                              style: Theme.of(context).textTheme.titleLarge),
                          for (final attempt in attempts.take(8))
                            ListTile(
                                contentPadding: EdgeInsets.zero,
                                title: Text(attempt.revealed
                                    ? 'Answer revealed'
                                    : attempt.passed
                                        ? 'Successful recall'
                                        : 'Try this decision again'),
                                subtitle: Text(
                                    '${_date(attempt.attemptedAt)} · saved position ${attempt.positionId}')),
                        ],
                      ]),
                )),
              ));
            }),
      );

  Future<void> _delete(PracticePositionRow row) async {
    final confirmed = await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Remove this exercise?'),
              content: const Text(
                  'This removes its practice attempts. The original game remains in history.'),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context, false),
                    child: const Text('Cancel')),
                TextButton(
                    onPressed: () => Navigator.pop(context, true),
                    child: const Text('Remove'))
              ],
            ));
    if (confirmed != true) return;
    try {
      await ref.read(practiceRepositoryProvider).delete(row.id);
      if (mounted) setState(_reload);
    } catch (_) {
      if (mounted) setState(() => _status = 'Could not remove this exercise.');
    }
  }

  Future<void> _resetProgress() async {
    final confirmed = await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Reset practice progress?'),
              content: const Text(
                  'All practice attempts and review intervals will be removed. '
                  'Your saved exercises and match history are kept; every exercise becomes due now.'),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context, false),
                    child: const Text('Cancel')),
                TextButton(
                    onPressed: () => Navigator.pop(context, true),
                    child: const Text('Reset progress'))
              ],
            ));
    if (confirmed != true) return;
    try {
      await ref.read(practiceRepositoryProvider).resetProgress();
      if (mounted) setState(_reload);
    } catch (_) {
      if (mounted) {
        setState(() => _status = 'Could not reset practice progress.');
      }
    }
  }
}

String _averageLabel(
    List<LearningDecision> decisions, AssessmentMetric metric) {
  final average =
      decisions.fold<double>(0, (sum, d) => sum + d.assessment.equityLoss) /
          decisions.length;
  return 'Average loss (${decisions.length} decisions): ${formatAssessmentLoss(average, metric)}';
}

String _themeLabel(CoachingTheme theme) => switch (theme) {
      CoachingTheme.hitting => 'Hitting and tempo',
      CoachingTheme.safety => 'Blots and safety',
      CoachingTheme.pointMaking => 'Making points',
      CoachingTheme.prime => 'Primes and blockades',
      CoachingTheme.anchor => 'Anchors and escape',
      CoachingTheme.race => 'Racing efficiency',
      CoachingTheme.bearOff => 'Bearing off',
      CoachingTheme.barEntry => 'Entering from the bar',
      CoachingTheme.cube => 'Cube decisions',
    };

String _date(DateTime date) {
  final d = date.toLocal();
  return '${d.year}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')} '
      '${d.hour.toString().padLeft(2, '0')}:${d.minute.toString().padLeft(2, '0')}';
}
