// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get homeTagline => 'Verbessere dein Spiel mit einem Trainer';

  @override
  String get settings => 'Einstellungen';

  @override
  String get playVsComputer => 'Gegen den Computer spielen';

  @override
  String get twoPlayers => 'Zwei Spieler';

  @override
  String get playNearby => 'In der Nähe spielen';

  @override
  String get playOnline => 'Online spielen';

  @override
  String get learningPractice => 'Lernen & üben';

  @override
  String get gamesArchive => 'Spielearchiv';

  @override
  String get followSystem => 'Gerätesprache verwenden';

  @override
  String get white => 'Weiß';

  @override
  String get black => 'Schwarz';

  @override
  String get random => 'Zufall';

  @override
  String get startMatch => 'Spiel starten';

  @override
  String get tutor => 'Tutor';

  @override
  String get noMovesPass => 'Keine Züge – passen';

  @override
  String get undo => 'Rückgängig';

  @override
  String get confirm => 'Bestätigen';

  @override
  String get roll => 'Würfeln';

  @override
  String get hint => 'Tipp';

  @override
  String get tutoringStyle => 'Lernstil';

  @override
  String get tutorStyleCoach => 'Coach';

  @override
  String get tutorStyleHintsOnly => 'Nur Hinweise';

  @override
  String get tutorStyleTryFirst => 'Erst selbst versuchen';

  @override
  String get tutorCoachDescription =>
      'Positionshinweise, Feedback zu Zügen, Tipps und Ratschläge zum Dopplerwürfel.';

  @override
  String get tutorHintsDescription =>
      'Ranglisten der Züge gibt es auf Anfrage. Live-Positionshinweise und automatisches Zugfeedback sind ausgeschaltet.';

  @override
  String get tutorTryFirstDescription =>
      'Führe deinen Zug aus, bevor du Ranglistenhinweise oder die Bewertung siehst; Positionshinweise bleiben eingeschaltet.';

  @override
  String get tutorCustomDescription =>
      'Individuelle Mischung. Passe die Optionen unten an.';

  @override
  String get tutorBestMoveHints => 'Hinweise zum besten Zug';

  @override
  String get tutorRevealRankedPlays =>
      'Ranglisten der Züge beim Entscheiden anzeigen';

  @override
  String get tutorMoveExplanations => 'Erklärungen zum Zug';

  @override
  String get tutorCompareEstimates =>
      'Bewertungen und Änderungen auf dem Brett vergleichen';

  @override
  String get tutorGameCommentary => 'Spielkommentar';

  @override
  String get tutorPositionPrompts =>
      'Positionshinweise und Feedback nach jedem Zug';

  @override
  String get tutorCubeAdvice => 'Würfelberatung';

  @override
  String get tutorMatchAwareCubeAdvice =>
      'Matchstandbezogene Empfehlungen zu Doppeln, Annehmen und Passen';

  @override
  String get tutorTryMoveFirst => 'Zug zuerst selbst versuchen';

  @override
  String get tutorStageBeforeHints =>
      'Führe deinen aktuellen Zug aus, bevor Hinweise oder die Bewertung angezeigt werden';

  @override
  String get tutorStaticEstimateNote =>
      'Schnelle statische Bewertung (0 Halbzüge, keine Simulationen); die Hinweise beschreiben Brettänderungen und mögliche Antworten, nicht den sicheren weiteren Verlauf.';

  @override
  String get tutorWhatToWatchNext => 'Worauf du als Nächstes achten solltest';

  @override
  String get tutorMoreBoardDetails => 'Weitere Brettdetails';

  @override
  String get tutorEstimatesAndHowTheyWork =>
      'Bewertungen und ihre Funktionsweise';

  @override
  String get tutorEstimateLimitations =>
      'Suchtiefe: statische neuronale Bewertung nach jedem legalen Zug (0 Halbzüge), ohne Simulationen oder Suche nach künftigen Antworten. Die matchstandbezogene MWC gewichtet die Ergebnisschätzungen anhand des Matchstands und des aktuellen Dopplerwürfels, modelliert aber keine künftigen Würfelentscheidungen. Wenn kein Punktestand verfügbar ist, entspricht die Equity ohne Würfel den erwarteten Punkten bei Würfel 1. Die Brettbeobachtungen beschreiben den Zug, nicht die interne Begründung des neuronalen Motors. Nahezu gleiche Werte bedeuten keine Sicherheit; es gibt kein kalibriertes Konfidenzintervall.';

  @override
  String get tutorPointNumberNote =>
      'Punktnummern in den Lernhinweisen werden vom Heimfeld des ziehenden Spielers aus gezählt.';

  @override
  String get tutorHittingRollNote =>
      'Die Anzahl der Schlagmöglichkeiten umfasst alle 36 geordneten Würfelergebnisse und legale direkte oder indirekte Schläge; sie sind Möglichkeiten, keine Vorhersage der gegnerischen Wahl.';

  @override
  String get tutorNoEvaluatedAlternatives =>
      'Für diesen Zug liegen keine bewerteten Alternativen vor.';

  @override
  String get tutorForcedPassNoDecision =>
      'Ein erzwungenes Passen beinhaltet keine Entscheidung über einen Zug mit den Steinen.';

  @override
  String get settingsReset => 'Zurücksetzen';

  @override
  String get settingsAppLanguage => 'App-Sprache';

  @override
  String get settingsTheme => 'Design';

  @override
  String get settingsThemeSystem => 'System';

  @override
  String get settingsThemeLight => 'Hell';

  @override
  String get settingsThemeDark => 'Dunkel';

  @override
  String get settingsAnimationSpeed => 'Animationstempo';

  @override
  String get settingsAnimationNone => 'Keine';

  @override
  String get settingsAnimationNormal => 'Normal';

  @override
  String get settingsAnimationFast => 'Schnell';

  @override
  String get settingsDiceRollAnimation => 'Würfelanimation';

  @override
  String get settingsDiceRollAnimationHelp =>
      'Lass die Würfel vor jedem Wurf rollen';

  @override
  String get settingsDefaultMatchLength => 'Standard-Matchlänge';

  @override
  String get settingsDefaultDifficulty => 'Standardschwierigkeit';

  @override
  String get settingsDifficultyEasy => 'Leicht';

  @override
  String get settingsDifficultyMedium => 'Mittel';

  @override
  String get settingsDifficultyHard => 'Schwer';

  @override
  String get settingsDifficultyExpert => 'Experte';

  @override
  String get settingsTutorModeDefault => 'Standard für den Tutor-Modus';

  @override
  String get settingsTutorAuto => 'Automatisch';

  @override
  String get settingsTutorOn => 'Ein';

  @override
  String get settingsTutorOff => 'Aus';

  @override
  String get settingsTutorModeHelp =>
      'Automatisch aktiviert den Tutor bei jeder Computer-Schwierigkeit. Ein und Aus legen die Startauswahl für lokale Matches fest. Spiele in der Nähe und online werden ohne Hilfen gespielt; gespeicherte Partien lassen sich später ansehen. Die Tutor-Einstellungen unten werden auf diesem Gerät gespeichert.';

  @override
  String get settingsTutorPreferences => 'Tutor-Einstellungen';

  @override
  String get settingsTutorPreferencesSubtitle =>
      'Gespeicherte Standardwerte für künftige Matches';

  @override
  String get settingsTutorSaveError =>
      'Tutor-Einstellungen konnten nicht gespeichert werden.';

  @override
  String get settingsGameplay => 'Spiel';

  @override
  String get settingsMoveHighlights => 'Zugmarkierungen';

  @override
  String get settingsMoveHighlightsHelp =>
      'Wählbare Steine werden eingekreist und mögliche Zielfelder hervorgehoben';

  @override
  String get settingsDragToMove => 'Ziehen zum Bewegen';

  @override
  String get settingsDragToMoveHelp =>
      'Ziehe einen Stein auf sein Zielfeld (Tippen funktioniert immer)';

  @override
  String get settingsCombinedMoves => 'Züge kombinieren';

  @override
  String get settingsCombinedMovesHelp =>
      'Ein Tippen bewegt einen Stein mit beiden Würfeln';

  @override
  String get settingsRotateBoard => 'Brett zwischen den Zügen drehen';

  @override
  String get settingsRotateBoardHelp =>
      'Mehrspieler am selben Gerät: Ansicht für den aktiven Spieler umdrehen';

  @override
  String get settingsPassDevice => 'Übergabebildschirm';

  @override
  String get settingsPassDeviceHelp =>
      'Brett zwischen den Zügen am selben Gerät ausblenden';

  @override
  String get settingsShowScore => 'Punktestand anzeigen';

  @override
  String get settingsShowScoreHelp =>
      'Laufenden Matchstand in der Kopfzeile anzeigen';

  @override
  String get settingsBuddyMode => 'Buddy-Modus';

  @override
  String get settingsBuddyTerse => 'Kurz';

  @override
  String get settingsBuddyFriendly => 'Freundlich';

  @override
  String get settingsBuddyTerseHelp =>
      'So sagt Buddy einen Zug an: „13/8, 24/22“ – die Notation, die zwei Spieler am Brett tatsächlich verwenden.';

  @override
  String get settingsBuddyFriendlyHelp =>
      'So sagt Buddy einen Zug an: „Ziehe einen Stein von 13 nach 8 und einen von 24 nach 22.“';

  @override
  String get settingsListenForDice => 'Auf die Würfel hören';

  @override
  String get settingsListenForDiceHelp =>
      'Buddy prüft das Brett früher, wenn es einen Wurf hört. Aus ändert sonst nichts.';

  @override
  String get settingsDiagnostics => 'Diagnose';

  @override
  String get settingsErrorLog => 'Fehlerprotokoll';

  @override
  String get settingsErrorLogHelp =>
      'Letzte Fehler, bereit zum Kopieren in eine Fehlermeldung';

  @override
  String get settingsReportBug => 'Fehler melden';

  @override
  String get settingsReportBugHelp =>
      'Geführten Fehlerbericht auf GitHub öffnen';

  @override
  String get settingsSuggestIdea => 'Idee vorschlagen';

  @override
  String get settingsSuggestIdeaHelp =>
      'Hilf uns, Tutor und Spiel zu verbessern';

  @override
  String get settingsAbout => 'Über';

  @override
  String get settingsOpenSourceLicenses => 'Open-Source-Lizenzen';

  @override
  String settingsAppVersion(Object version) {
    return 'Backgammon Buddy $version';
  }

  @override
  String get tutorPhraseGameFinished => 'Spiel beendet.';

  @override
  String get tutorPhraseReviewFinishedGame =>
      'Sieh dir die Züge an und finde eine Entscheidung zum Üben.';

  @override
  String get tutorPhraseCubeOffered => 'Der Dopplerwürfel wurde angeboten.';

  @override
  String get tutorPhraseCubeDecisionPrompt =>
      'Entscheide, ob du annimmst oder ablehnst, bevor du einen Zug mit Steinen planst.';

  @override
  String get tutorPhraseCubeScoreContext =>
      'Der Matchstand verändert, wie viel der zusätzliche Einsatz wert ist.';

  @override
  String get tutorPhraseResignationOffered => 'Eine Aufgabe wurde angeboten.';

  @override
  String get tutorPhraseResignationDecisionPrompt =>
      'Vergleiche die angebotenen Punkte mit der Stellung, bevor du annimmst oder weiterspielst.';

  @override
  String get tutorPhraseNoLegalPlay => 'Mit diesem Wurf ist kein Zug möglich.';

  @override
  String get tutorPhraseForcedPassPrompt =>
      'Ein erzwungenes Aussetzen ist kein Fehler. Warte auf den nächsten Wurf.';

  @override
  String get tutorPhraseOnlyOneResult =>
      'Es gibt nur eine mögliche Stellung nach dem Zug.';

  @override
  String get tutorPhraseForcedTurnPrompt =>
      'Spiele den erzwungenen Zug. Bei diesem Wurf gibt es keine Entscheidung zu bewerten.';

  @override
  String get tutorPhrasePipCountsLevel => 'Die Pip-Zahlen sind gleich.';

  @override
  String tutorPhrasePipCountsAhead(int count) {
    return 'Du hast bei der Laufdistanz $count Pips Vorsprung.';
  }

  @override
  String tutorPhrasePipCountsBehind(int count) {
    return 'Du hast bei der Laufdistanz $count Pips Rückstand.';
  }

  @override
  String tutorPhrasePlayerHasCheckersOnBar(int count) {
    return '$count eigene Steine auf der Bar: zuerst wieder ins Spiel kommen.';
  }

  @override
  String get tutorPhraseEnterBeforeMoving =>
      'Ziehe zuerst einen Stein von der Bar ins Spiel und suche dann ein sicheres Zielfeld.';

  @override
  String tutorPhraseOpponentHomePoints(int count) {
    return 'Der Gegner hat $count geschlossene Felder im Heimfeld.';
  }

  @override
  String get tutorPhraseBearOffRace => 'Ausspielrennen.';

  @override
  String get tutorPhrasePureRace => 'Ein Rennen ohne Kontakt.';

  @override
  String get tutorPhraseBearOffSpread =>
      'Nimm Steine heraus und behalte eine nützliche Verteilung für den nächsten Wurf.';

  @override
  String get tutorPhraseBringRearCheckersHome =>
      'Bringe die hinteren Steine nach Hause, ohne zu viele auf einem Feld zu stapeln.';

  @override
  String get tutorPhraseArmiesHavePassed =>
      'Die Spieler sind aneinander vorbeigezogen; weitere Schläge sind nicht möglich.';

  @override
  String tutorPhraseContactStillMatters(Object part) {
    return '$part Der Kontakt bleibt wichtig.';
  }

  @override
  String tutorPhraseOpponentHasCheckersOnBar(int count) {
    return 'Der Gegner hat $count Steine auf der Bar.';
  }

  @override
  String get tutorPhraseKeepBoardClosed =>
      'Halte das Brett geschlossen, während du die übrigen Steine nach Hause bringst.';

  @override
  String get tutorPhraseBuildOrPreserveHomeBoard =>
      'Baue dein Heimfeld auf oder erhalte es, während der Gegner versucht einzutreten.';

  @override
  String tutorPhraseHomePointsCloseEntries(int count) {
    return 'Du hältst $count Heimfeldpunkte; jeder davon sperrt eine Eintrittszahl.';
  }

  @override
  String tutorPhrasePrimeContact(int count) {
    return 'Kontakt mit einer $count-Punkte-Mauer.';
  }

  @override
  String get tutorPhraseExtendPrimeOrKeepSpares =>
      'Vergleiche, ob du die Mauer verlängerst oder Reserve-Steine behältst, um sie zu halten.';

  @override
  String tutorPhraseSpareCheckersCanMove(int count) {
    return '$count Reserve-Steine können ziehen, ohne ihr Feld sofort zu öffnen.';
  }

  @override
  String tutorPhraseAnchorContact(Object points) {
    return 'Kontakt mit einem Anker auf $points.';
  }

  @override
  String get tutorPhraseCompareAnchorProgressAhead =>
      'Vergleiche den Heimweg deiner hinteren Steine damit, den sicheren Anker zu behalten.';

  @override
  String get tutorPhraseCompareAnchorProgressBehind =>
      'Behalte den sicheren Stützpunkt im Blick und suche nach einem Schlag oder einer Verbesserung deines Bretts.';

  @override
  String get tutorPhrasePreserveAnchorFoothold =>
      'Der Anker kann nicht geschlagen werden, aber diese Steine haben noch einen weiten Heimweg.';

  @override
  String get tutorPhraseContactThreats =>
      'Kontakt: Beide Seiten können noch Schläge androhen.';

  @override
  String get tutorPhraseLookForPointsAndSafety =>
      'Suche nach nützlichen Punkten und vergleiche dann das Risiko einzelner offener Steine.';

  @override
  String tutorPhraseHomePointsAndBlots(int count, int otherCount) {
    return 'Du hältst $count Heimfeldpunkte und lässt $otherCount Blots offen.';
  }

  @override
  String get tutorPhraseChooseCheckerPrompt =>
      'Wähle einen Stein, um deinen Zug zu beginnen.';

  @override
  String get tutorPhraseLegalPlayPrompt =>
      'Beginne einen legalen Zug, um einen Kommentar zu sehen.';

  @override
  String tutorPhraseStagedHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Steine',
      one: 'Stein',
    );
    return 'Du hast $count gegnerische $_temp0 geschlagen.';
  }

  @override
  String tutorPhraseStagedEnter(int count) {
    return 'Du hast $count Steine von der Bar ins Spiel gebracht.';
  }

  @override
  String tutorPhraseStagedBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Steine',
      one: 'Stein',
    );
    return 'Du hast $count $_temp0 herausgenommen.';
  }

  @override
  String tutorPhraseStagedMakePoints(Object points) {
    return 'Du hast $points gemacht.';
  }

  @override
  String tutorPhraseStagedBlot(int point) {
    return 'Der Stein auf deinem $point-Punkt ist vorerst ein einzelner offener Stein.';
  }

  @override
  String tutorPhraseStagedSpare(int point) {
    return 'Der Reserve-Stein auf deinem $point-Punkt kann später ziehen, ohne das Feld zu öffnen.';
  }

  @override
  String tutorPhraseStagedPartialPrompt(Object part) {
    return '$part Nutze die übrigen spielbaren Würfel, bevor du den ganzen Zug bewertest.';
  }

  @override
  String get tutorPhraseStagedAllCheckersOff =>
      'Alle 15 Steine sind herausgenommen: Das Spiel ist gewonnen.';

  @override
  String get tutorPhraseStagedHitShortPlan =>
      'Der Schlag bringt Zeit, während der Gegner wieder ins Spiel kommen muss.';

  @override
  String get tutorPhraseStagedEfficientBearOffPlan =>
      'Effizientes Herausnehmen entfernt Steine und lässt nützliche Zahlen für den nächsten Wurf übrig.';

  @override
  String get tutorPhraseStagedRaceHomePlan =>
      'Der Rennplan: die hinteren Steine nach Hause bringen und gute Felder zum Herausnehmen schaffen.';

  @override
  String get tutorPhraseStagedBearOffContactPlan =>
      'Herausnehmen bringt Fortschritt, aber durch den verbleibenden Kontakt sind Schläge weiter möglich.';

  @override
  String get tutorPhraseStagedReentryPlan =>
      'Der Wiedereintritt bringt den Stein zurück ins Spiel; als Nächstes suchst du ein sicheres Zielfeld.';

  @override
  String get tutorPhraseStagedHomeBoardPlan =>
      'Der neue Heimfeldpunkt sperrt nach einem künftigen Schlag eine Eintrittszahl.';

  @override
  String get tutorPhraseStagedPrimePlan =>
      'Die längere Mauer sperrt mehr Zielfelder; Reserve-Steine helfen, sie geschlossen zu halten.';

  @override
  String get tutorPhraseStagedLeaveAnchorPlan =>
      'Den Anker zu verlassen bringt dich voran, kostet aber den sicheren Stützpunkt.';

  @override
  String get tutorPhraseStagedNewAnchorPlan =>
      'Der neue Anker bietet den hinteren Steinen einen sicheren Stützpunkt.';

  @override
  String get tutorPhraseStagedCoverBlotPlan =>
      'Ein Blot abzudecken nimmt dem Gegner ein Ziel.';

  @override
  String get tutorPhraseStagedSafetyTradeoffPlan =>
      'Der Zielkonflikt: Entwicklung gegen Sicherheit. Nützliche Aufbausteine können auch zum Ziel werden.';

  @override
  String tutorPhraseStagedCompletePrompt(Object part) {
    return '$part Der ganze Zug ist bereit; mit „Bestätigen“ wird er ausgeführt.';
  }

  @override
  String get tutorMoveForcedVerdict =>
      'Bei diesem Wurf gibt es keine Wahl beim Ziehen; er wird nicht als Entscheidung bewertet.';

  @override
  String get tutorMoveTopVerdict =>
      'Für diese Stellung ist das die beste Wahl.';

  @override
  String get tutorMoveAlternativeVerdict =>
      'Der Rechner bevorzugt hier einen anderen Zug.';

  @override
  String tutorMoveEstimateDifference(Object loss) {
    return 'Abweichung vom besten Zug: $loss.';
  }

  @override
  String tutorMoveEstimateOutcomes(
    Object winPercent,
    Object winGammonPercent,
    Object loseGammonPercent,
  ) {
    return 'Nach diesem Zug: $winPercent% Gewinnchance, $winGammonPercent% für Gammon oder besser und $loseGammonPercent% für Gammon oder schlimmer. Die Schätzungen gelten aus Sicht des ziehenden Spielers.';
  }

  @override
  String tutorMoveEstimateMatchChance(Object percent) {
    return 'Geschätzte Match-Gewinnchance: $percent%.';
  }

  @override
  String get tutorMovePlanAllCheckersOff =>
      'Alle 15 Steine sind herausgenommen: Das Spiel ist gewonnen.';

  @override
  String tutorMovePlanHit(Object homeBoardAdvice) {
    return 'Nutze den Schlag, um Zeit zu gewinnen, während der Gegner wieder eintritt. $homeBoardAdvice';
  }

  @override
  String get tutorMovePlanHitClosed =>
      'Halte deine geschlossenen Heimfeldpunkte, damit der Wiedereintritt schwieriger wird.';

  @override
  String get tutorMovePlanHitBuild =>
      'Baue weitere Punkte im Heimfeld, damit sich der Gegner von künftigen Schlägen schwerer erholt.';

  @override
  String get tutorMovePlanRaceBearOff =>
      'Arbeite auf ein effizientes Ausspielen hin: Nimm Steine heraus und behalte günstige Zahlen für den nächsten Wurf.';

  @override
  String get tutorMovePlanRaceHome =>
      'Bring die hinteren Steine nach Hause und verteile sie auf günstige Punkte fürs Ausspielen.';

  @override
  String get tutorMovePlanContactBearOff =>
      'Nimm Steine aus dem Spiel, behalte aber die hinteren gegnerischen Steine im Blick: Bei Kontakt kann ein ungeschützter Stein zum Ziel werden.';

  @override
  String get tutorMovePlanReentry =>
      'Komm zurück ins Spiel und suche dann einen sicheren Punkt für den wiedereingetretenen Stein.';

  @override
  String get tutorMovePlanHomeBoard =>
      'Stärke dein Heimfeld. Der neu geschlossene Punkt macht einen künftigen Schlag wirkungsvoller, weil eine Eintrittszahl wegfällt.';

  @override
  String get tutorMovePlanPrime =>
      'Halte die geschlossene Punktreihe zusammen. Bewahre Reservesteine, damit spätere Würfe dich nicht zwingen, sie zu öffnen.';

  @override
  String get tutorMovePlanLeaveAnchor =>
      'Wenn du den Anker aufgibst, kommen deine hinteren Steine voran, verlieren aber ihren sicheren Halt. Achte auf ihre Gefährdung auf dem Heimweg.';

  @override
  String get tutorMovePlanNewAnchor =>
      'Nutze den neuen Anker als sicheren Halt, während du den Rest deiner Stellung verbesserst.';

  @override
  String get tutorMovePlanCoverBlot =>
      'Sichere deine Steine ab. Das Abdecken eines Blots beseitigt ein Ziel und lässt künftige Landepunkte offen.';

  @override
  String get tutorMovePlanSafety =>
      'Finde die Balance zwischen Entwicklung und Sicherheit: Bring Aufbausteine zu nützlichen Punkten und prüfe, welche Einzelsteine geschlagen werden können.';

  @override
  String get tutorMoveObservationNoLegalPlay =>
      'Kein legaler Zug mit einem Stein möglich: Der Zug muss aussetzen.';

  @override
  String tutorMoveObservationHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'gegnerische Steine',
      one: 'gegnerischen Stein',
    );
    return 'Schlägt $count $_temp0; der Gegner muss zuerst vom Bar eintreten, bevor er andere Steine ziehen kann.';
  }

  @override
  String tutorMoveObservationEntry(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Steine',
      one: 'Stein',
    );
    return 'Zieht $_temp0 vom Bar ins Spiel.';
  }

  @override
  String tutorMoveObservationBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Steine',
      one: 'Stein',
    );
    return 'Spielt $_temp0 heraus.';
  }

  @override
  String tutorMoveObservationMadePoints(Object points) {
    return 'Macht $points. Zwei oder mehr Steine sichern einen Punkt und blockieren dort die Landung des Gegners.';
  }

  @override
  String tutorMoveObservationBrokenPoints(Object pointLabel, Object points) {
    return 'Gibt gemachte $pointLabel $points auf. Diese Punkte blockieren den Gegner nun nicht mehr.';
  }

  @override
  String tutorMoveObservationNoBlots(int previousCount) {
    return 'Lässt keine einzelnen Steine ungedeckt (zuvor $previousCount). Es gibt keine einzelnen Steine, die geschlagen werden können.';
  }

  @override
  String tutorMoveObservationBlots(int count, int previousCount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'einzelne Steine',
      one: 'einzelnen Stein',
    );
    return 'Lässt $count ungedeckte $_temp0 zurück (zuvor $previousCount). Prüfe, ob der Gegner sie erreichen kann, bevor du Sicherheit einem anderen Vorteil vorziehst.';
  }

  @override
  String tutorMoveObservationPrimeRun(
    int count,
    int previousCount,
    Object primeAdvice,
  ) {
    return 'Längste Reihe geschlossener Punkte: $count (zuvor $previousCount). $primeAdvice';
  }

  @override
  String get tutorMoveObservationPrimeSix =>
      'Eine Sechserreihe geschlossener Punkte kann nicht übersprungen werden, solange sie geschlossen bleibt.';

  @override
  String get tutorMoveObservationPrimeBuild =>
      'Halte Aufbausteine in der Nähe, wenn du diese Reihe verlängern oder erhalten willst.';

  @override
  String tutorMoveObservationPrimeSpares(int count) {
    return '$count Reservesteine liegen über den zwei Steinen auf geschlossenen Punkten. Ein Reservezug kann den Punkt erhalten; einer der letzten beiden öffnet ihn.';
  }

  @override
  String tutorMoveObservationAnchors(Object points, Object previousPoints) {
    return 'Anker im gegnerischen Heimfeld: $points (zuvor $previousPoints). Ein Anker schützt die Steine vor Schlägen; ihn aufzugeben bringt sie im Rennen voran, kostet aber diesen sicheren Halt.';
  }

  @override
  String get tutorMoveObservationPureRace =>
      'Im reinen Rennen sind beide Seiten aneinander vorbeigezogen; kein Stein liegt auf der Bar. Schlagen ist nicht mehr möglich – jetzt zählt ein effizientes Ausspielen.';

  @override
  String get tutorMoveObservationNoReplyHit =>
      'Mit keinem legalen nächsten Wurf kann der Gegner in dieser Stellung schlagen. Kontakt besteht jedoch weiter; spätere Züge können neue Schlagmöglichkeiten schaffen.';

  @override
  String tutorMoveObservationReplyHit(
    int count,
    int total,
    int dieOne,
    int dieTwo,
    int point,
  ) {
    return 'Der Gegner kann bei $count von $total Würfen schlagen. Zum Beispiel ermöglicht $dieOne–$dieTwo einen legalen Schlag auf deinem $point-Punkt. Eine Schlagchance bedeutet nicht, dass der Gegner sie nutzt.';
  }

  @override
  String tutorMoveObservationOpponentBarHome(
    int closedPoints,
    Object entryAdvice,
  ) {
    return '$closedPoints deiner Heimfeldpunkte sind geschlossen. $entryAdvice';
  }

  @override
  String get tutorMoveObservationAllEntriesClosed =>
      'Der Gegner kann erst wieder eintreten, wenn ein Punkt frei wird.';

  @override
  String get tutorMoveObservationOpenEntry =>
      'Ein Wurf mit einer offenen Eintrittszahl kann einen Stein von der Bar zurückbringen.';

  @override
  String tutorMoveComparisonDetail(
    Object factors,
    Object delta,
    Object direction,
    Object scoreContext,
  ) {
    return '$factors Die geschätzte Gewinnchance des besten Zugs liegt $delta Prozentpunkte $direction.$scoreContext';
  }

  @override
  String get tutorMoveComparisonHigher => 'höher';

  @override
  String get tutorMoveComparisonLower => 'niedriger';

  @override
  String tutorMoveComparisonScoreContext(Object scoreContext) {
    return ' Er kann trotzdem besser bewertet sein, weil Gammons und Backgammons beim aktuellen $scoreContext unterschiedlich zählen.';
  }

  @override
  String get tutorMoveComparisonStake => 'Spielstand';

  @override
  String get tutorMoveComparisonMatchScore => 'Matchstand';

  @override
  String tutorMoveComparisonFactorBar(int bestCount, int playedCount) {
    return 'Der beste Zug lässt $bestCount gegnerische Steine auf dem Bar statt $playedCount. Ein Stein auf dem Bar muss erst eintreten, bevor der Gegner die anderen ziehen kann.';
  }

  @override
  String tutorMoveComparisonFactorHomeBoard(
    int bestCount,
    int playedCount,
    Object entryDifference,
  ) {
    return 'Der beste Zug hält $bestCount Heimfeldpunkte statt $playedCount geschlossen und damit $entryDifference Eintrittspunkte nach einem Schlag.';
  }

  @override
  String get tutorMoveComparisonClosingMore => 'mehr schließen';

  @override
  String get tutorMoveComparisonLeavingMore => 'mehr offen lassen';

  @override
  String tutorMoveComparisonFactorShots(
    int bestCount,
    int playedCount,
    Object riskDifference,
  ) {
    return 'Der beste Zug erlaubt einen Gegenschlag bei $bestCount von 36 Würfen statt bei $playedCount. $riskDifference';
  }

  @override
  String get tutorMoveComparisonReducesRisk =>
      'Das senkt das unmittelbare Risiko, geschlagen zu werden.';

  @override
  String get tutorMoveComparisonExtraExposure =>
      'Wäge diese zusätzliche Gefährdung gegen den sonstigen Gewinn des Zugs ab.';

  @override
  String tutorMoveComparisonFactorPrime(int bestCount, int playedCount) {
    return 'Die längste Reihe geschlossener Punkte des besten Zugs ist $bestCount statt $playedCount; vergleiche die Blockade mit den verfügbaren Steinen, um sie zu halten.';
  }

  @override
  String tutorMoveComparisonFactorAnchors(
    Object bestPoints,
    Object playedPoints,
  ) {
    return 'Der beste Zug hält $bestPoints Anker statt $playedPoints. Ein Anker bewahrt einen sicheren Landepunkt; ihn aufzugeben bringt die Steine näher nach Hause.';
  }

  @override
  String tutorMoveComparisonFactorBearOff(int bestCount, int playedCount) {
    return 'Beim besten Zug sind $bestCount statt $playedCount Steine ausgespielt. Jeder entfernte Stein muss später nicht mehr herausgenommen werden.';
  }

  @override
  String get tutorMoveComparisonFactorSimilarRisks =>
      'Beide Züge lassen dieselbe unmittelbare Schlaggefahr, Heimfeldpunkte, Anker und Anzahl ausgespielter Steine. Vergleiche die Landepunkte: Beim nächsten Wurf können sich die Steine anders nutzen lassen.';

  @override
  String get tutorMoveComparisonSummaryBar =>
      'Der beste Zug setzt mehr gegnerische Steine auf den Bar und verzögert damit deren übrige Züge.';

  @override
  String get tutorMoveComparisonSummaryHomeBoard =>
      'Der beste Zug schließt mehr Heimfeldpunkte und erschwert so den Wiedereintritt nach einem Schlag.';

  @override
  String get tutorMoveComparisonSummaryShots =>
      'Der beste Zug erlaubt weniger unmittelbare Schlagwürfe und verringert das Risiko, zurückgeschlagen zu werden.';

  @override
  String get tutorMoveComparisonSummaryPrime =>
      'Der beste Zug hält eine längere Reihe geschlossener Punkte.';

  @override
  String get tutorMoveComparisonSummaryAnchors =>
      'Der beste Zug behält mehr sichere Anker im gegnerischen Heimfeld.';

  @override
  String get tutorMoveComparisonSummaryBearOff =>
      'Der beste Zug spielt mehr Steine heraus; später müssen weniger entfernt werden.';

  @override
  String tutorMoveComparisonSummaryBlots(int playedCount, int bestCount) {
    return 'Dieser Zug lässt $playedCount einzelne Steine offen; der beste Zug lässt $bestCount.';
  }

  @override
  String tutorMoveComparisonSummarySafeAnchor(int point) {
    return 'Der beste Zug behält einen sicheren Anker auf Punkt $point.';
  }

  @override
  String get tutorMoveComparisonSummaryEntry =>
      'Der beste Zug schließt mehr Eintrittspunkte für den Fall, dass einer deiner Steine geschlagen wird.';

  @override
  String get tutorMoveComparisonSummarySimilarRisks =>
      'Die Züge haben ein ähnliches unmittelbares Risiko. Vergleiche, welche Landepunkte beim nächsten Wurf nützlich bleiben.';

  @override
  String tutorMoveAssessmentEquityLoss(Object value) {
    return '$value Equity';
  }

  @override
  String tutorMoveAssessmentMwcLoss(Object value) {
    return '$value Prozentpunkte Match-Gewinnchance';
  }

  @override
  String get tutorMovePointSingular => 'Punkt';

  @override
  String get tutorMovePointPlural => 'Punkte';

  @override
  String get tutorMoveNoPoints => 'keine';

  @override
  String get gameTutorCommentaryOff => 'Spielkommentar ist ausgeschaltet.';

  @override
  String get gameTutorToolsAvailable =>
      'Öffne den Tutor für die aktivierten Werkzeuge.';

  @override
  String get gameTutorNextRoll => 'Als Nächstes würfeln.';

  @override
  String get gameTutorNoEvaluatedReview =>
      'Für diesen aufgezeichneten Zug liegt keine bewertete Erklärung vor.';

  @override
  String get gameTutorAnalysisUnavailable => 'Analyse nicht verfügbar';

  @override
  String get gameTutorReviewing => 'Wird analysiert …';

  @override
  String get gameTutorTryYourPlayFirst => 'Probiere zuerst deinen eigenen Zug.';

  @override
  String get gameTutorKeepBuilding => 'Führe deinen Zug weiter aus.';

  @override
  String get gameTutorStageCompleteBeforeCoaching =>
      'Führe einen vollständigen legalen Zug aus, bevor du Coaching oder Tipps aufrufst.';

  @override
  String get gameTutorReadyToConfirm => 'Bereit zum Bestätigen';

  @override
  String get gameTutorPlayTakingShape => 'Dein Zug nimmt Gestalt an.';

  @override
  String get gameTutorConfirmOrUndo =>
      'Bestätige den Zug oder mache ihn rückgängig.';

  @override
  String get gameTutorFinishDiceOrUndo =>
      'Führe die übrigen Würfel aus oder mache den Zug rückgängig.';

  @override
  String get gameTutorComputerConsidering =>
      'Der Computer überlegt seinen Zug.';

  @override
  String get gameTutorComputerPlayReviewed =>
      'Sein abgeschlossener Zug wird hier analysiert.';

  @override
  String get gameTutorYourPlay => 'Dein Zug';

  @override
  String get gameTutorComputer => 'Computer';

  @override
  String gameTutorPlayQuality(Object quality) {
    return 'Dein Zug: $quality';
  }

  @override
  String get gameTutorForcedPlay => 'erzwungener Zug';

  @override
  String get gameTutorTopChoice => 'beste Wahl';

  @override
  String get gameTutorSoundPlay => 'guter Zug';

  @override
  String get gameTutorAnotherPlayMayFitBetter =>
      'Ein anderer Zug könnte besser passen.';

  @override
  String get gameTutorAnotherPlayFitsBetter =>
      'Ein anderer Zug passt besser zu dieser Stellung.';

  @override
  String get gameTutorStrongerPlayAvailable =>
      'Es gab einen deutlich stärkeren Zug.';

  @override
  String gameTutorPositionEdge(Object side) {
    return '$side hat laut Einschätzung einen Vorteil.';
  }

  @override
  String get gameTutorPositionEven => 'Die Stellung ist ungefähr ausgeglichen.';

  @override
  String tutorPlayedMove(Object move) {
    return 'Gespielt: $move';
  }

  @override
  String tutorBestMove(Object move) {
    return 'Bester Zug: $move';
  }

  @override
  String get tutorShowRankedPlays => 'Beste Züge anzeigen';

  @override
  String get tutorReviewRecordedMove =>
      'Tippe im Protokoll auf einen abgeschlossenen Zug, um die Entscheidung hier zu prüfen.';

  @override
  String get tutorTopPlays => 'Beste Züge';

  @override
  String get tutorNoHintsAvailable => 'Keine Hinweise verfügbar.';

  @override
  String get tutorPreviewThenConfirm =>
      'Tippe auf einen Zug, um ihn auf dem Brett vorzuspielen, und bestätige dann.';

  @override
  String get tutorTopChoiceForPosition => 'Beste Wahl für diese Stellung';

  @override
  String get tutorAlternativePlay => 'Alternativer Zug';

  @override
  String get tutorEngineEstimates => 'Engine-Schätzungen';

  @override
  String get tutorEstimateScope =>
      '0-Ply-Schätzung · aktueller Spielstand und Einsatz · keine zukünftigen Dopplerentscheidungen';

  @override
  String get tutorEquity => 'Erwartungswert';

  @override
  String get tutorMwcPercent => 'MWC %';

  @override
  String get tutorNearTiesNote =>
      'Bei knappen Bewertungen kann eine tiefere Analyse die Reihenfolge ändern.';

  @override
  String get tutorWhyThisPlay => 'Warum dieser Zug?';

  @override
  String get tutorCompareAlternative => 'Diese Alternative vergleichen';

  @override
  String get gameTutorCubeTake => 'Trainer: Annehmen';

  @override
  String get gameTutorCubePass => 'Trainer: Passen';

  @override
  String get practiceScreenTitle => 'Entscheidung üben';

  @override
  String get practiceUnavailable =>
      'Diese Übungsposition ist nicht mehr verfügbar.';

  @override
  String get practiceSubmitError =>
      'Dieser Versuch konnte nicht ausgewertet oder gespeichert werden. Dein Fortschritt blieb unverändert. Versuch es noch einmal.';

  @override
  String practiceTurnLabel(Object side, Object dice) {
    return '$side am Zug · $dice';
  }

  @override
  String get practiceHistoricalScoreUnavailable =>
      'Historischer Spielstand nicht verfügbar; die Bewertung nutzt Cube-less-Equity.';

  @override
  String practiceScoreLine(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return 'Spielstand: $whiteLabel $whiteScore – $blackLabel $blackScore, bis $matchLength';
  }

  @override
  String get practiceCrawfordGame => ' · Crawford-Partie';

  @override
  String get practiceNoDoublingCube => 'Kein Verdopplungswürfel.';

  @override
  String practiceCubeValue(int value) {
    return 'Würfel $value.';
  }

  @override
  String get practiceHistoricalCubeUnknown =>
      'Historische Würfelregeln unbekannt.';

  @override
  String get practiceAfterBestPosition => 'Stellung nach dem besten Zug';

  @override
  String get practiceAfterYourAnswerPosition => 'Stellung nach deiner Antwort';

  @override
  String get practiceFindYourPlayPrompt =>
      'Finde deinen Zug auf dem Brett und prüfe dann deine Antwort. Es gibt keine Hinweise.';

  @override
  String get practiceUndo => 'Rückgängig';

  @override
  String get practiceCheckAnswer => 'Antwort prüfen';

  @override
  String get practiceRevealNoCredit => 'Antwort aufdecken (ohne Wertung)';

  @override
  String get practiceAnswerRevealedNoCredit =>
      'Antwort aufgedeckt – keine Anerkennung für Erinnerungsleistung.';

  @override
  String practiceGradeLine(Object verdict, Object loss) {
    return '$verdict · $loss';
  }

  @override
  String practiceBestMoveLine(Object move) {
    return 'Am besten: $move';
  }

  @override
  String practiceOriginalGameLine(Object move, Object loss) {
    return 'Ursprüngliche Partie: $move · $loss';
  }

  @override
  String practiceYourAnswerLine(Object move) {
    return 'Deine Antwort: $move';
  }

  @override
  String get practiceYourAnswerChip => 'Deine Antwort';

  @override
  String get practiceBestPlayChip => 'Bester Zug';

  @override
  String practiceNextReview(Object date) {
    return 'Nächste Wiederholung: $date.';
  }

  @override
  String get practiceRecallCredit =>
      'Beste oder gute Antworten zählen als erfolgreich erinnert. Vorzeitige Wiederholungen verlängern den Abstand nicht.';

  @override
  String get practiceBackToLearning => 'Zurück zum Lernen';

  @override
  String get practiceMarkBest => 'Am besten';

  @override
  String get practiceMarkGood => 'Gut';

  @override
  String get practiceMarkDubious => 'Fragwürdig';

  @override
  String get practiceMarkError => 'Fehler';

  @override
  String get practiceMarkBlunder => 'Patzer';

  @override
  String get practiceMarkForced => 'Erzwungen';

  @override
  String get newMatchYourSide => 'Deine Seite';

  @override
  String get newMatchTutorMode => 'Tutor-Modus';

  @override
  String get newMatchTutorDescription =>
      'Lerne mit Hinweisen, Erklärungen und Spielkommentaren';

  @override
  String get newMatchTutoringOptions => 'Tutoring-Optionen';

  @override
  String get newMatchTutoringOptionsDescription =>
      'Für diese Partie; während des Spiels anpassbar';

  @override
  String get setupMatchLength => 'Matchlänge';

  @override
  String get setupDifficulty => 'Schwierigkeit';

  @override
  String get setupDifficultyEasy => 'Leicht';

  @override
  String get setupDifficultyMedium => 'Mittel';

  @override
  String get setupDifficultyHard => 'Schwer';

  @override
  String get setupDifficultyExpert => 'Experte';

  @override
  String get setupPlayWithoutCube => 'Ohne Verdopplungswürfel spielen';

  @override
  String get setupNoCubeThisMatch => 'In diesem Match kein Verdopplungswürfel';

  @override
  String get analysisTitle => 'Analyse';

  @override
  String get gameMatchSummary => 'Matchübersicht';

  @override
  String get gameAnalyzeGame => 'Partie analysieren';

  @override
  String get analysisMetricsTooltip => 'Was bedeuten diese Zahlen?';

  @override
  String analysisError(Object error) {
    return 'Partie konnte nicht analysiert werden: $error';
  }

  @override
  String get analysisNoPositions => 'Diese Partie enthält keine Stellungen.';

  @override
  String get analysisInProgress => 'Partie wird analysiert…';

  @override
  String analysisPercent(int percent) {
    return '$percent%';
  }

  @override
  String get analysisPlayed => 'Gespielt';

  @override
  String get analysisBest => 'Beste';

  @override
  String get analysisPrevious => 'Zurück';

  @override
  String get analysisNext => 'Weiter';

  @override
  String get analysisPositionBeforeCube => 'Stellung vor der Cube-Entscheidung';

  @override
  String get analysisPositionAtPoint => 'Stellung an diesem Punkt der Partie';

  @override
  String get analysisShowingBestBefore =>
      'Bester Zug vor dem Zug wird angezeigt';

  @override
  String get analysisShowingBefore => 'Stellung vor dem Zug wird angezeigt';

  @override
  String analysisVerdictLine(Object side, Object verdict, Object loss) {
    return '$side: $verdict$loss';
  }

  @override
  String analysisMoveLoss(Object loss) {
    return ' −$loss';
  }

  @override
  String get analysisExcludedFromAverages =>
      ' · nicht im Durchschnitt enthalten';

  @override
  String get analysisNoPlay => '(kein Zug)';

  @override
  String analysisBestMoveLine(Object move) {
    return 'Bester Zug: $move';
  }

  @override
  String get analysisExplain => 'Erklären';

  @override
  String get analysisSaveForPractice => 'Zum Üben speichern';

  @override
  String get analysisSaveError =>
      'Diese Entscheidung konnte nicht gespeichert werden. Bitte versuche es erneut.';

  @override
  String analysisCubeInfo(
    Object side,
    Object action,
    Object mark,
    Object loss,
  ) {
    return '$side: $action · $mark · Verlust $loss';
  }

  @override
  String get analysisCubeDecision => 'Cube-Entscheidung';

  @override
  String analysisCubePlayed(Object action, Object percent) {
    return 'Gespielt: $action ($percent% Matchchance).';
  }

  @override
  String analysisCubeBest(Object action, Object percent) {
    return 'Am besten: $action ($percent% Matchchance).';
  }

  @override
  String get analysisCubeEstimate =>
      '0-Ply-Schätzung aus Sicht des ziehenden Spielers. Nimmt eine optimale Annahme- oder Pass-Entscheidung an. Verwendet für den angenommenen Double-Zweig eine Cube-Life-Näherung von 0,7, keine vollständige Suche nach späteren Redoubles. Eine tiefere Analyse kann das Ergebnis ändern.';

  @override
  String get analysisClose => 'Schließen';

  @override
  String get analysisMoves => 'Züge';

  @override
  String get analysisForced => 'Erzwungen';

  @override
  String get analysisMarkBest => 'Beste';

  @override
  String get analysisMarkGood => 'Gut';

  @override
  String get analysisMarkDubious => 'Fragwürdig';

  @override
  String get analysisMarkError => 'Fehler';

  @override
  String get analysisMarkBlunder => 'Patzer';

  @override
  String analysisSummaryMeanLoss(Object loss) {
    return 'Durchschnittlicher Verlust $loss';
  }

  @override
  String analysisSummaryCheckerDecisions(int count) {
    return '$count Zugentscheidungen';
  }

  @override
  String analysisSummaryBlunders(int count) {
    return 'Patzer $count';
  }

  @override
  String analysisSummaryCubeLoss(Object loss) {
    return 'Cube-Verlust $loss';
  }

  @override
  String analysisRollWithoutDoubling(Object side) {
    return '$side würfelt ohne zu verdoppeln';
  }

  @override
  String get metricExplainerTitle => 'Die Kennzahlen verstehen';

  @override
  String get metricExplainerTooltip => 'Was bedeuten diese Zahlen?';

  @override
  String get metricExplainerMwcTitle => 'Matchgewinnchance (MWC)';

  @override
  String get metricExplainerMwcBody =>
      'Wenn der Spielstand bekannt ist, werden Züge nach der geschätzten Matchgewinnchance bewertet. Der Verlust wird in Prozentpunkten (pp) angegeben: 1 pp bedeutet, dass 51 % auf 50 % sinken. Der aktuelle Cube-Einsatz und Gammon-/Backgammon-Ergebnisse zählen mit. Erzwungene Pässe und Würfe mit nur einer legalen Stellung fließen nicht in den Durchschnitt ein.';

  @override
  String get metricExplainerSearchTitle => 'Suche und Unsicherheit';

  @override
  String get metricExplainerSearchBody =>
      'Die Zugbewertung sind statische 0-Ply-Schätzungen nach dem Zug, keine Rollouts. Matchwerte verwenden eine Match-Equity-Tabelle ohne zukünftige Cube-Züge. Cube-Analysen verwenden bei angenommenen Doubles eine teilweise Cube-Life-Näherung von 0,7. Das ist keine vollständige Suche mit Cube. Für Rückstände über 25 verwendet die Tabelle ihre 25-away-Grenze. Enge Ergebnisse können sich bei tieferer Analyse ändern; es gibt kein kalibriertes Konfidenzintervall.';

  @override
  String get metricExplainerEquityTitle => 'Equity';

  @override
  String get metricExplainerEquityBody =>
      'Wenn der Spielstand fehlt, zeigt cubeless Equity den durchschnittlichen Punktwert einer Stellung bei Cube 1. +1,0 bedeutet einen erwarteten Punktgewinn; −0,5 einen erwarteten halben Punktverlust.';

  @override
  String get metricExplainerEquityLossTitle => 'Equity-Verlust (z. B. −0,016)';

  @override
  String get metricExplainerEquityLossBody =>
      'Für jeden Zug vergleichen wir deinen Zug mit dem besten Zug der Engine. Der Equity-Verlust zeigt den aufgegebenen Erwartungswert. −0,016 bedeutet nur 0,016 Punkte weniger als beim besten Zug – ein kleiner Fehler. 0,000 bedeutet, dass du den besten Zug gefunden hast.';

  @override
  String get metricExplainerErrorRateTitle => 'Fehlerquote';

  @override
  String get metricExplainerErrorRateBody =>
      'Der durchschnittliche Verlust fasst deine bewerteten Zugentscheidungen in der angezeigten Einheit zusammen. Cube-Entscheidungen haben einen eigenen Durchschnitt. Niedriger heißt näher an den Top-Schätzungen dieser Engine; es ist keine kalibrierte Spielerstärke.';

  @override
  String get metricExplainerMoveMarksTitle => 'Zugbewertungen';

  @override
  String get metricExplainerMoveMarksBody =>
      'MWC-Lernstufen: Beste < 0,05 pp, Gut < 0,5 pp, Fragwürdig < 1,5 pp, Fehler < 3 pp, Patzer ≥ 3 pp. Diese Produktstufen sind keine kalibrierte Sicherheit oder Turnierwertung.\n\nLernstufen für cubeless Equity:';

  @override
  String get metricExplainerThresholdBest => 'Verlust < 0,001';

  @override
  String get metricExplainerThresholdGood => 'Verlust < 0,020';

  @override
  String get metricExplainerThresholdDubious => 'Verlust < 0,050';

  @override
  String get metricExplainerThresholdError => 'Verlust < 0,110';

  @override
  String get metricExplainerThresholdBlunder => 'Verlust ≥ 0,110';

  @override
  String get metricExplainerGotIt => 'Verstanden';

  @override
  String get historyTitle => 'Spielverlauf';

  @override
  String historyLoadFailed(Object error) {
    return 'Spielverlauf konnte nicht geladen werden:\n$error';
  }

  @override
  String get historyEmpty => 'Noch keine Matches gespielt.';

  @override
  String get historyDeleteConfirmTitle => 'Dieses Match löschen?';

  @override
  String historyDeleteConfirmBody(Object scoreLine) {
    return '$scoreLine\n\nDas Match und alle darin gespeicherten Partien werden dauerhaft gelöscht. Das kann nicht rückgängig gemacht werden.';
  }

  @override
  String get actionCancel => 'Abbrechen';

  @override
  String get actionDelete => 'Löschen';

  @override
  String get historyDeleteFailed =>
      'Dieses Match konnte nicht gelöscht werden.';

  @override
  String get historyComplete => 'Abgeschlossen';

  @override
  String historyWinner(Object side) {
    return '$side hat gewonnen';
  }

  @override
  String get historyUnfinished => 'Nicht beendet';

  @override
  String get historyMatchTitle => 'Match';

  @override
  String historyMatchLoadFailed(Object error) {
    return 'Match konnte nicht geladen werden:\n$error';
  }

  @override
  String historyGamesLoadFailed(Object error) {
    return 'Partien konnten nicht geladen werden:\n$error';
  }

  @override
  String get historyNoGames => 'Noch keine Partien gespeichert.';

  @override
  String historyGameTitle(int number) {
    return 'Partie $number';
  }

  @override
  String get historyCrawford => 'Crawford';

  @override
  String historyScoreLine(int whiteScore, int blackScore, int matchLength) {
    return 'Weiß $whiteScore — $blackScore Schwarz (bis $matchLength)';
  }

  @override
  String get historyModeComputer => 'gegen Computer';

  @override
  String get historyModeTwoPlayers => 'Zwei Spieler';

  @override
  String get historyModeOnline => 'Online';

  @override
  String get historyModeNearby => 'Lokal spielen';

  @override
  String get historyModeBuddy => 'Buddy';

  @override
  String get historyGameInProgress => 'Läuft';

  @override
  String historyGameResult(Object side, int points, Object outcome) {
    return '$side gewinnt $points ($outcome)';
  }

  @override
  String get historyOutcomeSingle => 'einfach';

  @override
  String get historyOutcomeGammon => 'Gammon';

  @override
  String get historyOutcomeBackgammon => 'Backgammon';

  @override
  String get learningRefreshTooltip => 'Lernfortschritt aktualisieren';

  @override
  String get learningOptions => 'Lernoptionen';

  @override
  String get learningResetMenu => 'Übungsfortschritt zurücksetzen';

  @override
  String get learningLoadFailed =>
      'Lernfortschritt konnte nicht geladen werden.';

  @override
  String get actionRetry => 'Erneut versuchen';

  @override
  String get learningHeading => 'Lerne aus deinen Entscheidungen';

  @override
  String get learningIntro =>
      'Dein Fortschritt bleibt auf diesem Gerät. Sieh dir wiederkehrende Themen an und übe gespeicherte Stellungen erneut, ohne die Antwort zu sehen. Weiß und Schwarz kannst du getrennt überprüfen.';

  @override
  String get learningBothSides => 'Beide Seiten';

  @override
  String get learningHumansOnly => 'Nur menschliche Entscheidungen';

  @override
  String get learningHumanOnlyHelp =>
      'Deaktivieren, um Entscheidungen des Computers und entfernter Spieler einzubeziehen';

  @override
  String learningDecisionSummary(int decisions, int mistakes, int blunders) {
    return '$decisions Entscheidungen · $mistakes verbesserungswürdig · $blunders Patzer';
  }

  @override
  String learningAverageLoss(int decisions, Object loss) {
    return 'Durchschnittlicher Verlust ($decisions Entscheidungen): $loss';
  }

  @override
  String get learningForcedDisclaimer =>
      'Erzwungene Züge sind ausgeschlossen. Dies sind Engine-Schätzungen, keine Turnierwertung.';

  @override
  String learningGamesNeedingAnalysis(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          '# gespeicherte Partien müssen analysiert oder erneut analysiert werden.',
      one:
          '# gespeicherte Partie muss analysiert oder erneut analysiert werden.',
    );
    return '$_temp0';
  }

  @override
  String get learningAnalyseSavedGames => 'Gespeicherte Partien analysieren';

  @override
  String get learningEmptyProfile =>
      'Spiele und beende eine Partie, um dein Lernprofil aufzubauen. Du kannst auch einzelne Entscheidungen aus einer Partie-Wiederholung speichern.';

  @override
  String get learningOpenHistory => 'Spielverlauf öffnen';

  @override
  String get learningRecurringThemes => 'Wiederkehrende Themen';

  @override
  String get learningNoThemes =>
      'In dieser Auswahl gibt es noch keine wiederkehrenden Fehlerthemen.';

  @override
  String learningThemeDecisions(int count) {
    return '$count Entscheidungen zum Wiederholen. Eine Stellung kann mehrere Themen haben.';
  }

  @override
  String get learningSaveMistakes => 'Diese Fehler zum Üben speichern';

  @override
  String learningSavedMistakes(int count) {
    return '$count Entscheidungen sind in deiner Übungsliste. Bereits gespeicherte bleiben erhalten.';
  }

  @override
  String get learningSaveMistakesFailed =>
      'Einige Entscheidungen konnten nicht gespeichert werden. Erfolgreiche Speicherungen bleiben erhalten; du kannst es erneut versuchen.';

  @override
  String get learningSpacedPractice => 'Verteiltes Üben';

  @override
  String learningPracticeCounts(
    int due,
    int saved,
    int attempts,
    int successes,
  ) {
    return '$due jetzt fällig · $saved gespeichert · $attempts Versuche · $successes erfolgreiche Erinnerungen';
  }

  @override
  String get learningIntervalsHelp =>
      'Erfolgreiche fällige Wiederholungen erfolgen nach 1, 3, 7, 14 und 30 Tagen. Fehler oder aufgedeckte Antworten kommen nach 10 Minuten zurück. Vorzeitige Wiederholungen ändern den Abstand nicht.';

  @override
  String get learningAnswerContext =>
      'Die Übungsergebnisse spiegeln deine Antworten hier wider, auch wenn die ursprüngliche Stellung einem Gegner gehörte.';

  @override
  String get learningNoSavedPositions =>
      'Speichere eine Entscheidung aus einer Wiederholung oder nutze oben die Schaltfläche für Fehler.';

  @override
  String learningPositionTitle(Object side, int gameId) {
    return 'Entscheidung von $side · Partie $gameId';
  }

  @override
  String learningReviewDue(Object date) {
    return 'Wiederholen: $date';
  }

  @override
  String get learningReadyToReview => 'Bereit zur Wiederholung';

  @override
  String learningSuccessStreak(int count) {
    return '$count erfolgreiche fällige Wiederholungen';
  }

  @override
  String get learningRemoveTooltip => 'Gespeicherte Entscheidung entfernen';

  @override
  String get learningRecentPractice => 'Letzte Übungen';

  @override
  String get learningAnswerRevealed => 'Antwort aufgedeckt';

  @override
  String get learningSuccessfulRecall => 'Erfolgreich erinnert';

  @override
  String get learningTryAgain => 'Diese Entscheidung erneut versuchen';

  @override
  String learningAttemptSubtitle(Object date, int positionId) {
    return '$date · gespeicherte Stellung $positionId';
  }

  @override
  String get learningRemoveTitle => 'Diese Übung entfernen?';

  @override
  String get learningRemoveBody =>
      'Dadurch werden die Übungsversuche gelöscht. Die ursprüngliche Partie bleibt im Verlauf.';

  @override
  String get actionRemove => 'Entfernen';

  @override
  String get learningRemoveFailed =>
      'Diese Übung konnte nicht entfernt werden.';

  @override
  String get learningResetTitle => 'Übungsfortschritt zurücksetzen?';

  @override
  String get learningResetBody =>
      'Alle Übungsversuche und Wiederholungsabstände werden gelöscht. Gespeicherte Übungen und dein Spielverlauf bleiben erhalten; alle Übungen sind danach sofort fällig.';

  @override
  String get learningResetAction => 'Fortschritt zurücksetzen';

  @override
  String get learningResetFailed =>
      'Übungsfortschritt konnte nicht zurückgesetzt werden.';

  @override
  String learningAnalysisProgress(int completed, int failed) {
    return '$completed Partien analysiert · $failed nicht verfügbar.';
  }

  @override
  String learningAnalysisComplete(int completed) {
    return '$completed Partien analysiert.';
  }

  @override
  String learningAnalysisCompleteWithErrors(int completed, int failed) {
    return '$completed Partien analysiert; $failed konnten nicht analysiert werden. Versuche es erneut, wenn die Engine bereit ist.';
  }

  @override
  String get learningThemeHitting => 'Schlagen und Tempo';

  @override
  String get learningThemeSafety => 'Einzelne Steine und Sicherheit';

  @override
  String get learningThemePointMaking => 'Punkte bilden';

  @override
  String get learningThemePrime => 'Prim und Blockade';

  @override
  String get learningThemeAnchor => 'Anker und Ausbruch';

  @override
  String get learningThemeRace => 'Rennspiel-Effizienz';

  @override
  String get learningThemeBearOff => 'Abtragen';

  @override
  String get learningThemeBarEntry => 'Vom Brett eintreten';

  @override
  String get learningThemeCube => 'Cube-Entscheidungen';

  @override
  String get analysisCubeNoDouble => 'Kein Double';

  @override
  String get analysisCubeDouble => 'Doppeln';

  @override
  String get analysisCubeTake => 'Annehmen';

  @override
  String get analysisCubePass => 'Passen';

  @override
  String get learningAnalysisStarting =>
      'Gespeicherte Partien werden analysiert…';

  @override
  String get tutorCubelessEstimateScope =>
      'Cube-less-Schätzung ohne Rollouts · Spielstand nicht verfügbar';

  @override
  String get tutorLossPp => 'Verlust pp';

  @override
  String get tutorLoss => 'Verlust';

  @override
  String get scoreSheetNoMoves => 'Noch keine Züge';

  @override
  String get tutorOptions => 'Tutoring-Optionen';

  @override
  String get tutorCollapseTooltip => 'Tutor einklappen';

  @override
  String get tutorExpandTooltip => 'Tutor ausklappen';

  @override
  String get onlineTitle => 'Online spielen';

  @override
  String get onlineUnassistedNote =>
      'Online-Partien werden nicht vom Tutor begleitet. Überprüfe deine Züge und übe Fehler nach dem Match.';

  @override
  String get onlineNotConfiguredTitle =>
      'Online-Spiel ist in diesem Build nicht eingerichtet';

  @override
  String get onlineNotConfiguredBody =>
      'In diesem Build ist kein Firebase-Backend eingerichtet; Matches können nicht erstellt oder beigetreten werden.';

  @override
  String get onlineErrorNoMatch =>
      'Kein Match mit diesem Code. Prüfe ihn und versuche es erneut.';

  @override
  String get onlineErrorSeatTaken =>
      'Dieses Match ist nicht mehr offen – der Platz wurde bereits belegt.';

  @override
  String get onlineErrorPermission =>
      'Du hast keinen Zugriff auf dieses Match.';

  @override
  String get onlineErrorGeneric =>
      'Etwas ist schiefgelaufen. Bitte versuche es erneut.';

  @override
  String get onlineMatchFinished =>
      'Dieses Match ist beendet – es kann nicht mehr fortgesetzt werden.';

  @override
  String get onlineEnterCodeError => 'Matchcode eingeben.';

  @override
  String get onlineOpponentShort => 'Gegner';

  @override
  String get onlineMatchInProgress => 'Match läuft';

  @override
  String onlineResumePrompt(Object code) {
    return 'Du hast Match $code gespielt.';
  }

  @override
  String get onlineRejoin => 'Fortsetzen';

  @override
  String get onlineForgetMatch => 'Dieses Match vergessen';

  @override
  String get onlineCreateTitle => 'Match erstellen';

  @override
  String get onlineMatchLength => 'Matchlänge';

  @override
  String get onlineNoCubeTitle => 'Ohne Verdopplungswürfel spielen';

  @override
  String get onlineNoCubeSubtitle => 'In diesem Match kein Verdopplungswürfel';

  @override
  String get onlineCreate => 'Erstellen';

  @override
  String get onlineWaitingOpponent => 'Warte auf Gegner…';

  @override
  String get onlineShareCode => 'Diesen Code teilen';

  @override
  String get onlineCopyCode => 'Code kopieren';

  @override
  String get onlineCodeCopied => 'Code kopiert';

  @override
  String get onlineJoinTitle => 'Match beitreten';

  @override
  String get onlineRoomCode => 'Matchcode';

  @override
  String get onlineJoin => 'Beitreten';

  @override
  String get lanTitle => 'Lokal spielen';

  @override
  String get lanTabHost => 'Hosten';

  @override
  String get lanTabJoin => 'Beitreten';

  @override
  String get lanUnassistedNote =>
      'Lokale Partien werden nicht vom Tutor begleitet. Überprüfe deine Züge und übe Fehler nach dem Match.';

  @override
  String get lanGameStartFailed =>
      'Das Spiel konnte nicht gestartet werden. Das andere Gerät kann erneut beitreten.';

  @override
  String get lanHostPortInUse =>
      'Hosting nicht möglich – der Port wird bereits verwendet. Schließe andere Backgammon-Buddy-Instanzen und versuche es erneut.';

  @override
  String get lanHostStartFailed =>
      'Hosting nicht möglich. Prüfe deine WLAN-Verbindung und versuche es erneut.';

  @override
  String get lanHostTitle => 'Partie hosten';

  @override
  String get lanStartHosting => 'Hosting starten';

  @override
  String get lanHostHelp =>
      'Beide Geräte müssen im selben WLAN sein. Dieses Gerät würfelt und führt den Spielstand.';

  @override
  String get lanWaitingPlayerTitle => 'Warte auf einen Spieler';

  @override
  String get lanRoomCodeInfo =>
      'Teile dem anderen Spieler diesen Code mit. Er ermöglicht den Beitritt – die App sendet ihn nie über das Netzwerk.';

  @override
  String get lanWaitingPlayer => 'Warte auf einen Spieler…';

  @override
  String get lanStopHosting => 'Hosting beenden';

  @override
  String lanFindNearbyPort(int port) {
    return 'Bitte das andere Gerät, nach lokalen Spielen zu suchen. Lausche auf Port $port.';
  }

  @override
  String get lanOnNetwork => 'In diesem Netzwerk';

  @override
  String get lanCopyAddress => 'Adresse kopieren';

  @override
  String get lanAddressCopied => 'Adresse kopiert';

  @override
  String get lanScanHostTitle => 'Host scannen';

  @override
  String get lanScanHostHelp =>
      'Das andere Gerät zeigt auf seinem Host-Bildschirm einen QR-Code. Durch das Scannen werden Adresse und Raumcode übernommen.';

  @override
  String get lanScanQr => 'QR-Code scannen';

  @override
  String get lanScannerUnavailable =>
      'Kamera oder Berechtigung nicht verfügbar. Gib stattdessen unten Adresse und Raumcode ein.';

  @override
  String get lanInvalidQr =>
      'Dieser QR-Code gehört nicht zu Backgammon Buddy. Scanne den Code auf dem Host-Bildschirm des anderen Geräts.';

  @override
  String get lanScannerFailed =>
      'Scanner konnte nicht geöffnet werden. Gib stattdessen unten Adresse und Code ein.';

  @override
  String get lanNearbyGames => 'Spiele in der Nähe';

  @override
  String get lanSearching => 'Suche nach Spielen in der Nähe…';

  @override
  String get lanNoGamesFound =>
      'Keine Spiele gefunden. Stelle sicher, dass das andere Gerät hostet und beide im selben WLAN sind – oder gib unten seine Adresse ein.';

  @override
  String get lanStillSearching => 'Suche läuft weiter…';

  @override
  String get lanEnterAddress => 'Adresse eingeben';

  @override
  String get lanEnterAddressHelp =>
      'Die automatische Suche funktioniert nicht in jedem Netzwerk und kann unter iOS ganz blockiert sein. Auf dem Host-Bildschirm siehst du, was du eingeben musst.';

  @override
  String get lanIpAddress => 'IP-Adresse';

  @override
  String get lanPort => 'Port';

  @override
  String get lanInvalidPort => 'Portnummer zwischen 1 und 65535 eingeben.';

  @override
  String get lanEnterAddressError =>
      'Gib die auf dem anderen Gerät angezeigte Adresse ein.';

  @override
  String get lanEnterRoomCodeError =>
      'Gib den vierstelligen Code des anderen Geräts ein.';

  @override
  String get lanJoinWrongCode =>
      'Falscher Raumcode. Prüfe die vier Ziffern auf dem anderen Gerät.';

  @override
  String get lanJoinVersionMismatch =>
      'Auf dem anderen Gerät läuft eine andere Backgammon-Buddy-Version.';

  @override
  String get lanJoinHandshakeFailed =>
      'Das Gerät antwortet nicht wie Backgammon Buddy. Prüfe Adresse und Port.';

  @override
  String get lanJoinFailed =>
      'Beitritt nicht möglich. Prüfe Adresse und Raumcode und versuche es erneut.';

  @override
  String lanJoinTarget(Object name) {
    return '$name beitreten';
  }

  @override
  String get lanJoinTargetHelp =>
      'Gib den vierstelligen Code ein, der auf dem anderen Gerät angezeigt wird.';

  @override
  String lanJoiningTarget(Object name) {
    return 'Verbindung zu $name wird hergestellt';
  }

  @override
  String get lanConnect => 'Verbinden';

  @override
  String get lanBack => 'Zurück';

  @override
  String get lanTryAgain => 'Erneut versuchen';

  @override
  String get lanStatusBusy => 'Raum belegt – warte…';

  @override
  String get lanStatusReconnecting => 'Verbindung verloren – neuer Versuch…';

  @override
  String get lanStatusConnected => 'Verbunden – Partie wird gestartet…';

  @override
  String get lanStatusFailed => 'Beitritt nicht möglich.';

  @override
  String get lanStatusConnecting => 'Verbindung wird hergestellt…';

  @override
  String get diagnosticsCopySuccess => 'Diagnoseinformationen kopiert';

  @override
  String get diagnosticsReviewTitle => 'Diagnosebericht prüfen';

  @override
  String get diagnosticsPrivacyNotice =>
      'Der Entwurf enthält die folgenden Angaben und wird an GitHub gesendet: App-Version, Plattform und Fehlerdetails. Es wird kein öffentliches Problem erstellt, bevor du es dort absendest. Wenn die Angaben private Informationen enthalten, brich ab und kopiere den Bericht zur eigenen Bearbeitung.';

  @override
  String get diagnosticsCancel => 'Abbrechen';

  @override
  String get diagnosticsOpenGitHub => 'GitHub öffnen';

  @override
  String get diagnosticsTitle => 'Diagnose';

  @override
  String get diagnosticsReportTooltip => 'Problem auf GitHub melden';

  @override
  String get diagnosticsCopyTooltip => 'In Zwischenablage kopieren';

  @override
  String get diagnosticsClearTooltip => 'Protokoll löschen';

  @override
  String get diagnosticsEmpty =>
      'Keine Fehler protokolliert.\n\nWenn etwas schiefgeht, wird es hier festgehalten. Kopiere die Angaben in einen Fehlerbericht.';

  @override
  String gameHudNeutralScore(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore–$blackScore $blackLabel · bis $matchLength';
  }

  @override
  String gameHudPlayerScore(
    Object you,
    int mine,
    int theirs,
    Object opponent,
    int matchLength,
  ) {
    return '$you $mine–$theirs $opponent · bis $matchLength';
  }

  @override
  String get gameHudYou => 'Du';

  @override
  String get gameHudAi => 'KI';

  @override
  String gameHudGameNumber(int number) {
    return 'Partie $number';
  }

  @override
  String gameHudMatchContext(Object score, Object game) {
    return '$score · $game';
  }

  @override
  String gameHudHotSeatDetail(
    Object whiteLabel,
    Object blackLabel,
    Object pipsLabel,
    int whitePips,
    int blackPips,
  ) {
    return '$whiteLabel gegen $blackLabel · $pipsLabel $whitePips–$blackPips';
  }

  @override
  String gameHudOpponentDetail(
    Object opponent,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'gegen $opponent · $pipsLabel $mine–$theirs';
  }

  @override
  String gameHudOpponentDetailWithLevel(
    Object opponent,
    Object level,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'gegen $opponent · $level · $pipsLabel $mine–$theirs';
  }

  @override
  String get gameHudPips => 'Pips';

  @override
  String get gameHudCrawford => 'Crawford';

  @override
  String get gameHudDouble => 'Doppeln';

  @override
  String get gameHudMoreActions => 'Weitere Aktionen';

  @override
  String get gameHudSurrender => 'Aufgeben…';

  @override
  String get gameHudThinking => 'Denkt nach';

  @override
  String get gameHudDoubleBeforeRoll =>
      'Du kannst nur vor dem Wurf und während deines Zuges verdoppeln.';

  @override
  String get gameHudNoDoubleCrawford =>
      'Im Crawford-Spiel gibt es kein Verdoppeln – diese Partie entscheidet das Match.';

  @override
  String get gameHudOnlyCubeOwner =>
      'Nur der Cube-Besitzer darf verdoppeln; gerade gehört er der anderen Seite.';

  @override
  String get gameHudDoubleUnavailable => 'Verdoppeln ist gerade nicht möglich.';

  @override
  String gameDialogScoreLine(
    Object whiteLabel,
    int whiteScore,
    int blackScore,
    Object blackLabel,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore — $blackScore $blackLabel (bis $matchLength)';
  }

  @override
  String gameDialogPlayerWon(Object winner, Object points) {
    return '$winner gewinnt diese Partie ($points).';
  }

  @override
  String gameDialogPlayerWonGammon(Object winner, Object points) {
    return '$winner gewinnt diese Partie ($points, Gammon).';
  }

  @override
  String gameDialogPlayerWonBackgammon(Object winner, Object points) {
    return '$winner gewinnt diese Partie ($points, Backgammon).';
  }

  @override
  String gameDialogPlayerWonDrop(Object winner, Object points, Object loser) {
    return '$winner gewinnt diese Partie ($points) — $loser hat das Double abgelehnt.';
  }

  @override
  String gameDialogPlayerWonResignation(
    Object winner,
    Object points,
    Object loser,
  ) {
    return '$winner gewinnt diese Partie ($points) — $loser hat aufgegeben.';
  }

  @override
  String get gameDialogPassDeviceTitle => 'Gerät weitergeben';

  @override
  String gameDialogPlayersTurn(Object name) {
    return '$name ist am Zug';
  }

  @override
  String get gameDialogTapToContinue => 'Tippen zum Fortfahren';

  @override
  String get gameDialogCubeOfferedTitle => 'Double angeboten';

  @override
  String gameDialogCubeOfferMessage(
    Object doubler,
    int value,
    Object tutorLine,
  ) {
    return '$doubler bietet ein Double auf $value. Annehmen oder passen?$tutorLine';
  }

  @override
  String get gameDialogPass => 'Passen';

  @override
  String get gameDialogTake => 'Annehmen';

  @override
  String get gameDialogResignationTitle => 'Aufgabe angeboten';

  @override
  String gameDialogResignationMessage(Object resigner, Object value) {
    return '$resigner bietet an, die Partie mit $value Punkten aufzugeben. Annehmen oder ablehnen?';
  }

  @override
  String get gameDialogResignSingle => 'einfache Partie';

  @override
  String get gameDialogResignGammon => 'Gammon';

  @override
  String get gameDialogResignBackgammon => 'Backgammon';

  @override
  String get gameDialogDecline => 'Ablehnen';

  @override
  String get gameDialogAccept => 'Annehmen';

  @override
  String get gameDialogGameOverTitle => 'Partie beendet';

  @override
  String get gameDialogNextGame => 'Nächste Partie';

  @override
  String get gameDialogMatchOverTitle => 'Match beendet';

  @override
  String get gameDialogNobody => 'Niemand';

  @override
  String gameDialogMatchWinner(Object winner) {
    return '$winner gewinnt das Match.';
  }

  @override
  String get gameDialogSavedToHistory => 'Im Spielverlauf gespeichert';

  @override
  String get gameDialogDone => 'Fertig';

  @override
  String get gameTapNoLegalMove =>
      'Dieser Stein kann mit den verbleibenden Würfeln nicht ziehen';

  @override
  String get gameTapNoLegalMoveUndo =>
      'Dieser Stein kann mit den verbleibenden Würfeln nicht ziehen – versuche Rückgängig';

  @override
  String get gameDragHint =>
      'Tipp: Ziehe Steine oder tippe sie an – ändere das in den Einstellungen';

  @override
  String get commonGotIt => 'Verstanden';

  @override
  String get gameHintStageBeforeHint =>
      'Spiele zuerst einen vollständigen legalen Zug, bevor du einen Hinweis anforderst.';

  @override
  String get surrenderTitle => 'Aufgeben';

  @override
  String surrenderNamedConcedes(String player) {
    return '$player gibt die aktuelle Partie auf.';
  }

  @override
  String get surrenderConcedes => 'Gibt die aktuelle Partie auf.';

  @override
  String surrenderAvailableAtNamedTurn(String player) {
    return 'Ab Beginn des Zuges von $player verfügbar';
  }

  @override
  String get surrenderAvailableAtYourTurn => 'Ab Beginn deines Zuges verfügbar';

  @override
  String get commonCancel => 'Abbrechen';

  @override
  String get surrenderSingle => 'Einfach (1)';

  @override
  String get surrenderGammon => 'Gammon (2)';

  @override
  String get surrenderBackgammon => 'Backgammon (3)';

  @override
  String get surrenderChoosePlayer => 'Wer gibt diese Partie auf?';

  @override
  String get commonDone => 'Fertig';

  @override
  String get cubeDouble => 'Verdoppeln';

  @override
  String get cubeBlockedOtherPlayersTurn => 'Der andere Spieler ist am Zug.';

  @override
  String get cubeBlockedCrawford => 'Im Crawford-Spiel ist der Cube gesperrt.';

  @override
  String get cubeBlockedOwnedByOther =>
      'Nur der Cube-Besitzer darf verdoppeln; der andere Spieler besitzt ihn gerade.';

  @override
  String get cubeBlockedUnavailable => 'Verdoppeln ist gerade nicht verfügbar.';

  @override
  String get gameStatusRolling => 'Würfelt…';

  @override
  String get gameStatusThinking => 'Denkt nach…';

  @override
  String gameStatusPlayersTurn(String player) {
    return '$player ist am Zug';
  }

  @override
  String get cubeAdviceOpponentTake => 'Verdoppeln — Gegner sollte annehmen';

  @override
  String get cubeAdviceOpponentPass => 'Verdoppeln — Gegner sollte passen';

  @override
  String gameErrorBannerLabel(Object error) {
    return 'Fehler: $error';
  }

  @override
  String get privacyTitle => 'Datenschutz und Daten';

  @override
  String get privacyAppTitle => 'Backgammon Buddy von Freevia';

  @override
  String get privacyIntro =>
      'Auf dieser Seite wird beschrieben, wie die aktuelle App mit deinen Daten umgeht.';

  @override
  String get privacyLocalTitle => 'Spiele und Training auf deinem Gerät';

  @override
  String get privacyLocalBody =>
      'Lokale Partien, Einstellungen, Analysen und Trainingsfortschritte werden auf diesem Gerät gespeichert. Die Backgammon-Engine und die Erklärungen des Tutors laufen hier. Lösche eine gespeicherte Partie im Spielarchiv, um auch die dazugehörigen gespeicherten Trainingsaufgaben und Versuche zu entfernen. Einzelne Aufgaben kannst du unter Lernen löschen oder den Trainingsfortschritt zurücksetzen; lokale Fehlerberichte löschst du unter Einstellungen → Diagnose. Auch die Sicherungseinstellungen deines Geräts können für den Spielverlauf gelten. Zugangsdaten für die Online-Anmeldung werden im geschützten Speicher des Geräts aufbewahrt.';

  @override
  String get privacyOnlineTitle => 'Online- und Spielen in der Nähe';

  @override
  String get privacyOnlineBody =>
      'Beim Onlinespiel werden eine anonyme Spielerkennung, Spieleinstellungen, Züge und Würfelabgleich-Daten an Google Firebase gesendet, damit beide Spieler dieselbe Partie spielen können. Wenn du den Spielverlauf auf diesem Gerät löschst, werden Online-Datensätze nicht gelöscht. Gehostete Partien laufen 30 Tage nach ihrer Erstellung ab; eine geplante Bereinigung entfernt ihre Cloud-Protokolle. Spieldaten werden in der EU gespeichert; Firebase Authentication verarbeitet Anmeldedaten in den Vereinigten Staaten. Verbindungen zu Google werden während der Übertragung verschlüsselt. Beim Spielen in der Nähe tauschen die Geräte Spieldaten über eine unverschlüsselte lokale Verbindung aus; verwende ein vertrauenswürdiges WLAN.';

  @override
  String get privacyDiagnosticsTitle =>
      'Optionale Nutzungs- und Absturzdiagnose';

  @override
  String get privacyDiagnosticsBody =>
      'Die Datenweitergabe ist deaktiviert, bis du sie unter Einstellungen einschaltest. Wenn sie aktiviert ist, erhält Google Firebase Nutzungsereignisse, App- und Geräteinformationen, Leistungsmesswerte und Absturzberichte, damit die App verbessert werden kann. Du kannst die Weitergabe jederzeit ausschalten, um die optionale Erfassung neuer Daten zu beenden. Bereits gesendete Daten werden dadurch nicht gelöscht. Lokale Diagnosedaten und Onlinespiele sind von dieser Auswahl unabhängig.';

  @override
  String get privacyCameraTitle =>
      'Kamera für QR-Codes beim Spielen in der Nähe';

  @override
  String get privacyCameraBody =>
      'Mit der optionalen Kamera kannst du QR-Codes für Spiele in der Nähe scannen. Bilder werden auf deinem Gerät verarbeitet und weder gespeichert noch hochgeladen. Du kannst den Kamerazugriff ablehnen und die Adresse des Hosts manuell eingeben. Diese Version verwendet weder das Mikrofon noch ermöglicht sie das Spielen am physischen Brett.';

  @override
  String get privacyFeedbackTitle => 'Feedback, das du senden möchtest';

  @override
  String get privacyFeedbackBody =>
      'Beim Feedback wird ein GitHub-Entwurf für ein Issue geöffnet, den du prüfen kannst. Beim Öffnen des Entwurfs werden App-Version und Plattform an GitHub übermittelt; Feedback aus der Diagnose kann zusätzlich Fehlerdetails enthalten. Erst wenn du es absendest, wird ein Issue veröffentlicht. Issues können öffentlich sein. Entferne daher private Informationen, bevor du sie sendest.';

  @override
  String get privacyContactTitle => 'Kontakt zum Datenschutz';

  @override
  String get privacyReadPolicy => 'Datenschutzerklärung lesen';

  @override
  String get privacyPolicyOpenFailed =>
      'Die Datenschutzerklärung konnte nicht geöffnet werden.';

  @override
  String get privacySupportTitle => 'Hilfe und Support';

  @override
  String get privacySupportOpenFailed =>
      'Der Support konnte nicht geöffnet werden. Wende dich an support@freevia.org.';

  @override
  String get privacyDeleteConfirmTitle => 'Online-Identität und Daten löschen?';

  @override
  String get privacyDeleteConfirmBody =>
      'Damit endet sofort der Zugriff beider Spieler auf die Cloud-Partien dieser Identität; zugleich wird die Löschung der Identität und der gemeinsamen Online-Spielprotokolle innerhalb von 30 Tagen beantragt. Google kann bis zu 180 Tage nach der Kontolöschung benötigen, um Authentication-Daten aus aktiven Systemen und Sicherungen zu entfernen. Der lokale Spielverlauf und Trainingsdaten bleiben auf diesem Gerät. Zuvor gesendete optionale Diagnosedaten sind davon getrennt; wende dich dazu an privacy@freevia.org. Dieser Antrag kann nicht rückgängig gemacht werden.';

  @override
  String get privacyRequestDeletion => 'Löschung beantragen';

  @override
  String get privacyDeleteSectionTitle => 'Onlinedaten löschen';

  @override
  String get privacyDeleteInstructions =>
      'Bestätige, dass dir das Konto gehört, mit der auf diesem Gerät gespeicherten Anmeldung. Eine Spielerkennung oder ein Einladungscode allein belegt nicht, dass dir das Konto gehört. Spieler, die nur lokal spielen, benötigen kein Onlinekonto.';

  @override
  String get privacySendingRequest => 'Anfrage wird gesendet…';

  @override
  String get privacyDeleteAction => 'Online-Identität und Daten löschen';

  @override
  String get privacyDeleteRequested =>
      'Die Löschung wurde beantragt. Diese Online-Identität wurde abgemeldet. Ihre Cloud-Daten werden innerhalb von 30 Tagen gelöscht. Wenn du wieder online spielst, wird eine neue Identität erstellt. Die Entfernung der Authentication-Daten durch Google kann bis zu 180 Tage dauern. Hilfe erhältst du unter privacy@freevia.org.';

  @override
  String get privacyDeleteRequestedSignOutFailed =>
      'Die Löschung wurde beantragt. Die Cloud-Daten werden innerhalb von 30 Tagen gelöscht. Das Gerät konnte die gespeicherte Anmeldung nicht entfernen, aber die Online-Identität ist für weitere Partien gesperrt. Die Entfernung der Authentication-Daten durch Google kann bis zu 180 Tage dauern. Hilfe erhältst du unter privacy@freevia.org.';

  @override
  String get privacyDeleteNoIdentity =>
      'Auf diesem Gerät ist keine verwendbare Online-Identität gespeichert. Es wurde kein neues Konto erstellt. Wenn du früher online gespielt hast, wende dich an privacy@freevia.org. Gehostete Partien laufen nach 30 Tagen ab.';

  @override
  String get privacyDeleteRequestFailed =>
      'Der Löschantrag konnte nicht bestätigt werden. Prüfe deine Verbindung und versuche es erneut oder wende dich an privacy@freevia.org.';

  @override
  String get privacyConsentTitle =>
      'Nutzungs- und Absturzdiagnosedaten teilen?';

  @override
  String get privacyConsentBody =>
      'Dadurch werden Nutzungsereignisse, App- und Geräteinformationen, Absturzberichte und Leistungsmesswerte an Google Firebase gesendet. Die Weitergabe ist freiwillig. Spiele und Training funktionieren auch ohne sie; du kannst sie unter Einstellungen jederzeit wieder ausschalten.';

  @override
  String get privacyKeepOff => 'Deaktiviert lassen';

  @override
  String get privacyShareDiagnostics => 'Diagnosedaten teilen';

  @override
  String get privacySaveFailed =>
      'Die Datenschutzeinstellung konnte nicht gespeichert werden. Bitte versuche es erneut.';

  @override
  String get privacySettingsSubtitle =>
      'Was auf deinem Gerät bleibt und was geteilt wird';

  @override
  String get privacyDiagnosticsSettingTitle =>
      'Nutzungs- und Absturzdiagnosedaten teilen';

  @override
  String get privacyDiagnosticsSettingSubtitle =>
      'Optional · standardmäßig deaktiviert';

  @override
  String get lanScanToJoin => 'Scannen zum Beitreten';

  @override
  String get lanScanHostCode => 'Code des Hosts scannen';

  @override
  String get lanEnterAddressInstead => 'Stattdessen Adresse eingeben';

  @override
  String get lanQrAccessibilityLabel => 'QR-Code, um diesem Spiel beizutreten';

  @override
  String get lanJoinInstruction =>
      'Öffne auf dem anderen Gerät „In der Nähe spielen“, wähle „Beitreten“ und scanne diesen QR-Code.';

  @override
  String get lanTorch => 'Taschenlampe';

  @override
  String get lanCameraPermissionDenied =>
      'Backgammon Buddy kann die Kamera nicht verwenden. Erlaube den Kamerazugriff in den Geräteeinstellungen oder gib die auf dem anderen Gerät angezeigte Adresse manuell ein.';

  @override
  String get lanCameraUnsupported =>
      'Dieses Gerät kann keine QR-Codes scannen. Gib die auf dem anderen Gerät angezeigte Adresse manuell ein.';

  @override
  String get lanCameraStartFailed =>
      'Die Kamera konnte nicht gestartet werden. Gib die auf dem anderen Gerät angezeigte Adresse manuell ein.';

  @override
  String get lanPointCameraAtQr =>
      'Richte die Kamera auf den QR-Code des anderen Geräts.';

  @override
  String get physicalBuddyUnavailableTitle => 'Backgammon Buddy';

  @override
  String get physicalBuddyUnavailableBody =>
      'Das Spielen am physischen Brett ist in dieser Version nicht verfügbar. Spiele auf dem Bildschirm, Tutor und Training findest du auf der Startseite.';

  @override
  String get homePlayWithBuddy => 'Mit Buddy spielen';

  @override
  String get homeBuddyShort => 'Buddy';

  @override
  String boardSemanticsLabel(Object status) {
    return 'Backgammonbrett. $status';
  }

  @override
  String get boardWhiteToRoll => 'Weiß ist mit Würfeln an der Reihe.';

  @override
  String get boardBlackToRoll => 'Schwarz ist mit Würfeln an der Reihe.';

  @override
  String boardWhiteToMove(Object die1, Object die2) {
    return 'Weiß ist am Zug. Wirf $die1 und $die2.';
  }

  @override
  String boardBlackToMove(Object die1, Object die2) {
    return 'Schwarz ist am Zug. Wirf $die1 und $die2.';
  }

  @override
  String get boardDoubleOffered => 'Ein Doppler wurde angeboten.';

  @override
  String get boardResignationOffered => 'Eine Aufgabe wurde angeboten.';

  @override
  String get boardGameOver => 'Das Spiel ist beendet.';

  @override
  String feedbackBugTitle(Object version, Object platform) {
    return '[Fehler]: Backgammon Buddy $version ($platform)';
  }

  @override
  String get feedbackIdeaTitle => '[Idee]: Backgammon Buddy';

  @override
  String get feedbackBugSummary =>
      'Ersetze dies durch eine kurze Beschreibung des Geschehens.';

  @override
  String get feedbackBugReproduction =>
      'Ersetze dies durch die Schritte, die zum Problem geführt haben.';

  @override
  String get feedbackBugExpected =>
      'Ersetze dies durch die Beschreibung des erwarteten Ergebnisses.';

  @override
  String get feedbackIdeaNeed =>
      'Ersetze dies durch das, was du tun oder lernen wolltest.';

  @override
  String get feedbackIdeaSuggestion =>
      'Ersetze dies durch eine Änderung, die dir helfen würde.';

  @override
  String get feedbackExcerptTruncated =>
      '(gekürzt – den vollständigen Bericht kannst du über „In Zwischenablage kopieren“ auf dem Diagnosebildschirm kopieren)';

  @override
  String get boardWhiteToMoveNoRoll => 'Weiß ist am Zug.';

  @override
  String get boardBlackToMoveNoRoll => 'Schwarz ist am Zug.';

  @override
  String get feedbackFieldVersion => 'App-Version';

  @override
  String get feedbackFieldPlatform => 'Plattform';

  @override
  String get feedbackFieldSummary => 'Was ist passiert';

  @override
  String get feedbackFieldReproduction => 'Schritte zur Reproduktion';

  @override
  String get feedbackFieldExpected => 'Erwartetes Ergebnis';

  @override
  String get feedbackFieldNeed => 'Was du tun wolltest';

  @override
  String get feedbackFieldIdea => 'Vorgeschlagene Änderung';

  @override
  String get buddySetupTitle => 'Mit Buddy spielen';

  @override
  String get buddySetupSideLabel => 'Buddy spielt';

  @override
  String get buddySetupSeatLabel => 'Dein Platz';

  @override
  String get buddySetupSeatNear => 'Am Telefon';

  @override
  String get buddySetupSeatFar => 'Gegenüber';

  @override
  String get buddySetupSeatHelp =>
      'Auf welcher Brettseite du sitzt. Danach richtet Buddy die Nummerierung der Punkte aus und unterscheidet deinen Eröffnungswurf von seinem.';

  @override
  String get buddySetupVoiceLabel => 'Wie Buddy spricht';

  @override
  String get buddySetupVoiceTerse => 'Knapp';

  @override
  String get buddySetupVoiceFriendly => 'Freundlich';

  @override
  String get buddySetupVoiceTerseHelp =>
      '„13/8, 24/22“ – die übliche Zugnotation am Backgammonbrett.';

  @override
  String get buddySetupVoiceFriendlyHelp =>
      '„Ziehe einen Stein von 13 nach 8 und einen von 24 nach 22.“';

  @override
  String get buddySetupTutorHelp =>
      'Tutor-Kommentare und Zugerklärungen richten sich nach deinen gespeicherten Tutor-Einstellungen. Buddy gibt gelegentlich Rückmeldung zu deinen Zügen; eingegebene Würfe und manuelle Züge funktionieren genauso.';

  @override
  String get buddySetupCalibrate => 'Brett kalibrieren';

  @override
  String get buddyFixAim => 'Ausrichtung korrigieren';

  @override
  String get buddyWaitingForOpening => 'Buddy wartet auf den Eröffnungswurf.';

  @override
  String get buddyPromptLostBoard =>
      'Buddy hat das Brett verloren. Korrigiere die Ausrichtung, dann geht die Partie an derselben Stelle weiter.';

  @override
  String get buddyPromptWaitingPicture =>
      'Warte auf ein Bild, das Buddy lesen kann. Es geht nichts verloren.';

  @override
  String get buddyPromptTypeDice =>
      'Buddy kann die Würfel nicht erkennen. Gib den Wurf stattdessen ein.';

  @override
  String get buddyPromptPlay =>
      'Führe deinen Zug auf dem Brett aus. Wenn Buddy ihn nicht erkennt, tippe ihn hier ein.';

  @override
  String get buddyPromptWhichPlay => 'Welchen Zug hast du gemacht?';

  @override
  String get buddyPromptCube => 'Buddy verdoppelt. Annehmen oder ablehnen?';

  @override
  String get buddyPromptMakeMove =>
      'Führe Buddys Zug auf dem Brett aus, dann spielt Buddy weiter.';

  @override
  String get buddyPromptThinking => 'Buddy denkt nach.';

  @override
  String get buddyPromptWaitingCalibration => 'Warte auf die Kalibrierung.';

  @override
  String get buddyPromptMirrorNoDetail =>
      'Buddy kann seinen Zug noch nicht erkennen. Das Brett unten zeigt die Position, die Buddy gespeichert hat.';

  @override
  String get buddyPromptNotLegal => 'Das ist kein legaler Zug.';

  @override
  String buddyPromptNotLegalReason(String reason) {
    return 'Das ist kein legaler Zug. $reason';
  }

  @override
  String get buddyThrowOpening => 'Würfle zum Start – jeder würfelt einmal.';

  @override
  String get buddyThrowUser => 'Würfle.';

  @override
  String get buddyThrowBuddy => 'Würfle für Buddy.';

  @override
  String get buddyMatchOver => 'Das Match ist beendet.';

  @override
  String get buddyYouWin => 'Du gewinnst das Match.';

  @override
  String get buddyBuddyWins => 'Buddy gewinnt das Match.';

  @override
  String get buddyDoubleNoGame =>
      'Es gibt noch keine Partie zum Verdoppeln – zuerst kommt der Eröffnungswurf.';

  @override
  String get buddyDoubleBeforeRoll =>
      'Du kannst nur vor dem Würfeln und während deines Zuges verdoppeln.';

  @override
  String get buddyDoubleCrawford =>
      'Im Crawford-Spiel gibt es keinen Doppler – dieses einzelne Spiel entscheidet das Match.';

  @override
  String get buddyDoubleNotOwner =>
      'Nur der Besitzer des Dopplers darf verdoppeln. Im Moment gehört er der anderen Seite.';

  @override
  String get buddyDoubleUnavailable => 'Verdoppeln ist gerade nicht möglich.';

  @override
  String get buddyLookingAtBoard => 'Buddy schaut sich das Brett an.';

  @override
  String get buddyCameraPlayFallback =>
      'Du kannst die Partie trotzdem spielen: Gib jeden Wurf auf dem Würfelfeld ein und tippe deine Züge auf dem Brett unten ein.';

  @override
  String get buddySkipCheck => 'Diese Prüfung überspringen';

  @override
  String get buddyFixedIt => 'Ich habe es behoben';

  @override
  String get buddyDrop => 'Ablehnen';

  @override
  String get buddyTake => 'Annehmen';

  @override
  String get buddyDone => 'Fertig';

  @override
  String get buddyTranscriptLabel => 'Was Buddy gesagt hat';

  @override
  String get buddyUndo => 'Rückgängig';

  @override
  String get buddyConfirm => 'Bestätigen';

  @override
  String get buddyDice => 'Würfel';

  @override
  String get buddyDouble => 'Verdoppeln';

  @override
  String get buddyDicePadTitle => 'Was hast du gewürfelt?';

  @override
  String get buddyEnterRoll => 'Wurf eingeben';

  @override
  String get buddyContextBeforeGame => 'Mit Buddy spielen';

  @override
  String buddyContextMatchScore(
    String you,
    String buddy,
    String length,
    String number,
  ) {
    return 'Du $you–$buddy Buddy · bis $length · Spiel $number';
  }

  @override
  String get buddyCameraUnavailable =>
      'Die Kamera konnte nicht gestartet werden. Prüfe die Berechtigungen und versuche es erneut.';

  @override
  String get buddyCameraPermission =>
      'Backgammon Buddy darf die Kamera nicht verwenden. Erlaube den Kamerazugriff in den Geräteeinstellungen und versuche es erneut.';

  @override
  String get buddyCalibrationTitle => 'Zeig Buddy das Brett';

  @override
  String get buddyCalibrationCornersFold =>
      'Ziehe die vier äußeren Griffe auf die Ecken des Spielfelds – nicht auf den Holzrand – und die vier kleinen Griffe auf die Scharnierfugen an der fernen und nahen Kante.';

  @override
  String get buddyCalibrationCornersFlat =>
      'Ziehe jeden Griff auf eine Ecke des Spielfelds – die Spielfläche, nicht den Holzrand außen herum.';

  @override
  String get buddyCalibrationCheckLines =>
      'Prüfe anschließend die zwölf Linien auf jeder Hälfte: Jede sollte entlang eines Brettpunkts verlaufen. Verfehlt eine Linie ihren Punkt, muss der zugehörige Griff verschoben werden.';

  @override
  String get buddyCalibrationSeatQuestion => 'Welche Hälfte ist dein Heimfeld?';

  @override
  String get buddyCalibrationSeatHelp =>
      'Die Hälfte, die im Bild näher am unteren Rand liegt. Damit wird die Punktnummerierung festgelegt, und die Linien oben richten sich danach aus.';

  @override
  String get buddyCalibrationCaptureWait =>
      'Halte das Telefon ruhig. Buddy wartet, bis das Bild stabil ist, bevor es dieses Brett lernt.';

  @override
  String get buddyCalibrationConfirmQuestion => 'Ist das dein Brett?';

  @override
  String get buddyCalibrationConfirmFallback =>
      'Buddy betrachtet das Brett, das es gerade erkannt hat.';

  @override
  String get buddyCalibrationConfirmHelp =>
      'Die Steine, die im Bild eingezeichnet sind, zeigen Buddys Erkennung. Liegt auch nur einer falsch, beginne von vorn – das kostet jetzt Sekunden und später vielleicht eine ganze Partie.';

  @override
  String get buddyCalibrationNext => 'Weiter';

  @override
  String get buddyCalibrationBack => 'Zurück';

  @override
  String get buddyCalibrationCapture => 'Aufnehmen';

  @override
  String get buddyCalibrationStartOver => 'Von vorn beginnen';

  @override
  String get buddyCalibrationLooksRight => 'Sieht richtig aus';

  @override
  String get buddyCalibrationCornersInvalid =>
      'Diese vier Griffe umschließen kein Brett – einer hat einen anderen gekreuzt. Ziehe sie zurück auf die Ecken des Spielfelds.';

  @override
  String get buddyCalibrationPrepTitle => 'Zuerst drei Dinge';

  @override
  String get buddyCalibrationRemoveDiceTitle => 'Nimm die Würfel vom Brett.';

  @override
  String get buddyCalibrationRemoveDiceBody =>
      'Buddy lernt jetzt das leere Brett. Ein Würfel auf dem Spielfeld wird als Teil des Bretts erkannt; danach kann Buddy die Würfel in dieser Sitzung nicht mehr sehen.';

  @override
  String get buddyCalibrationSetupCheckersTitle =>
      'Stelle die Steine für den Spielbeginn auf.';

  @override
  String get buddyCalibrationSetupCheckersBody =>
      'Anhand von 30 Steinen an bekannten Positionen lernt Buddy die beiden Farben dieses Bretts, ohne dass du sie angeben musst.';

  @override
  String get buddyCalibrationFitBoardTitle =>
      'Das ganze Spielfeld muss im Bild sein.';

  @override
  String get buddyCalibrationFitBoardBody =>
      'Lass das Telefon danach an seiner Stelle. Falls es sich bewegt, sagt Buddy Bescheid und du kannst die Ecken nachjustieren.';

  @override
  String get buddyCalibrationBoardKind => 'Welche Art von Brett ist es?';

  @override
  String get buddyCalibrationFlatBoard => 'Flaches Brett';

  @override
  String get buddyCalibrationFoldingBoard => 'Klappbrett';

  @override
  String get buddyCalibrationBoardKindHelp =>
      'Bei einem Klappbrett sind vier zusätzliche Griffe an den Scharnierfugen nötig.';

  @override
  String get buddyCalibrationNoCameraBody =>
      'Buddy-Modus beobachtet ein echtes Brett und kann ohne Kamera nicht starten. Der Rest der App funktioniert unverändert.';

  @override
  String buddyHandleHingeSeam(int number) {
    return 'Scharnierfuge $number von 4';
  }

  @override
  String buddyHandleCorner(int number) {
    return 'Brettecke $number von 4';
  }

  @override
  String get buddyNudgeLeft => 'Nach links verschieben';

  @override
  String get buddyNudgeRight => 'Nach rechts verschieben';

  @override
  String get buddyNudgeUp => 'Nach oben verschieben';

  @override
  String get buddyNudgeDown => 'Nach unten verschieben';

  @override
  String get buddyCalibrationProblemCorners =>
      'Diese vier Ecken umschließen kein Brett. Ziehe jeden Griff auf eine Ecke des Spielfelds und versuche es erneut.';

  @override
  String get buddyCalibrationProblemFoldCorners =>
      'Diese acht Punkte passen nicht zu einem Klappbrett. Setze vier auf die Ecken der Spielfläche und vier auf die Scharnierfugen, dann versuche es erneut.';

  @override
  String get buddyCalibrationProblemUnreadable =>
      'Ich kann das Brett selbst nicht erkennen – es ist vollständig verdeckt oder liegt im Schatten bzw. blendet. Räume das Brett frei, sorge für mehr Licht und versuche es erneut.';

  @override
  String buddyCalibrationProblemRegionUnreadable(String region) {
    return 'Ich kann $region nicht erkennen – möglicherweise liegt etwas darauf oder diese Brettecke ist zu dunkel. Räume sie frei oder sorge für mehr Licht und versuche es erneut.';
  }

  @override
  String get buddyCalibrationProblemColours =>
      'Die beiden Steinfarben sehen von hier aus zu ähnlich aus. Mehr Licht oder ein Blickwinkel mit weniger Blendung hilft meistens.';

  @override
  String buddyCalibrationProblemWrongChecker(int number) {
    return 'Die Steine stehen nicht in der Ausgangsstellung – auf Punkt $number liegt die falsche Farbe. Stelle die Steine für den Spielbeginn auf und kalibriere erneut.';
  }

  @override
  String get buddyCalibrationProblemOverexposed =>
      'Das Brett ist so stark beleuchtet, dass seine Farben ineinander übergehen. Dimme das Licht oder halte das Telefon so, dass sich die Lampe nicht darin spiegelt.';

  @override
  String get buddyCalibrationProblemReadBack =>
      'Ich kann das Brett erkennen, aber nicht als Ausgangsstellung einer Partie. Stelle die Steine für den Spielbeginn auf und kalibriere erneut.';

  @override
  String get buddyCalibrationProblemStacks =>
      'Ich kann das Brett erkennen, aber nicht, wie weit ein Stein hinter einem anderen liegt – dadurch würde ich falsch zählen. Etwas mehr Licht auf den nahen Punkten oder ein leicht erhöhter Kamerawinkel hilft meistens.';

  @override
  String get buddyCalibrationProblemNotVisible =>
      'Ich kann nicht das ganze Brett sehen. Halte das Telefon weiter zurück oder ziehe die Ecken auf die Spielfläche.';

  @override
  String buddyConfirmBoardOutOfFrame(String region) {
    return 'Ich kann nicht mehr das ganze Brett sehen – $region liegt außerhalb des Bildes. Richte die Kamera neu aus oder prüfe die Ecken erneut.';
  }

  @override
  String get buddyConfirmStartingPosition =>
      'Das sieht nach der Ausgangsstellung aus.';

  @override
  String get buddyConfirmNoCheckers =>
      'Ich sehe keinen Stein an einer Position der Ausgangsstellung. Stelle die Steine für den Spielbeginn auf und versuche es erneut.';

  @override
  String buddyConfirmWrongPosition(String details, String more) {
    return 'Das Brett ist nicht für den Spielbeginn aufgestellt: $details$more.';
  }

  @override
  String buddyConfirmRegionEmpty(String region, String side) {
    return '$region sieht leer aus, aber zu Beginn liegt dort $side';
  }

  @override
  String buddyConfirmRegionUnexpected(String region, String side) {
    return 'Auf $region liegt $side, dort sollte es zu Beginn aber leer sein';
  }

  @override
  String buddyConfirmRegionWrongSide(
    String region,
    String observed,
    String expected,
  ) {
    return 'Auf $region liegt $observed, zu Beginn sollte dort aber $expected liegen';
  }

  @override
  String get buddyReadabilityMotion =>
      'Halte kurz still – während sich das Telefon bewegt, verliere ich das Brett aus dem Blick.';

  @override
  String get buddyReadabilityWrongFrame =>
      'Das Bild, das ich erhalte, gehört nicht zu dem Brett, für das ich eingerichtet wurde. Ich kann darin nichts zuordnen. Richte das Brett von hier aus erneut ein.';

  @override
  String get buddyReadabilityBlur =>
      'Das Bild ist zu unscharf, um das Brett zu erkennen. Warte kurz, bis die Kamera fokussiert hat.';

  @override
  String get buddyReadabilityCalibrationStale =>
      'Das Brett steht nicht mehr dort, wo es beim Einlernen stand. Richte die Ecken erneut aus, dann setze ich die Partie sofort fort.';

  @override
  String get buddyReadabilityOccluded =>
      'Ein Teil des Bretts ist verdeckt. Sobald es frei ist, mache ich weiter.';

  @override
  String get buddyReadabilityClear => 'Ich kann das Brett sehen.';

  @override
  String get buddyReadabilityColorChanged =>
      'Das Licht auf dem Brett hat seine Farbe geändert; es sieht deshalb nicht mehr so aus wie beim Einlernen. Richte die Ecken unter diesem Licht neu aus, dann setze ich die Partie sofort fort.';

  @override
  String get buddyReadabilityTooDark =>
      'Es ist zu dunkel, um das Brett zu erkennen. Mit etwas mehr Licht mache ich dort weiter, wo wir aufgehört haben.';

  @override
  String get buddyReadabilityTooBright =>
      'Das Brett ist so stark beleuchtet, dass seine Farben ineinander übergehen. Dimme das Licht oder halte das Telefon so, dass sich die Lampe nicht darin spiegelt.';

  @override
  String buddyPromptBeliefMirror(String reason) {
    return 'Buddy kann seinen Zug noch nicht erkennen – $reason.';
  }

  @override
  String buddyCameraUnavailablePlay(String cameraMessage) {
    return '$cameraMessage\n\nDu kannst die Partie trotzdem spielen: Gib jeden Wurf auf dem Würfelfeld ein und tippe deine Züge auf dem Brett unten ein.';
  }

  @override
  String get buddyCameraGenericError =>
      'Die Kamera konnte nicht gestartet werden. Prüfe die Berechtigungen und versuche es erneut.';

  @override
  String buddyRegionPoint(int number) {
    return 'der $number-Punkt';
  }

  @override
  String get buddyRegionBar => 'die Bar';

  @override
  String get buddyRegionWhiteTray => 'Weißes Auswurffeld';

  @override
  String get buddyRegionBlackTray => 'Schwarzes Auswurffeld';

  @override
  String get buddyRegionDiceZone => 'die Brettmitte';

  @override
  String get buddyCalibrationProblemVisible =>
      'Ich kann nicht das ganze Brett sehen. Halte das Telefon weiter zurück oder ziehe die Ecken auf die Spielfläche.';

  @override
  String buddyConfirmMore(int number) {
    return ' (und $number weitere)';
  }

  @override
  String get buddyDiceOpeningCaption =>
      'Jeder würfelt einmal. Welche Zahl zu wem gehört, entscheidet, wer beginnt.';

  @override
  String get buddyDiceOpeningFirst => 'Würfel von Weiß';

  @override
  String get buddyDiceOpeningSecond => 'Würfel von Schwarz';

  @override
  String get buddyDiceRegularCaption =>
      'Die beiden gewürfelten Zahlen, in beliebiger Reihenfolge.';

  @override
  String get buddyDiceRegularFirst => 'Ein Würfel';

  @override
  String get buddyDiceRegularSecond => 'Der andere';
}
