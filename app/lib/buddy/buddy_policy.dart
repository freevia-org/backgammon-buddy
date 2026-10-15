import 'package:backgammon_core/backgammon_core.dart';
import 'package:board_vision/board_vision.dart';

import 'speaker.dart';
import '../l10n/app_localizations.dart';
import 'buddy_localization.dart';

/// What happened to the cube, as the session narrates it.
///
/// **The spec sketched `onCubeAction(CubeAction action)`** and `CubeAction` in
/// this app is take-or-drop (see `game/player_agent.dart`), which leaves the
/// double itself — the event the whole verbal negotiation turns on — with no
/// value to carry. So the policy hears a three-valued action and an actor
/// instead: who did what, which is exactly what a spoken line needs and what a
/// transcript has to distinguish ("I double" / "You take" are different
/// sentences said by different people about one cube).
enum BuddyCubeAction { offered, taken, dropped }

/// What a mode says and shows.
///
/// The spec's seam, and the reason Buddy Mode is "mode-pluggable from day one":
/// the session decides, perception answers, and this decides what is SAID. A
/// policy receives events and touches neither perception nor the game state —
/// which is why coach and tracker modes are later policies rather than later
/// subsystems, and why every one of these methods returns void.
///
/// ## Deviations from the spec's sketch, recorded
///
///  * `onDiceRead` carries a `double?` rather than the spec's `Confidence`.
///    No such type was ever built: `board_vision` reports a plain confidence on
///    `DiceReading`, and `null` here means the roll was TYPED rather than read,
///    which a policy legitimately words differently.
///  * `onCubeAction` carries an actor and a [BuddyCubeAction] — see that enum.
///  * [onOpeningRerolled] is new. Two equal opening dice are not a roll that
///    happened; folding them into `onDiceRead` would report a turn that nobody
///    is about to take.
abstract interface class BuddyPolicy {
  /// [confidence] is the reading's, or `null` when the roll was typed on the
  /// manual pad. For the OPENING roll, [roller] is the side the dice gave the
  /// first turn to.
  void onDiceRead(Player roller, Dice dice, double? confidence);

  /// The opening dice came up equal, so they are being thrown again.
  void onOpeningRerolled(Dice tied);

  /// [mover]'s play has been identified and folded into the game.
  void onPlayObserved(Player mover, Move play);

  /// The board changed into something that is not a legal play. [reason] is a
  /// sentence written for the user by whichever query noticed.
  void onIllegalPlayObserved(String reason);

  /// Buddy has decided its play. The user has not made it yet — that is what
  /// [onPlacementVerified] is about.
  void onBuddyMoveChosen(Dice dice, Move play);

  /// Whether the board now holds the position Buddy dictated. [fix] names the
  /// discrepancy when it does not.
  void onPlacementVerified(bool correct, String? fix);

  /// The user has told Buddy the board is right after it failed to see so, and
  /// the session has taken their word for it.
  ///
  /// Separate from `onPlacementVerified(true, null)` — which is silent, because
  /// a board that came out right is the ordinary case — precisely because this
  /// one is NOT that. Nothing was verified; a person overruled a camera that
  /// could not see their felt, and the transcript is the user's record of the
  /// match, so it should say which of the two happened.
  void onPlacementSkipped();

  void onCubeAction(Player actor, BuddyCubeAction action);

  /// Every distinct verdict, as it changes — never once per frame.
  void onReadability(Readability state);

  void onGameEnd(GameResult result);

  void onMatchEnd(Player winner);
}

/// The MVP mode: Buddy plays one side and says so.
///
/// Per the spec — "speaks Buddy's dice/moves, acknowledges the user's plays
/// tersely, objects to illegal or incomplete plays, and runs the verbal cube
/// negotiation". Every line goes through [BuddySpeaker], so every line is
/// mirrored on screen whether or not the phone has a voice.
///
/// **Silence is a feature here.** A policy that narrated every event would be
/// unbearable at a real board: the user's own play gets an acknowledgement
/// short enough to talk over, a placement that came out right gets nothing at
/// all (the next line already implies it), and readability is spoken only on
/// the transition into red — the spec says "spoken once (not nagged)" and the
/// session only ever calls [onReadability] on a change.
class OpponentPolicy implements BuddyPolicy {
  OpponentPolicy({required this.speaker, required this.buddySide, this.l10n});

