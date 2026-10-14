import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_plus/share_plus.dart';
import 'package:backgammon_core/backgammon_core.dart' as core;

import '../analytics/analytics_events.dart';
import '../analytics/analytics_screen_view.dart';
import '../data/database.dart';
import '../data/match_repository.dart';
import '../diagnostics/crash_log.dart';
import '../export/backgammon_match_export.dart';
import '../export/extreme_gammon_export.dart';
import '../export/jellyfish_mat_export.dart';
import '../l10n/app_localizations.dart';
import '../l10n/localization_lookup.dart';
import 'analysis_screen.dart';

/// The match-history list: every recorded match, newest first, tapping through
/// to its games ([MatchDetailScreen]) and, from there, to the per-game
/// [AnalysisScreen].
///
/// ## History is not a landfill
///
/// A match row is written the moment a match is launched, so every abandoned
/// setup used to accumulate forever as an unresumable "White 0 — 0 Black · In
/// progress" row. Two things keep the list meaningful:
///
/// * on every load the screen sweeps the **empty** abandoned matches
///   ([MatchRepository.deleteEmptyAbandonedMatches]) — those with zero recorded
///   games carry no information at all. The sweep skips matches younger than a
///   couple of minutes, so it can never race a game that is still being
///   written (see that method's age-guard note);
/// * every remaining row can be **swiped away** (right-to-left) behind a
///   confirmation dialog, which hard-deletes the match and, by cascade, its
///   games.
///
/// An unfinished match that DID record games is kept and badged "Unfinished"
/// (not "In progress": no live match survives an app restart) — its games are
/// still analysable.
class HistoryScreen extends ConsumerStatefulWidget {
  const HistoryScreen({super.key});

  @override
  ConsumerState<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends ConsumerState<HistoryScreen> {
  /// Ids deleted from THIS screen, hidden immediately rather than waiting for
  /// the watch stream to re-emit. Keeps the swipe feeling instant and makes the
  /// row's disappearance independent of the stream (so a test may serve a fixed
  /// list). The delete itself has already committed when an id lands here.
  final Set<int> _deleted = {};

  @override
  void initState() {
    super.initState();
    // Fire-and-forget purge of the empty abandoned matches. The watch stream
    // re-emits when rows go, so no explicit refresh is needed; a failure just
    // leaves the rows listed (they are deletable by hand) — so it is recorded
    // rather than shown, but recorded rather than dropped.
    recordFailures(
      ref.read(matchRepositoryProvider).deleteEmptyAbandonedMatches(),
      source: 'history-purge',
    );
  }

  @override
  // See [HomeScreen] for why every screen splits build/_build.
  Widget build(BuildContext context) => AnalyticsScreenView(
    name: AnalyticsScreens.history,
    child: _build(context),
  );

  Widget _build(BuildContext context) {
    final l10n = appLocalizationsOf(context);
    final matches = ref.watch(matchesProvider);
    return Scaffold(
      appBar: AppBar(title: Text(l10n.historyTitle)),
      body: matches.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(
          child: Text(l10n.historyLoadFailed(l10n.onlineErrorGeneric)),
        ),
        data: (all) {
          final rows = [
            for (final row in all)
              if (!_deleted.contains(row.id)) row,
          ];
          if (rows.isEmpty) {
            return Center(child: Text(l10n.historyEmpty));
          }
          return ListView.separated(
            itemCount: rows.length,
            separatorBuilder: (_, _) => const Divider(height: 1),
            itemBuilder: (context, i) => _MatchTile(
              match: rows[i],
              onDeleteRequested: () => _confirmDelete(rows[i]),
            ),
          );
        },
      ),
    );
  }

