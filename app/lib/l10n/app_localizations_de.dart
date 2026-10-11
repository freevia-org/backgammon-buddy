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
  String get tutorMoveExplanations => 'Zugerklärungen';

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
}