  final BuddySpeaker speaker;
  final AppLocalizations? l10n;

  /// The side the engine plays. Everything else is the user's.
  final Player buddySide;

  bool _saidRed = false;

  /// The roll Buddy has had announced and not yet played, or null.
  ///
  /// The latch that keeps one throw to one line. Buddy's dictated play follows
  /// its roll within the same turn and both lines named the dice, so the
  /// transcript read "I rolled 6-3." / "I rolled 6-3 — play 13/8, 24/22" — one
  /// throw said twice, a second apart, in the channel that IS the user's record
  /// of the match. Set here, spent in [onBuddyMoveChosen], and cleared by the
  /// user's own roll so that a dictation which somehow arrives without a roll
  /// in front of it still names one.
  Dice? _buddyRollSaid;

  @override
  void onDiceRead(Player roller, Dice dice, double? confidence) {
    final mine = roller == buddySide;
    _buddyRollSaid = mine ? dice : null;
    final d = BuddyPhrasing.describeDice(dice);
    final line = l10n == null
        ? '${mine ? 'I rolled' : 'You rolled'} ${d.text}.'
        : mine
        ? l10n!.buddySpeechIRolled(d.text)
        : l10n!.buddySpeechYouRolled(d.text);
    final spoken = l10n == null
        ? '${mine ? 'I rolled' : 'You rolled'} ${d.speech}.'
        : mine
        ? l10n!.buddySpeechIRolled(d.speech)
        : l10n!.buddySpeechYouRolled(d.speech);
    speaker.say(BuddyLine(line, speech: spoken));
  }

  @override
  void onOpeningRerolled(Dice tied) => speaker.say(
    BuddyLine(
      l10n?.buddySpeechOpeningTie('${tied.die1}') ??
          'Both ${tied.die1} — roll again.',
    ),
  );

  @override
  void onPlayObserved(Player mover, Move play) {
    if (mover == buddySide) return; // Buddy's own play was announced already.
    if (play.checkerMoves.isEmpty) {
      speaker.say(
        BuddyLine(l10n?.buddySpeechNoPlayPass ?? 'No play — your turn passes.'),
      );
      return;
    }
    // Terse on purpose: an acknowledgement is a receipt, not a commentary.
    speaker.announcePlay(play);
  }

  @override
  void onIllegalPlayObserved(String reason) => speaker.say(
    BuddyLine(
      l10n == null
          ? "That isn't a legal play. $reason"
          : '${l10n!.buddySpeechIllegalPlay} $reason',
    ),
  );

  /// **The roll is named here only if nothing has named it yet.** In every
  /// production path [onDiceRead] has just said it — the session announces a
  /// roll the moment it is read and dictates the play once the engine has
  /// answered — so this ordinarily says the play and nothing else. The
  /// alternative is kept rather than deleted because the dice are an argument
  /// of this method: a caller that dictates a play without a roll in front of
  /// it deserves a line that still says which throw it belongs to.
  @override
  void onBuddyMoveChosen(Dice dice, Move play) {
    final said = _buddyRollSaid == dice;
    _buddyRollSaid = null;
    final d = said ? null : BuddyPhrasing.describeDice(dice);
    if (play.checkerMoves.isEmpty) {
      speaker.say(
        BuddyLine(
          d == null
              ? l10n?.buddySpeechNoPlayBack ?? 'No play, so it is back to you.'
              : '${l10n?.buddySpeechIRolled(d.text) ?? 'I rolled ${d.text}.'} ${l10n?.buddySpeechNoPlayBack ?? 'No play, so it is back to you.'}',
          speech: d == null
              ? l10n?.buddySpeechNoPlayBack ?? 'No play, so it is back to you.'
              : '${l10n?.buddySpeechIRolled(d.speech) ?? 'I rolled ${d.speech}.'} ${l10n?.buddySpeechNoPlayBack ?? 'No play, so it is back to you.'}',
        ),
      );
      return;
    }
    final body = _dictation(speaker.phrasing.describePlay(play, l10n: l10n));
    speaker.say(
      d == null
          ? body
          : BuddyLine(
              l10n?.buddySpeechBuddyRolledMove(d.text, body.text) ??
                  'I rolled ${d.text} — ${_lowerFirst(body.text)}',
              speech:
                  l10n?.buddySpeechBuddyRolledMove(d.speech, body.speech) ??
                  'I rolled ${d.speech}. ${body.speech}',
            ),
    );
  }