  /// Confirms and performs the hard delete of [match].
  ///
  /// Always resolves `false` — the [Dismissible] is told NOT to dismiss, because
  /// a confirmed delete has already removed the row from the list (via
  /// [_deleted]) by the time this returns, and a "dismissed" widget that is
  /// still in the tree trips a framework assertion. A cancelled delete simply
  /// springs the row back.
  Future<bool> _confirmDelete(MatchRow match) async {
    final l10n = appLocalizationsOf(context);
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.historyDeleteConfirmTitle),
        content: Text(l10n.historyDeleteConfirmBody(_scoreLine(match, l10n))),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: Text(l10n.actionCancel),
          ),
          FilledButton(
            onPressed: () => Navigator.of(ctx).pop(true),
            child: Text(l10n.actionDelete),
          ),
        ],
      ),
    );
    if (confirmed != true) return false;
    try {
      await ref.read(matchRepositoryProvider).deleteMatch(match.id);
    } catch (error, stack) {
      // The user asked for this and watched the row swipe away, so a failure
      // has to be said out loud — silently leaving the match listed reads as
      // the delete not having taken.
      CrashLog.instance.record(error, stack: stack, source: 'history-delete');
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.historyDeleteFailed)));
      }
      return false;
    }
    if (mounted) setState(() => _deleted.add(match.id));
    return false;
  }
}

class _MatchTile extends StatelessWidget {
  const _MatchTile({required this.match, required this.onDeleteRequested});

  final MatchRow match;

  /// Runs the confirm-then-delete flow; resolves whether the [Dismissible]
  /// should complete its dismissal (always `false` — see
  /// [_HistoryScreenState._confirmDelete]).
  final Future<bool> Function() onDeleteRequested;

  @override
  Widget build(BuildContext context) {
    final l10n = appLocalizationsOf(context);
    final subtitle =
        '${_modeLabel(match.mode, l10n)} · ${_formatDate(match.createdAt)}';
    return Dismissible(
      key: ValueKey('match-${match.id}'),
      direction: DismissDirection.endToStart,
      confirmDismiss: (_) => onDeleteRequested(),
      background: const _DeleteBackground(),
      child: ListTile(
        title: Text(_scoreLine(match, l10n)),
        subtitle: Text(subtitle),
        trailing: match.completed
            ? _StatusBadge(
                label: match.winner == null
                    ? l10n.historyComplete
                    : l10n.historyWinner(_sideLabel(match.winner!, l10n)),
                tone: _BadgeTone.done,
              )
            // Not "In progress": nothing is in progress after the app restarts —
            // the match cannot be resumed, only its games reviewed.
            : _StatusBadge(
                label: l10n.historyUnfinished,
                tone: _BadgeTone.pending,
              ),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => MatchDetailScreen(match: match)),
        ),
      ),
    );
  }
}

/// What shows behind a row as it is swiped: a delete affordance on the trailing
/// edge (the swipe direction), so the gesture reads before it commits.
class _DeleteBackground extends StatelessWidget {
  const _DeleteBackground();

  @override
  Widget build(BuildContext context) {
    final l10n = appLocalizationsOf(context);
    final scheme = Theme.of(context).colorScheme;
    return ColoredBox(
      color: scheme.errorContainer,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              l10n.actionDelete,
              style: TextStyle(color: scheme.onErrorContainer, fontSize: 13),
            ),
            const SizedBox(width: 8),
            Icon(Icons.delete_outline, color: scheme.onErrorContainer),
          ],
        ),
      ),
    );
  }
}

/// The games of one match, in play order, tapping through to the analysis
/// screen. Games are loaded once via the repository's [MatchRepository.gamesFor].
///
/// Reached two ways: from the history list with the [match] row already in hand,
/// or from the game screen's post-match "Match summary" button with only a
/// [matchId] (the row is then loaded via [MatchRepository.loadMatch]). Exactly
/// one of [match] / [matchId] must be provided.
class MatchDetailScreen extends ConsumerWidget {
  const MatchDetailScreen({super.key, this.match, this.matchId})
    : assert(
        match != null || matchId != null,
        'provide a match row or a matchId',
      );

