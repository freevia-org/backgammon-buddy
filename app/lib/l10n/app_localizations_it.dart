// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get homeTagline => 'Migliora il tuo gioco con un tutor';

  @override
  String get settings => 'Impostazioni';

  @override
  String get playVsComputer => 'Gioca contro il computer';

  @override
  String get twoPlayers => 'Due giocatori';

  @override
  String get playNearby => 'Gioca nelle vicinanze';

  @override
  String get playOnline => 'Gioca online';

  @override
  String get learningPractice => 'Impara e fai pratica';

  @override
  String get gamesArchive => 'Archivio partite';

  @override
  String get followSystem => 'Segui la lingua del dispositivo';

  @override
  String get white => 'Bianco';

  @override
  String get black => 'Nero';

  @override
  String get random => 'Casuale';

  @override
  String get startMatch => 'Inizia partita';

  @override
  String get tutor => 'Tutor';

  @override
  String get noMovesPass => 'Nessuna mossa: passa';

  @override
  String get undo => 'Annulla';

  @override
  String get confirm => 'Conferma';

  @override
  String get roll => 'Lancia';

  @override
  String get hint => 'Suggerimento';

  @override
  String get tutoringStyle => 'Stile di tutoraggio';

  @override
  String get tutorStyleCoach => 'Coach';

  @override
  String get tutorStyleHintsOnly => 'Solo suggerimenti';

  @override
  String get tutorStyleTryFirst => 'Prova prima tu';

  @override
  String get tutorCoachDescription =>
      'Suggerimenti sulla posizione, commenti sulle mosse, consigli e indicazioni sul cubo del raddoppio.';

  @override
  String get tutorHintsDescription =>
      'Mosse classificate su richiesta. I suggerimenti in tempo reale sulla posizione e i commenti automatici alle mosse restano disattivati.';

  @override
  String get tutorTryFirstDescription =>
      'Prova la tua mossa prima di vedere la classifica o il voto; i suggerimenti sulla posizione restano attivi.';

  @override
  String get tutorCustomDescription =>
      'Combinazione personalizzata. Modifica le opzioni qui sotto come preferisci.';

  @override
  String get tutorBestMoveHints => 'Suggerimenti per la mossa migliore';

  @override
  String get tutorRevealRankedPlays =>
      'Mostra le mosse classificate mentre scegli';

  @override
  String get tutorMoveExplanations => 'Spiegazioni delle mosse';

  @override
  String get tutorCompareEstimates =>
      'Confronta le stime e i cambiamenti sulla tavola';

  @override
  String get tutorGameCommentary => 'Commento della partita';

  @override
  String get tutorPositionPrompts =>
      'Suggerimenti sulla posizione e commenti dopo ogni mossa';

  @override
  String get tutorCubeAdvice => 'Consigli sul cubo del raddoppio';

  @override
  String get tutorMatchAwareCubeAdvice =>
      'Consigli su raddoppio, accettazione e rifiuto in base al punteggio della partita';

  @override
  String get tutorTryMoveFirst => 'Prova prima una mossa';

  @override
  String get tutorStageBeforeHints =>
      'Prova la tua mossa prima di mostrare i suggerimenti o il voto';

  @override
  String get tutorStaticEstimateNote =>
      'Stima statica rapida (0-ply, senza simulazioni); le note descrivono cambiamenti sulla tavola e possibili risposte, non prevedono con certezza cosa accadrà.';

  @override
  String get tutorWhatToWatchNext => 'Cosa osservare alla prossima mossa';

  @override
  String get tutorMoreBoardDetails => 'Altri dettagli sulla tavola';

  @override
  String get tutorEstimatesAndHowTheyWork => 'Le stime e il loro funzionamento';

  @override
  String get tutorEstimateLimitations =>
      'Profondità: valutazione neurale statica dopo ogni mossa legale (0-ply), senza simulazioni né ricerca delle risposte future. L’MWC tiene conto del punteggio della partita e del cubo attuale nel ponderare le stime dei risultati; non modella le future decisioni sul cubo. Se il punteggio non è disponibile, l’equity senza cubo indica i punti attesi con il cubo a 1. Le osservazioni sulla tavola descrivono la mossa, non il ragionamento interno della rete neurale. Valori molto vicini non implicano certezza; non è disponibile un intervallo di confidenza calibrato.';

  @override
  String get tutorPointNumberNote =>
      'I numeri dei punti nelle note didattiche partono dalla tavola interna del giocatore di turno.';

  @override
  String get tutorHittingRollNote =>
      'I conteggi dei tiri che consentono di colpire includono tutti i 36 esiti ordinati dei dadi e i colpi legali diretti o indiretti; indicano opportunità, non prevedono la scelta dell’avversario.';

  @override
  String get tutorNoEvaluatedAlternatives =>
      'Non sono disponibili alternative valutate per questa mossa.';

  @override
  String get tutorForcedPassNoDecision =>
      'Un passaggio obbligato non comporta una scelta di movimento delle pedine.';
}
