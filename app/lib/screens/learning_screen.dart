import 'dart:convert';

import 'package:backgammon_core/backgammon_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/database.dart';
import '../data/match_repository.dart';
import '../data/practice_repository.dart';
import '../data/recorded_match_context.dart';
import '../engine/engine_provider.dart';
import '../l10n/app_localizations.dart';
import '../l10n/localization_lookup.dart';
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
    final l10n = appLocalizationsOf(context);
    setState(() {
      _busy = true;
      _status = l10n.learningAnalysisStarting;
    });
    var completed = 0, failed = 0;
    try {
      final repo = ref.read(matchRepositoryProvider);
      final games = await ref
          .read(databaseProvider)
          .select(ref.read(databaseProvider).games)
          .get();
      final analyzer = GameAnalyzer(
        TutorService(ref.read(engineFacadeProvider)),
      );
      for (final row in games) {
        if (!mounted) return;
        final match = await repo.loadMatch(row.matchId);
        final score = await matchBeforeRecordedGame(repo, row);
        if (row.analysisJson != null) {
          try {
            final cached = GameAnalysis.fromJson(
              (jsonDecode(row.analysisJson!) as Map).cast<String, dynamic>(),
            );
            if (cached.matchesContext(score, match.cubeless)) continue;
          } on FormatException {
            /* Stale cache: recompute. */
          } on TypeError {
            /* Malformed derived cache: recompute. */
          } on ArgumentError {
            /* Invalid enum values: recompute. */
          }
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
          setState(
            () => _status = failed == 0
                ? l10n.learningAnalysisComplete(completed)
                : l10n.learningAnalysisProgress(completed, failed),
          );
        }
      }
    } catch (_) {
      failed++;
    }
    if (mounted) {
      setState(() {
        _busy = false;
        _reload();
        _status = failed == 0
            ? l10n.learningAnalysisComplete(completed)
            : l10n.learningAnalysisCompleteWithErrors(completed, failed);
      });
    }
  }

  Future<void> _saveMistakes(List<LearningDecision> decisions) async {
    final l10n = appLocalizationsOf(context);
    setState(() {
      _busy = true;
      _status = null;
    });
    var saved = 0;
    try {
      for (final decision in decisions.where((d) => d.isMistake)) {
        await ref
            .read(practiceRepositoryProvider)
            .saveMistake(
              gameId: decision.gameId,
              eventIndex: decision.eventIndex,
            );
        saved++;
      }
      if (mounted) {
        setState(() => _status = l10n.learningSavedMistakes(saved));
      }
    } catch (_) {
      if (mounted) {
        setState(() => _status = l10n.learningSaveMistakesFailed);
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
    await Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (_) => PracticeScreen(positionId: id)),
    );
    if (mounted) setState(_reload);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = appLocalizationsOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.learningPractice),
        actions: [
          IconButton(
            tooltip: l10n.learningRefreshTooltip,
            onPressed: _busy ? null : () => setState(_reload),
            icon: const Icon(Icons.refresh),
          ),
          PopupMenuButton<String>(
            tooltip: l10n.learningOptions,
            onSelected: (_) => _resetProgress(),
            itemBuilder: (_) => [
              PopupMenuItem(
                enabled: !_busy,
                value: 'reset',
                child: Text(l10n.learningResetMenu),
              ),
            ],
          ),
        ],
      ),
      body: FutureBuilder<LearningSnapshot>(
        future: _snapshot,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(l10n.learningLoadFailed),
                  TextButton(
                    onPressed: () => setState(_reload),
                    child: Text(l10n.actionRetry),
                  ),
                ],
              ),
            );
          }
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          final data = snapshot.data!;
          final decisions = data.decisions
              .where(
                (d) =>
                    (_side == null || d.player == _side) &&
                    (!_humansOnly || d.human),
              )
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
                      Text(
                        l10n.learningHeading,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const SizedBox(height: 8),
                      Text(l10n.learningIntro),
                      const SizedBox(height: 12),
                      Wrap(
                        spacing: 8,
                        children: [
                          for (final side in <Player?>[
                            null,
                            Player.white,
                            Player.black,
                          ])
                            ChoiceChip(
                              label: Text(
                                side == null
                                    ? l10n.learningBothSides
                                    : side == Player.white
                                    ? l10n.white
                                    : l10n.black,
                              ),
                              selected: _side == side,
                              onSelected: (_) => setState(() => _side = side),
                            ),
                        ],
                      ),
                      SwitchListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(l10n.learningHumansOnly),
                        subtitle: Text(l10n.learningHumanOnlyHelp),
                        value: _humansOnly,
                        onChanged: (v) => setState(() => _humansOnly = v),
                      ),
                      Text(
                        l10n.learningDecisionSummary(
                          decisions.length,
                          mistakeCount,
                          decisions
                              .where(
                                (d) => d.assessment.mark == MoveMark.blunder,
                              )
                              .length,
                        ),
                      ),
                      for (final metric in AssessmentMetric.values) ...[
                        if (decisions.any((d) => d.assessment.metric == metric))
                          Text(
                            _averageLabel(
                              decisions
                                  .where((d) => d.assessment.metric == metric)
                                  .toList(),
                              metric,
                              l10n,
                            ),
                          ),
                      ],
                      Text(l10n.learningForcedDisclaimer),
                      const SizedBox(height: 16),
                      if (_busy) const LinearProgressIndicator(),
                      if (_status != null)
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Text(_status!),
                        ),
                      if (data.gamesNeedingAnalysis > 0) ...[
                        Text(
                          l10n.learningGamesNeedingAnalysis(
                            data.gamesNeedingAnalysis,
                          ),
                        ),
                        FilledButton.icon(
                          onPressed: _busy ? null : _analyse,
                          icon: const Icon(Icons.analytics_outlined),
                          label: Text(l10n.learningAnalyseSavedGames),
                        ),
                      ],
                      if (data.decisions.isEmpty &&
                          data.gamesNeedingAnalysis == 0)
                        Text(l10n.learningEmptyProfile),
                      OutlinedButton.icon(
                        onPressed: () async {
                          await Navigator.of(context).push(
                            MaterialPageRoute<void>(
                              builder: (_) => const HistoryScreen(),
                            ),
                          );
                          if (mounted) setState(_reload);
                        },
                        icon: const Icon(Icons.history),
                        label: Text(l10n.learningOpenHistory),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        l10n.learningRecurringThemes,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 8),
                      if (orderedThemes.isEmpty) Text(l10n.learningNoThemes),
                      for (final theme in orderedThemes.take(6))
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text(_themeLabel(theme.key, l10n)),
                          subtitle: Text(
                            l10n.learningThemeDecisions(theme.value),
                          ),
                        ),
                      FilledButton(
                        onPressed: _busy || mistakeCount == 0
                            ? null
                            : () => _saveMistakes(decisions),
                        child: Text(l10n.learningSaveMistakes),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        l10n.learningSpacedPractice,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        l10n.learningPracticeCounts(
                          due.length,
                          positions.length,
                          attempts.length,
                          attempts.where((a) => a.passed).length,
                        ),
                      ),
                      Text(l10n.learningIntervalsHelp),
                      Text(l10n.learningAnswerContext),
                      if (positions.isEmpty)
                        Padding(
                          padding: EdgeInsets.only(top: 12),
                          child: Text(l10n.learningNoSavedPositions),
                        ),
                      for (final position in positions)
                        Card(
                          child: ListTile(
                            title: Text(
                              l10n.learningPositionTitle(
                                position.player == 'white'
                                    ? l10n.white
                                    : l10n.black,
                                position.gameId,
                              ),
                            ),
                            subtitle: Text(
                              '${position.dueAt.isAfter(DateTime.now()) ? l10n.learningReviewDue(_date(context, position.dueAt)) : l10n.learningReadyToReview}'
                              ' · ${l10n.learningSuccessStreak(position.successStreak)}',
                            ),
                            onTap: _busy ? null : () => _practice(position.id),
                            trailing: IconButton(
                              tooltip: l10n.learningRemoveTooltip,
                              icon: const Icon(Icons.delete_outline),
                              onPressed: _busy ? null : () => _delete(position),
                            ),
                          ),
                        ),
                      if (attempts.isNotEmpty) ...[
                        const SizedBox(height: 20),
                        Text(
                          l10n.learningRecentPractice,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        for (final attempt in attempts.take(8))
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Text(
                              attempt.revealed
                                  ? l10n.learningAnswerRevealed
                                  : attempt.passed
                                  ? l10n.learningSuccessfulRecall
                                  : l10n.learningTryAgain,
                            ),
                            subtitle: Text(
                              l10n.learningAttemptSubtitle(
                                _date(context, attempt.attemptedAt),
                                attempt.positionId,
                              ),
                            ),
                          ),
                      ],
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _delete(PracticePositionRow row) async {
    final l10n = appLocalizationsOf(context);
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.learningRemoveTitle),
        content: Text(l10n.learningRemoveBody),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(l10n.actionCancel),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(l10n.actionRemove),
          ),
        ],
      ),
    );
    if (confirmed != true) return;
    try {
      await ref.read(practiceRepositoryProvider).delete(row.id);
      if (mounted) setState(_reload);
    } catch (_) {
      if (mounted) setState(() => _status = l10n.learningRemoveFailed);
    }
  }

  Future<void> _resetProgress() async {
    final l10n = appLocalizationsOf(context);
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.learningResetTitle),
        content: Text(l10n.learningResetBody),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(l10n.actionCancel),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(l10n.learningResetAction),
          ),
        ],
      ),
    );
    if (confirmed != true) return;
    try {
      await ref.read(practiceRepositoryProvider).resetProgress();
      if (mounted) setState(_reload);
    } catch (_) {
      if (mounted) {
        setState(() => _status = l10n.learningResetFailed);
      }
    }
  }
}