  /// The play as an instruction to a pair of hands.
  ///
  /// Terse hands back notation, which needs a verb in front of it; friendly
  /// hands back a finished imperative sentence, which does not — a verb in
  /// front of that one reads "play Move one checker from 13 to 8".
  BuddyLine _dictation(BuddyLine described) => switch (speaker.phrasing) {
    BuddyPhrasing.terse => BuddyLine(
      l10n?.buddySpeechPlay(described.text) ?? 'Play ${described.text}',
      speech:
          l10n?.buddySpeechPlay(described.speech) ?? 'Play ${described.speech}',
    ),
    BuddyPhrasing.friendly => described,
  };

  static String _lowerFirst(String s) =>
      s.isEmpty ? s : '${s[0].toLowerCase()}${s.substring(1)}';

  @override
  void onPlacementVerified(bool correct, String? fix) {
    // Nothing is said when it came out right: the next line — a roll, a play,
    // a double — is the acknowledgement, and a board being correct is the
    // ordinary case, which is precisely what must not be narrated.
    if (correct) return;
    speaker.say(
      BuddyLine(
        l10n?.buddySpeechPlacementMismatch(fix ?? '').trim() ??
            "That isn't quite right.",
      ),
    );
  }

  /// **A caveat, not an acknowledgement**, and the difference is the whole
  /// reason this line exists. Buddy has just been told something it could not
  /// check, so it says so and says what the consequence would be if the user is
  /// wrong — which is the honest version of accepting a claim on trust, and is
  /// also true: a board that has genuinely come apart from the game shows up at
  /// the next play, as a difference no legal move accounts for.
  @override
  void onPlacementSkipped() => speaker.say(
    BuddyLine(
      l10n?.buddySpeechSkippedCheck ??
          "I'll take your word for it. I could not see that one land, so if we "
              'have come apart it will show up as a play I cannot read.',
    ),
  );

  @override
  void onCubeAction(Player actor, BuddyCubeAction action) {
    final mine = actor == buddySide;
    speaker.say(switch (action) {
      BuddyCubeAction.offered =>
        mine
            ? BuddyLine(
                l10n?.buddySpeechBuddyDouble ?? 'I double — take or drop?',
              )
            : BuddyLine(l10n?.buddySpeechYouDouble ?? 'You double.'),
      BuddyCubeAction.taken =>
        mine
            ? BuddyLine(l10n?.buddySpeechBuddyTakes ?? 'I take.')
            : BuddyLine(l10n?.buddySpeechYouTake ?? 'You take.'),
      BuddyCubeAction.dropped =>
        mine
            ? BuddyLine(l10n?.buddySpeechBuddyDrops ?? 'I drop.')
            : BuddyLine(l10n?.buddySpeechYouDrop ?? 'You drop.'),
    });
  }

  @override
  void onReadability(Readability state) {
    if (state.level == ReadabilityLevel.red) {
      // "Spoken once (not nagged)": the session already only reports changes,
      // and this latch survives an amber flicker in between two reds.
      if (_saidRed) return;
      _saidRed = true;
      speaker.say(
        BuddyLine(
          l10n == null ? state.message : buddyReadabilityMessage(state, l10n!),
        ),
      );
      return;
    }
    if (state.level == ReadabilityLevel.green && _saidRed) {
      _saidRed = false;
      speaker.say(
        BuddyLine(l10n?.buddyReadabilityClear ?? 'I can see the board again.'),
      );
    }
  }

  @override
  void onGameEnd(GameResult result) {
    final won = result.winner == buddySide;
    final points = result.points == 1
        ? '1 ${l10n?.tutorMovePointSingular ?? 'point'}'
        : '${result.points} ${l10n?.tutorMovePointPlural ?? 'points'}';
    speaker.say(
      BuddyLine(
        l10n == null
            ? '${won ? 'I' : 'You'} win, $points.'
            : won
            ? l10n!.buddySpeechGameWinnerBuddy(points)
            : l10n!.buddySpeechGameWinnerYou(points),
      ),
    );
  }

  @override
  void onMatchEnd(Player winner) => speaker.say(
    BuddyLine(
      winner == buddySide
          ? l10n?.buddySpeechMatchWinnerBuddy ?? 'That is the match to me.'
          : l10n?.buddySpeechMatchWinnerYou ?? 'You win the match.',
    ),
  );
}