  /// The pre-loaded match row (from the history list), or null when only a
  /// [matchId] is known (from the post-match summary link).
  final MatchRow? match;

  /// The match id to load the row for, when [match] is null.
  final int? matchId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = appLocalizationsOf(context);
    final row = match;
    if (row != null) return _detail(context, ref, row, l10n);
    final repo = ref.watch(matchRepositoryProvider);
    return FutureBuilder<MatchRow>(
      future: repo.loadMatch(matchId!),
      builder: (context, snap) {
        if (snap.hasError) {
          return Scaffold(
            appBar: AppBar(title: Text(l10n.historyMatchTitle)),
            body: Center(
              child: Text(l10n.historyMatchLoadFailed(l10n.onlineErrorGeneric)),
            ),
          );
        }
        if (!snap.hasData) {
          return Scaffold(
            appBar: AppBar(title: Text(l10n.historyMatchTitle)),
            body: const Center(child: CircularProgressIndicator()),
          );
        }
        return _detail(context, ref, snap.data!, l10n);
      },
    );
  }

  Widget _detail(
    BuildContext context,
    WidgetRef ref,
    MatchRow match,
    AppLocalizations l10n,
  ) {
    final repo = ref.watch(matchRepositoryProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(_scoreLine(match, l10n)),
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.share),
            onSelected: (format) async {
              try {
                final games = await repo.gamesFor(match.id);
                if (!context.mounted || games.isEmpty) return;
                final export = _exportableMatch(match, games);
                final (extension, bytes) = switch (format) {
                  'sgf' => ('.sgf', utf8.encode(exportMatchSgf(export))),
                  'mat' => ('.mat', utf8.encode(exportMatchMat(export))),
                  'xg' => ('.xg', exportMatchXg(export)),
                  _ => throw ArgumentError.value(format, 'format'),
                };
                final name = 'backgammon-match-${match.id}$extension';
                await SharePlus.instance.share(
                  ShareParams(
                    files: [
                      XFile.fromData(
                        Uint8List.fromList(bytes),
                        mimeType: 'application/octet-stream',
                      ),
                    ],
                    fileNameOverrides: [name],
                  ),
                );
              } catch (error, stack) {
                FlutterError.reportError(
                  FlutterErrorDetails(
                    exception: error,
                    stack: stack,
                    library: 'match export',
                  ),
                );
                if (!context.mounted) return;
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      l10n.historyMatchLoadFailed(l10n.onlineErrorGeneric),
                    ),
                  ),
                );
              }
            },
            itemBuilder: (context) => const [
              PopupMenuItem(value: 'sgf', child: Text('SGF (.sgf)')),
              PopupMenuItem(value: 'mat', child: Text('MAT (.mat)')),
              PopupMenuItem(value: 'xg', child: Text('XG (.xg)')),
            ],
          ),
        ],
      ),
      body: FutureBuilder<List<GameRow>>(
        future: repo.gamesFor(match.id),
        builder: (context, snap) {
          if (snap.hasError) {
            return Center(
              child: Text(l10n.historyGamesLoadFailed(l10n.onlineErrorGeneric)),
            );
          }
          if (!snap.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          final games = snap.data!;
          if (games.isEmpty) {
            return Center(child: Text(l10n.historyNoGames));
          }
          return ListView.separated(
            itemCount: games.length,
            separatorBuilder: (_, _) => const Divider(height: 1),
            itemBuilder: (context, i) => _GameTile(game: games[i]),
          );
        },
      ),
    );
  }
}