String _averageLabel(
  List<LearningDecision> decisions,
  AssessmentMetric metric,
  AppLocalizations l10n,
) {
  final average =
      decisions.fold<double>(0, (sum, d) => sum + d.assessment.equityLoss) /
      decisions.length;
  return l10n.learningAverageLoss(
    decisions.length,
    formatAssessmentLoss(average, metric),
  );
}

String _themeLabel(CoachingTheme theme, AppLocalizations l10n) =>
    switch (theme) {
      CoachingTheme.hitting => l10n.learningThemeHitting,
      CoachingTheme.safety => l10n.learningThemeSafety,
      CoachingTheme.pointMaking => l10n.learningThemePointMaking,
      CoachingTheme.prime => l10n.learningThemePrime,
      CoachingTheme.anchor => l10n.learningThemeAnchor,
      CoachingTheme.race => l10n.learningThemeRace,
      CoachingTheme.bearOff => l10n.learningThemeBearOff,
      CoachingTheme.barEntry => l10n.learningThemeBarEntry,
      CoachingTheme.cube => l10n.learningThemeCube,
    };

String _date(BuildContext context, DateTime date) {
  final local = date.toLocal();
  final material = MaterialLocalizations.of(context);
  return '${material.formatMediumDate(local)} '
      '${material.formatTimeOfDay(TimeOfDay.fromDateTime(local), alwaysUse24HourFormat: MediaQuery.alwaysUse24HourFormatOf(context))}';
}