ExportableMatch _exportableMatch(MatchRow match, List<GameRow> rows) {
  var whiteScore = 0;
  var blackScore = 0;
  final games = <ExportableGame>[];
  for (final row in rows) {
    final result = row.resultWinner == null
        ? null
        : core.GameResult(
            winner: core.Player.values.byName(row.resultWinner!),
            points: row.resultPoints ?? 0,
            outcome: core.GameOutcome.values.byName(
              row.resultOutcome ?? 'single',
            ),
          );
    games.add(
      ExportableGame(
        number: row.gameNumber,
        whiteScore: whiteScore,
        blackScore: blackScore,
        isCrawford: row.isCrawford,
        events: MatchRepository.decodeEventsJson(row.eventsJson),
        result: result,
      ),
    );
    if (result?.winner == core.Player.white) whiteScore += result!.points;
    if (result?.winner == core.Player.black) blackScore += result!.points;
  }
  return ExportableMatch(
    whitePlayer: 'White',
    blackPlayer: 'Black',
    length: match.matchLength,
    games: games,
    date: match.createdAt,
  );
}

class _GameTile extends StatelessWidget {
  const _GameTile({required this.game});

  final GameRow game;

  @override
  Widget build(BuildContext context) {
    final l10n = appLocalizationsOf(context);
    return ListTile(
      leading: CircleAvatar(child: Text('${game.gameNumber}')),
      title: Text(l10n.historyGameTitle(game.gameNumber)),
      subtitle: Text(_gameResultLine(game, l10n)),
      trailing: game.isCrawford
          ? _StatusBadge(label: l10n.historyCrawford, tone: _BadgeTone.info)
          : null,
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => AnalysisScreen(gameId: game.id)),
      ),
    );
  }
}

// --- Formatting --------------------------------------------------------------

String _scoreLine(MatchRow m, AppLocalizations l10n) =>
    l10n.historyScoreLine(m.whiteScore, m.blackScore, m.matchLength);

/// The mode a saved match was played in, as a person would name it.
///
/// **The fallback is the raw column value**, which is why a missing case is a
/// silent one: a Buddy match read "buddy" in the history list and a LAN match
/// read "lan", in a subtitle where every other mode had a proper name. Every
/// string `MatchRepository.startMatch` is called with has a case here — see
/// `history_screen_test.dart`, which enumerates them against the call sites so
/// that the next mode cannot ship with its column name showing.
String _modeLabel(String mode, AppLocalizations l10n) => switch (mode) {
  'vsComputer' => l10n.historyModeComputer,
  'hotSeat' => l10n.historyModeTwoPlayers,
  'online' => l10n.historyModeOnline,
  'lan' => l10n.historyModeNearby,
  'buddy' => l10n.historyModeBuddy,
  final other => other,
};

String _sideLabel(String side, AppLocalizations l10n) => switch (side) {
  'white' => l10n.white,
  'black' => l10n.black,
  _ => side,
};

String _gameResultLine(GameRow g, AppLocalizations l10n) {
  final winner = g.resultWinner;
  if (winner == null) return l10n.historyGameInProgress;
  final points = g.resultPoints ?? 0;
  final outcome = switch (g.resultOutcome ?? 'single') {
    'gammon' => l10n.historyOutcomeGammon,
    'backgammon' => l10n.historyOutcomeBackgammon,
    _ => l10n.historyOutcomeSingle,
  };
  return l10n.historyGameResult(_sideLabel(winner, l10n), points, outcome);
}

String _formatDate(DateTime d) {
  String two(int n) => n.toString().padLeft(2, '0');
  return '${d.year}-${two(d.month)}-${two(d.day)} ${two(d.hour)}:${two(d.minute)}';
}

// --- Badges ------------------------------------------------------------------

enum _BadgeTone { done, pending, info }

class _StatusBadge extends StatelessWidget {
  const _StatusBadge({required this.label, required this.tone});

  final String label;
  final _BadgeTone tone;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final (bg, fg) = switch (tone) {
      _BadgeTone.done => (scheme.primaryContainer, scheme.onPrimaryContainer),
      _BadgeTone.pending => (
        scheme.surfaceContainerHighest,
        scheme.onSurfaceVariant,
      ),
      _BadgeTone.info => (
        scheme.secondaryContainer,
        scheme.onSecondaryContainer,
      ),
    };
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(label, style: TextStyle(color: fg, fontSize: 12)),
    );
  }
}
