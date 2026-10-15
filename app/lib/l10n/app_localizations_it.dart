// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'Backgammon Buddy';

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

  @override
  String get settingsReset => 'Ripristina';

  @override
  String get settingsAppLanguage => 'Lingua dell’app';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get settingsThemeSystem => 'Sistema';

  @override
  String get settingsThemeLight => 'Chiaro';

  @override
  String get settingsThemeDark => 'Scuro';

  @override
  String get settingsAnimationSpeed => 'Velocità animazione';

  @override
  String get settingsAnimationNone => 'Nessuna';

  @override
  String get settingsAnimationNormal => 'Normale';

  @override
  String get settingsAnimationFast => 'Veloce';

  @override
  String get settingsDiceRollAnimation => 'Animazione del lancio dei dadi';

  @override
  String get settingsDiceRollAnimationHelp =>
      'Fai rotolare i dadi prima di ogni lancio';

  @override
  String get settingsDefaultMatchLength => 'Durata predefinita della partita';

  @override
  String get settingsDefaultDifficulty => 'Difficoltà predefinita';

  @override
  String get settingsDifficultyEasy => 'Facile';

  @override
  String get settingsDifficultyMedium => 'Media';

  @override
  String get settingsDifficultyHard => 'Difficile';

  @override
  String get settingsDifficultyExpert => 'Esperto';

  @override
  String get settingsTutorModeDefault => 'Modalità tutor predefinita';

  @override
  String get settingsTutorAuto => 'Automatica';

  @override
  String get settingsTutorOn => 'Attivo';

  @override
  String get settingsTutorOff => 'Disattivo';

  @override
  String get settingsTutorModeHelp =>
      'Automatica attiva il tutor a ogni livello del computer. Attivo e Disattivo impostano la scelta iniziale per le partite locali. Le partite nelle vicinanze e online non prevedono assistenza; puoi rivederne le partite salvate in seguito. Le preferenze didattiche qui sotto vengono salvate su questo dispositivo.';

  @override
  String get settingsTutorPreferences => 'Preferenze del tutor';

  @override
  String get settingsTutorPreferencesSubtitle =>
      'Impostazioni predefinite per le prossime partite';

  @override
  String get settingsTutorSaveError =>
      'Impossibile salvare le preferenze del tutor.';

  @override
  String get settingsGameplay => 'Gioco';

  @override
  String get settingsMoveHighlights => 'Evidenziazione delle mosse';

  @override
  String get settingsMoveHighlightsHelp =>
      'Cerchia le pedine selezionabili e illumina le destinazioni possibili';

  @override
  String get settingsDragToMove => 'Trascina per muovere';

  @override
  String get settingsDragToMoveHelp =>
      'Trascina una pedina fino alla destinazione (i tocchi funzionano sempre)';

  @override
  String get settingsCombinedMoves => 'Mosse combinate';

  @override
  String get settingsCombinedMovesHelp =>
      'Un tocco fa muovere una pedina usando entrambi i dadi';

  @override
  String get settingsRotateBoard => 'Ruota la tavola tra i turni';

  @override
  String get settingsRotateBoardHelp =>
      'Partita a turni sullo stesso dispositivo: capovolge la vista per il giocatore attivo';

  @override
  String get settingsPassDevice => 'Schermata per passare il dispositivo';

  @override
  String get settingsPassDeviceHelp =>
      'Copri la tavola tra i turni della partita a turni sullo stesso dispositivo';

  @override
  String get settingsShowScore => 'Mostra il punteggio';

  @override
  String get settingsShowScoreHelp =>
      'Mostra il punteggio corrente della partita nell’intestazione';

  @override
  String get settingsBuddyMode => 'Stile di Buddy';

  @override
  String get settingsBuddyTerse => 'Conciso';

  @override
  String get settingsBuddyFriendly => 'Amichevole';

  @override
  String get settingsBuddyTerseHelp =>
      'Come Buddy pronuncia una mossa: «13/8, 24/22» — la notazione usata dai giocatori davanti alla tavola.';

  @override
  String get settingsBuddyFriendlyHelp =>
      'Come Buddy pronuncia una mossa: «Sposta una pedina da 13 a 8 e una da 24 a 22.»';

  @override
  String get settingsListenForDice => 'Ascolta i dadi';

  @override
  String get settingsListenForDiceHelp =>
      'Buddy guarda prima la tavola quando sente un lancio. Disattivando questa opzione non cambia altro.';

  @override
  String get settingsDiagnostics => 'Diagnostica';

  @override
  String get settingsErrorLog => 'Registro errori';

  @override
  String get settingsErrorLogHelp =>
      'Errori recenti, pronti da copiare in una segnalazione di bug';

  @override
  String get settingsReportBug => 'Segnala un bug';

  @override
  String get settingsReportBugHelp => 'Apri una segnalazione guidata su GitHub';

  @override
  String get settingsSuggestIdea => 'Suggerisci un’idea';

  @override
  String get settingsSuggestIdeaHelp =>
      'Aiutaci a migliorare il tutor e il gioco';

  @override
  String get settingsAbout => 'Informazioni';

  @override
  String get settingsOpenSourceLicenses => 'Licenze open source';

  @override
  String settingsAppVersion(Object version) {
    return 'Backgammon Buddy $version';
  }

  @override
  String get tutorPhraseGameFinished => 'Partita terminata.';

  @override
  String get tutorPhraseReviewFinishedGame =>
      'Rivedi le mosse per trovare una decisione su cui esercitarti.';

  @override
  String get tutorPhraseCubeOffered => 'È stato offerto il cubo del raddoppio.';

  @override
  String get tutorPhraseCubeDecisionPrompt =>
      'Decidi se accettare il raddoppio o passare prima di pianificare una mossa con le pedine.';

  @override
  String get tutorPhraseCubeScoreContext =>
      'Il punteggio della partita cambia il valore della posta aggiuntiva.';

  @override
  String get tutorPhraseResignationOffered => 'È stata offerta la resa.';

  @override
  String get tutorPhraseResignationDecisionPrompt =>
      'Confronta i punti offerti con la posizione prima di accettare o continuare.';

  @override
  String get tutorPhraseNoLegalPlay =>
      'Con questo lancio non ci sono mosse legali.';

  @override
  String get tutorPhraseForcedPassPrompt =>
      'Passare perché obbligati non è un errore; attendi il lancio successivo.';

  @override
  String get tutorPhraseOnlyOneResult =>
      'C’è un solo risultato legale possibile.';

  @override
  String get tutorPhraseForcedTurnPrompt =>
      'Esegui il turno obbligato. Con questo lancio non c’è una scelta da valutare.';

  @override
  String get tutorPhrasePipCountsLevel => 'I conteggi dei pip sono pari.';

  @override
  String tutorPhrasePipCountsAhead(int count) {
    return 'Hai $count pip di vantaggio.';
  }

  @override
  String tutorPhrasePipCountsBehind(int count) {
    return 'Hai $count pip di svantaggio.';
  }

  @override
  String tutorPhrasePlayerHasCheckersOnBar(int count) {
    return '$count pedine sulla barra: prima devi rientrare.';
  }

  @override
  String get tutorPhraseEnterBeforeMoving =>
      'Fai rientrare le pedine prima di muoverne altre; poi cerca un punto d’arrivo sicuro.';

  @override
  String tutorPhraseOpponentHomePoints(int count) {
    return 'L’avversario ha $count punti chiusi nella tavola interna.';
  }

  @override
  String get tutorPhraseBearOffRace => 'Corsa di uscita.';

  @override
  String get tutorPhrasePureRace => 'Una corsa pura.';

  @override
  String get tutorPhraseBearOffSpread =>
      'Togli le pedine dalla tavola mantenendole ben distribuite per il lancio successivo.';

  @override
  String get tutorPhraseBringRearCheckersHome =>
      'Porta a casa le pedine arretrate senza ammassarne troppe su un solo punto.';

  @override
  String get tutorPhraseArmiesHavePassed =>
      'Le pedine si sono superate: non è più possibile colpire.';

  @override
  String tutorPhraseContactStillMatters(Object part) {
    return '$part C’è ancora contatto.';
  }

  @override
  String tutorPhraseOpponentHasCheckersOnBar(int count) {
    return 'L’avversario ha $count pedine sulla barra.';
  }

  @override
  String get tutorPhraseKeepBoardClosed =>
      'Mantieni chiusi i punti mentre porti a casa le pedine rimaste.';

  @override
  String get tutorPhraseBuildOrPreserveHomeBoard =>
      'Costruisci o mantieni la tua tavola interna chiusa mentre l’avversario cerca di rientrare.';

  @override
  String tutorPhraseHomePointsCloseEntries(int count) {
    return 'Hai $count punti chiusi nella tavola interna; ognuno blocca un numero di rientro.';
  }

  @override
  String tutorPhrasePrimeContact(int count) {
    return 'Contatto con una fila di $count punti consecutivi.';
  }

  @override
  String get tutorPhraseExtendPrimeOrKeepSpares =>
      'Valuta se allungare la fila o tenere pedine di riserva per mantenerla.';

  @override
  String tutorPhraseSpareCheckersCanMove(int count) {
    return '$count pedine di riserva possono muoversi senza aprire subito il loro punto.';
  }

  @override
  String tutorPhraseAnchorContact(Object points) {
    return 'Contatto con un’ancora sui punti $points.';
  }

  @override
  String get tutorPhraseCompareAnchorProgressAhead =>
      'Confronta il rientro delle pedine arretrate con la sicurezza offerta dal mantenere l’ancora.';

  @override
  String get tutorPhraseCompareAnchorProgressBehind =>
      'Tieni presente il tuo appoggio sicuro mentre cerchi un colpo o migliori la tavola.';

  @override
  String get tutorPhrasePreserveAnchorFoothold =>
      'L’ancora non può essere colpita, ma quelle pedine hanno ancora molta strada da fare per tornare a casa.';

  @override
  String get tutorPhraseContactThreats =>
      'C’è ancora contatto: entrambi i giocatori possono minacciare un colpo.';

  @override
  String get tutorPhraseLookForPointsAndSafety =>
      'Cerca punti utili, poi valuta il rischio di lasciare pedine singole esposte.';

  @override
  String tutorPhraseHomePointsAndBlots(int count, int otherCount) {
    return 'Hai $count punti chiusi nella tavola interna e lasci $otherCount pedine scoperte.';
  }

  @override
  String get tutorPhraseChooseCheckerPrompt =>
      'Scegli una pedina per iniziare il turno.';

  @override
  String get tutorPhraseLegalPlayPrompt =>
      'Inizia una mossa legale per vedere il commento.';

  @override
  String tutorPhraseStagedHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pedine avversarie',
      one: 'una pedina avversaria',
    );
    return 'Hai colpito $_temp0.';
  }

  @override
  String tutorPhraseStagedEnter(int count) {
    return 'Hai fatto rientrare $count pedine dalla barra.';
  }

  @override
  String tutorPhraseStagedBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pedine dalla tavola',
      one: 'una pedina dalla tavola',
    );
    return 'Hai tolto $_temp0.';
  }

  @override
  String tutorPhraseStagedMakePoints(Object points) {
    return 'Hai chiuso $points.';
  }

  @override
  String tutorPhraseStagedBlot(int point) {
    return 'Per ora la pedina sul tuo punto $point è esposta.';
  }

  @override
  String tutorPhraseStagedSpare(int point) {
    return 'La pedina di riserva sul tuo punto $point potrà muoversi in seguito senza aprire il punto.';
  }

  @override
  String tutorPhraseStagedPartialPrompt(Object part) {
    return '$part Usa i dadi ancora giocabili prima di valutare l’intera mossa.';
  }

  @override
  String get tutorPhraseStagedAllCheckersOff =>
      'Tutte e 15 le pedine sono uscite: la partita è vinta.';

  @override
  String get tutorPhraseStagedHitShortPlan =>
      'Il colpo fa guadagnare tempo mentre l’avversario cerca di rientrare.';

  @override
  String get tutorPhraseStagedEfficientBearOffPlan =>
      'Un’uscita efficiente toglie pedine e lascia numeri utili per il lancio successivo.';

  @override
  String get tutorPhraseStagedRaceHomePlan =>
      'In una corsa, porta a casa le pedine arretrate e mantieni punti d’uscita utili.';

  @override
  String get tutorPhraseStagedBearOffContactPlan =>
      'Uscire con le pedine fa avanzare, ma il contatto rimasto comporta ancora il rischio di subire un colpo.';

  @override
  String get tutorPhraseStagedReentryPlan =>
      'Rientrando, la pedina torna in gioco; poi cerca un punto d’arrivo sicuro.';

  @override
  String get tutorPhraseStagedHomeBoardPlan =>
      'Il nuovo punto nella tavola interna chiude un numero di rientro dopo un eventuale colpo.';

  @override
  String get tutorPhraseStagedPrimePlan =>
      'La fila più lunga chiude più punti d’atterraggio; le pedine di riserva aiutano a mantenerla.';

  @override
  String get tutorPhraseStagedLeaveAnchorPlan =>
      'Lasciare l’ancora fa guadagnare terreno, ma rinunci a un appoggio sicuro.';

  @override
  String get tutorPhraseStagedNewAnchorPlan =>
      'La nuova ancora offre alle pedine arretrate un appoggio sicuro.';

  @override
  String get tutorPhraseStagedCoverBlotPlan =>
      'Coprire una pedina esposta elimina un bersaglio per l’avversario.';

  @override
  String get tutorPhraseStagedSafetyTradeoffPlan =>
      'È un compromesso tra sviluppo e sicurezza: le pedine utili per costruire possono diventare bersagli.';

  @override
  String tutorPhraseStagedCompletePrompt(Object part) {
    return '$part La mossa completa è pronta; tocca Conferma per eseguirla.';
  }

  @override
  String get tutorMoveForcedVerdict =>
      'Questo lancio non lascia scelte su come muovere le pedine; non viene valutato come una decisione.';

  @override
  String get tutorMoveTopVerdict => 'La scelta migliore per questa posizione.';

  @override
  String get tutorMoveAlternativeVerdict =>
      'In questa posizione il motore preferisce un’altra giocata.';

  @override
  String tutorMoveEstimateDifference(Object loss) {
    return 'Differenza rispetto alla giocata migliore: $loss.';
  }

  @override
  String tutorMoveEstimateOutcomes(
    Object winPercent,
    Object winGammonPercent,
    Object loseGammonPercent,
  ) {
    return 'Con questa giocata: vittoria stimata $winPercent%, vittoria per gammon o meglio $winGammonPercent%, sconfitta per gammon o peggio $loseGammonPercent%. Sono stime dal punto di vista del giocatore di turno.';
  }

  @override
  String tutorMoveEstimateMatchChance(Object percent) {
    return 'Probabilità stimata di vincere il match: $percent%.';
  }

  @override
  String get tutorMovePlanAllCheckersOff =>
      'Tutte le 15 pedine sono uscite: la partita è vinta.';

  @override
  String tutorMovePlanHit(Object homeBoardAdvice) {
    return 'Usa il colpo per guadagnare tempo mentre l’avversario rientra. $homeBoardAdvice';
  }

  @override
  String get tutorMovePlanHitClosed =>
      'Mantieni chiusi i punti della tua tavola interna per rendere più difficile il rientro.';

  @override
  String get tutorMovePlanHitBuild =>
      'Chiudi altri punti nella tua tavola interna per rendere più difficile recuperare dopo i colpi futuri.';

  @override
  String get tutorMovePlanRaceBearOff =>
      'Punta a un’uscita efficiente: togli le pedine dalla tavola lasciando valori utili per il prossimo lancio.';

  @override
  String get tutorMovePlanRaceHome =>
      'Porta a casa le pedine arretrate e distribuiscile su punti utili per farle uscire.';

  @override
  String get tutorMovePlanContactBearOff =>
      'Togli le pedine dal gioco, ma tieni d’occhio quelle arretrate dell’avversario: finché c’è contatto, una pedina isolata in uscita può diventare un bersaglio.';

  @override
  String get tutorMovePlanReentry =>
      'Rientra in gioco, poi cerca un punto sicuro per la pedina appena entrata.';

  @override
  String get tutorMovePlanHomeBoard =>
      'Rafforza la tua tavola interna. Il nuovo punto chiuso rende più efficace un colpo futuro, bloccando un numero di rientro.';

  @override
  String get tutorMovePlanPrime =>
      'Mantieni unita la fila di punti chiusi. Tieni pedine di riserva, così i prossimi lanci non ti costringeranno ad aprirla.';

  @override
  String get tutorMovePlanLeaveAnchor =>
      'Lasciare un’ancora fa avanzare le pedine arretrate, ma rinunci a un appoggio sicuro. Proteggile mentre tornano a casa.';

  @override
  String get tutorMovePlanNewAnchor =>
      'Usa la nuova ancora come appoggio sicuro mentre migliori il resto della posizione.';

  @override
  String get tutorMovePlanCoverBlot =>
      'Raggruppa le pedine. Coprire una pedina esposta elimina quel bersaglio e lascia disponibili punti utili per le mosse successive.';

  @override
  String get tutorMovePlanSafety =>
      'Bilancia sviluppo e sicurezza: avvicina le pedine che costruiscono la posizione ai punti utili e controlla quali pedine isolate possono essere colpite.';

  @override
  String get tutorMoveObservationNoLegalPlay =>
      'Nessuna giocata legale con le pedine: devi passare il turno.';

  @override
  String tutorMoveObservationHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pedine avversarie',
      one: 'una pedina avversaria',
    );
    return 'Colpisci $_temp0; l’avversario deve rientrare dalla barra prima di muovere le altre.';
  }

  @override
  String tutorMoveObservationEntry(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Fai rientrare $count pedine dalla barra.',
      one: 'Fai rientrare una pedina dalla barra.',
    );
    return '$_temp0';
  }

  @override
  String tutorMoveObservationBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pedine',
      one: 'una pedina',
    );
    return 'Fai uscire $_temp0.';
  }

  @override
  String tutorMoveObservationMadePoints(Object points) {
    return 'Chiudi $points. Almeno due pedine occupano un punto sicuro e impediscono all’avversario di atterrarvi.';
  }

  @override
  String tutorMoveObservationBrokenPoints(Object pointLabel, Object points) {
    return 'Riapri $pointLabel: $points. Questi punti non impediscono più all’avversario di atterrarvi.';
  }

  @override
  String tutorMoveObservationNoBlots(int previousCount) {
    return 'Non lasci pedine isolate esposte (prima: $previousCount). L’avversario non ha pedine singole da colpire.';
  }

  @override
  String tutorMoveObservationBlots(int count, int previousCount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pedine singole esposte',
      one: 'una pedina singola esposta',
    );
    return 'Lasci $_temp0 (prima: $previousCount). Controlla se l’avversario può raggiungerle prima di preferire la sicurezza a un altro vantaggio.';
  }

  @override
  String tutorMoveObservationPrimeRun(
    int count,
    int previousCount,
    Object primeAdvice,
  ) {
    return 'Fila più lunga di punti chiusi: $count (prima: $previousCount). $primeAdvice';
  }

  @override
  String get tutorMoveObservationPrimeSix =>
      'Una fila di sei punti chiusi non si può attraversare finché resta intatta.';

  @override
  String get tutorMoveObservationPrimeBuild =>
      'Tieni vicine pedine di costruzione se vuoi allungare o mantenere questa fila.';

  @override
  String tutorMoveObservationPrimeSpares(int count) {
    return 'Pedine di riserva oltre alle due che tengono chiusi i punti: $count. Spostarne una può preservare il punto; spostare una delle ultime due lo apre.';
  }

  @override
  String tutorMoveObservationAnchors(Object points, Object previousPoints) {
    return 'Ancore nella tavola interna avversaria: $points (prima: $previousPoints). Mantenere un’ancora protegge quelle pedine dai colpi; lasciarla scambia quell’appoggio sicuro con un avanzamento nella corsa.';
  }

  @override
  String get tutorMoveObservationPureRace =>
      'Corsa pura: le pedine si sono superate e nessuno ha pedine sulla barra. Non si può più colpire; conta l’efficienza nell’uscita.';

  @override
  String get tutorMoveObservationNoReplyHit =>
      'In questa posizione, nessun prossimo lancio legale permette all’avversario di colpire una tua pedina. Il contatto rimane, quindi le mosse successive possono creare nuove occasioni.';

  @override
  String tutorMoveObservationReplyHit(
    int count,
    int total,
    int dieOne,
    int dieTwo,
    int point,
  ) {
    return 'L’avversario può colpire con $count combinazioni su $total. Per esempio, $dieOne–$dieTwo consente un colpo legale sul tuo punto $point. È un’opportunità, non una scelta garantita.';
  }

  @override
  String tutorMoveObservationOpponentBarHome(
    int closedPoints,
    Object entryAdvice,
  ) {
    return 'Punti chiusi nella tua tavola interna: $closedPoints. $entryAdvice';
  }

  @override
  String get tutorMoveObservationAllEntriesClosed =>
      'L’avversario non può rientrare finché non si apre un punto.';

  @override
  String get tutorMoveObservationOpenEntry =>
      'Un lancio che usa un punto aperto può far rientrare una pedina dalla barra.';

  @override
  String tutorMoveComparisonDetail(
    Object factors,
    Object delta,
    Object direction,
    Object scoreContext,
  ) {
    return '$factors La probabilità stimata di vittoria della giocata migliore è $direction di $delta punti percentuali.$scoreContext';
  }

  @override
  String get tutorMoveComparisonHigher => 'superiore';

  @override
  String get tutorMoveComparisonLower => 'inferiore';

  @override
  String tutorMoveComparisonScoreContext(Object scoreContext) {
    return ' Può comunque essere valutata meglio perché gammon e backgammon hanno un valore diverso in base al $scoreContext attuale.';
  }

  @override
  String get tutorMoveComparisonStake => 'valore della posta';

  @override
  String get tutorMoveComparisonMatchScore => 'punteggio del match';

  @override
  String tutorMoveComparisonFactorBar(int bestCount, int playedCount) {
    return 'Pedine avversarie sulla barra: $bestCount con la giocata migliore, invece di $playedCount. Una pedina sulla barra deve rientrare prima che l’avversario possa muovere le altre.';
  }

  @override
  String tutorMoveComparisonFactorHomeBoard(
    int bestCount,
    int playedCount,
    Object entryDifference,
  ) {
    return 'Con la giocata migliore restano chiusi $bestCount punti della tavola interna, invece di $playedCount; dopo un colpo, $entryDifference.';
  }

  @override
  String get tutorMoveComparisonClosingMore =>
      'si chiude un numero maggiore di possibilità di rientro';

  @override
  String get tutorMoveComparisonLeavingMore =>
      'resta aperto un numero maggiore di punti di rientro';

  @override
  String tutorMoveComparisonFactorShots(
    int bestCount,
    int playedCount,
    Object riskDifference,
  ) {
    return 'La giocata migliore consente un colpo di risposta con $bestCount lanci su 36, invece di $playedCount. $riskDifference';
  }

  @override
  String get tutorMoveComparisonReducesRisk =>
      'Questo riduce il rischio immediato di essere rimandato indietro.';

  @override
  String get tutorMoveComparisonExtraExposure =>
      'Confronta questa maggiore esposizione con gli altri vantaggi della giocata.';

  @override
  String tutorMoveComparisonFactorPrime(int bestCount, int playedCount) {
    return 'La fila più lunga di punti chiusi è di $bestCount con la giocata migliore, invece di $playedCount. Confronta la barriera con le pedine disponibili per mantenerla intatta.';
  }

  @override
  String tutorMoveComparisonFactorAnchors(
    Object bestPoints,
    Object playedPoints,
  ) {
    return 'Ancore con la giocata migliore: $bestPoints, invece di $playedPoints. Mantenere un’ancora offre un punto d’appoggio sicuro; lasciarla avvicina quelle pedine a casa.';
  }

  @override
  String tutorMoveComparisonFactorBearOff(int bestCount, int playedCount) {
    return 'Numero di pedine già uscite: $bestCount con la giocata migliore, invece di $playedCount. Ogni pedina tolta è una in meno da far uscire in seguito.';
  }

  @override
  String get tutorMoveComparisonFactorSimilarRisks =>
      'Entrambe le giocate lasciano lo stesso rischio immediato di essere colpiti, gli stessi punti chiusi nella tavola interna e le stesse ancore e pedine uscite. Confronta i punti d’atterraggio: il prossimo lancio può usare quelle pedine in modo diverso.';

  @override
  String get tutorMoveComparisonSummaryBar =>
      'La giocata migliore manda più pedine avversarie sulla barra, ritardando le altre mosse.';

  @override
  String get tutorMoveComparisonSummaryHomeBoard =>
      'La giocata migliore chiude più punti nella tavola interna, rendendo più difficile il rientro dopo un colpo.';

  @override
  String get tutorMoveComparisonSummaryShots =>
      'La giocata migliore permette meno lanci di risposta che colpiscono, riducendo il rischio di essere rimandato indietro.';

  @override
  String get tutorMoveComparisonSummaryPrime =>
      'La giocata migliore mantiene una fila più lunga di punti chiusi.';

  @override
  String get tutorMoveComparisonSummaryAnchors =>
      'La giocata migliore mantiene più ancore sicure nella tavola interna avversaria.';

  @override
  String get tutorMoveComparisonSummaryBearOff =>
      'La giocata migliore fa uscire più pedine, lasciandone meno da togliere in seguito.';

  @override
  String tutorMoveComparisonSummaryBlots(int playedCount, int bestCount) {
    return 'Pedine singole esposte lasciate: $playedCount con questa giocata; $bestCount con la migliore.';
  }

  @override
  String tutorMoveComparisonSummarySafeAnchor(int point) {
    return 'La giocata migliore mantiene un’ancora sicura sul punto $point.';
  }

  @override
  String get tutorMoveComparisonSummaryEntry =>
      'La giocata migliore chiude più punti di rientro nel caso in cui una tua pedina venga colpita.';

  @override
  String get tutorMoveComparisonSummarySimilarRisks =>
      'Le giocate lasciano rischi immediati simili; confronta quali punti d’atterraggio restano utili al prossimo lancio.';

  @override
  String tutorMoveAssessmentEquityLoss(Object value) {
    return 'Perdita di equity: $value';
  }

  @override
  String tutorMoveAssessmentMwcLoss(Object value) {
    return '$value pp di probabilità di vincere il match (MWC)';
  }

  @override
  String get tutorMovePointSingular => 'punto';

  @override
  String get tutorMovePointPlural => 'punti';

  @override
  String get tutorMoveNoPoints => 'nessuno';

  @override
  String get gameTutorCommentaryOff =>
      'I commenti sulla partita sono disattivati.';

  @override
  String get gameTutorToolsAvailable =>
      'Apri il tutor per gli strumenti che hai attivato.';

  @override
  String get gameTutorNextRoll => 'Lancia di nuovo i dadi.';

  @override
  String get gameTutorNoEvaluatedReview =>
      'Per questa mossa registrata non è disponibile una spiegazione valutata.';

  @override
  String get gameTutorAnalysisUnavailable => 'analisi non disponibile';

  @override
  String get gameTutorReviewing => 'in revisione…';

  @override
  String get gameTutorTryYourPlayFirst => 'Prova prima a fare la tua mossa.';

  @override
  String get gameTutorKeepBuilding => 'Continua a completare la tua mossa.';

  @override
  String get gameTutorStageCompleteBeforeCoaching =>
      'Completa una mossa legale prima di mostrare commenti o suggerimenti.';

  @override
  String get gameTutorReadyToConfirm => 'Pronto per la conferma';

  @override
  String get gameTutorPlayTakingShape => 'La tua mossa sta prendendo forma.';

  @override
  String get gameTutorConfirmOrUndo =>
      'Conferma per giocare la mossa oppure annulla per ripensarci.';

  @override
  String get gameTutorFinishDiceOrUndo =>
      'Usa i dadi rimanenti oppure annulla per ripensarci.';

  @override
  String get gameTutorComputerConsidering =>
      'Il computer sta valutando la propria mossa.';

  @override
  String get gameTutorComputerPlayReviewed =>
      'La sua mossa completa verrà analizzata qui.';

  @override
  String get gameTutorYourPlay => 'La tua mossa';

  @override
  String get gameTutorComputer => 'Computer';

  @override
  String gameTutorPlayQuality(Object quality) {
    return 'La tua mossa: $quality';
  }

  @override
  String get gameTutorForcedPlay => 'mossa obbligata';

  @override
  String get gameTutorTopChoice => 'scelta migliore';

  @override
  String get gameTutorSoundPlay => 'buona mossa';

  @override
  String get gameTutorAnotherPlayMayFitBetter =>
      'un’altra mossa potrebbe adattarsi meglio';

  @override
  String get gameTutorAnotherPlayFitsBetter =>
      'un’altra mossa si adatta meglio a questa posizione';

  @override
  String get gameTutorStrongerPlayAvailable =>
      'era disponibile una mossa chiaramente migliore';

  @override
  String gameTutorPositionEdge(Object side) {
    return '$side ha il vantaggio stimato.';
  }

  @override
  String get gameTutorPositionEven => 'La posizione è più o meno equilibrata.';

  @override
  String tutorPlayedMove(Object move) {
    return 'Giocata: $move';
  }

  @override
  String tutorBestMove(Object move) {
    return 'Mossa migliore: $move';
  }

  @override
  String get tutorShowRankedPlays => 'Mostra le mosse classificate';

  @override
  String get tutorReviewRecordedMove =>
      'Tocca una mossa completata nel registro per rivedere qui la decisione.';

  @override
  String get tutorTopPlays => 'Mosse migliori';

  @override
  String get tutorNoHintsAvailable => 'Nessun suggerimento disponibile.';

  @override
  String get tutorPreviewThenConfirm =>
      'Tocca una mossa per visualizzarla sulla tavola, poi conferma.';

  @override
  String get tutorTopChoiceForPosition =>
      'Scelta migliore per questa posizione';

  @override
  String get tutorAlternativePlay => 'Mossa alternativa';

  @override
  String get tutorEngineEstimates => 'Stime del motore';

  @override
  String get tutorEstimateScope =>
      'Stima a 0 ply · punteggio e posta attuali · senza decisioni future sul cubo';

  @override
  String get tutorEquity => 'Equità';

  @override
  String get tutorMwcPercent => 'MWC %';

  @override
  String get tutorNearTiesNote =>
      'Un’analisi più approfondita può cambiare l’ordine tra mosse quasi alla pari.';

  @override
  String get tutorWhyThisPlay => 'Perché questa mossa?';

  @override
  String get tutorCompareAlternative => 'Confronta questa alternativa';

  @override
  String get gameTutorCubeTake => 'Tutor: accetta';

  @override
  String get gameTutorCubePass => 'Tutor: passa';

  @override
  String get practiceScreenTitle => 'Allena una decisione';

  @override
  String get practiceUnavailable =>
      'Questa posizione di allenamento non è più disponibile.';

  @override
  String get practiceSubmitError =>
      'Non è stato possibile valutare o salvare questo tentativo. I tuoi progressi non sono cambiati. Riprova.';

  @override
  String practiceTurnLabel(Object side, Object dice) {
    return 'Tocca a $side · $dice';
  }

  @override
  String get practiceHistoricalScoreUnavailable =>
      'Punteggio storico non disponibile; la valutazione usa l’equity senza cubo.';

  @override
  String practiceScoreLine(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return 'Punteggio: $whiteLabel $whiteScore – $blackLabel $blackScore, a $matchLength';
  }

  @override
  String get practiceCrawfordGame => ' · partita Crawford';

  @override
  String get practiceNoDoublingCube => 'Senza cubo del raddoppio.';

  @override
  String practiceCubeValue(int value) {
    return 'Cubo $value.';
  }

  @override
  String get practiceHistoricalCubeUnknown =>
      'Regole storiche del cubo sconosciute.';

  @override
  String get practiceAfterBestPosition => 'Posizione dopo la mossa migliore';

  @override
  String get practiceAfterYourAnswerPosition =>
      'Posizione dopo la tua risposta';

  @override
  String get practiceFindYourPlayPrompt =>
      'Fai la tua mossa sulla tavola, poi verifica la risposta. Non vengono mostrati suggerimenti.';

  @override
  String get practiceUndo => 'Annulla';

  @override
  String get practiceCheckAnswer => 'Controlla la risposta';

  @override
  String get practiceRevealNoCredit => 'Mostra la risposta (senza credito)';

  @override
  String get practiceAnswerRevealedNoCredit =>
      'Risposta mostrata — nessun credito per il ricordo.';

  @override
  String practiceGradeLine(Object verdict, Object loss) {
    return '$verdict · $loss';
  }

  @override
  String practiceBestMoveLine(Object move) {
    return 'Migliore: $move';
  }

  @override
  String practiceOriginalGameLine(Object move, Object loss) {
    return 'Partita originale: $move · $loss';
  }

  @override
  String practiceYourAnswerLine(Object move) {
    return 'La tua risposta: $move';
  }

  @override
  String get practiceYourAnswerChip => 'La tua risposta';

  @override
  String get practiceBestPlayChip => 'Mossa migliore';

  @override
  String practiceNextReview(Object date) {
    return 'Prossimo ripasso: $date.';
  }

  @override
  String get practiceRecallCredit =>
      'Le risposte migliori o buone contano come ricordo riuscito. Le ripetizioni anticipate non fanno avanzare il calendario.';

  @override
  String get practiceBackToLearning => 'Torna all’apprendimento';

  @override
  String get practiceMarkBest => 'Migliore';

  @override
  String get practiceMarkGood => 'Buona';

  @override
  String get practiceMarkDubious => 'Dubbia';

  @override
  String get practiceMarkError => 'Errore';

  @override
  String get practiceMarkBlunder => 'Errore grave';

  @override
  String get practiceMarkForced => 'Forzata';

  @override
  String get newMatchYourSide => 'Il tuo lato';

  @override
  String get newMatchTutorMode => 'Modalità tutor';

  @override
  String get newMatchTutorDescription =>
      'Impara con suggerimenti, spiegazioni e commenti sulla partita';

  @override
  String get newMatchTutoringOptions => 'Opzioni di tutoraggio';

  @override
  String get newMatchTutoringOptionsDescription =>
      'Per questa partita; modificabili durante il gioco';

  @override
  String get setupMatchLength => 'Durata del match';

  @override
  String get setupDifficulty => 'Difficoltà';

  @override
  String get setupDifficultyEasy => 'Facile';

  @override
  String get setupDifficultyMedium => 'Media';

  @override
  String get setupDifficultyHard => 'Difficile';

  @override
  String get setupDifficultyExpert => 'Esperto';

  @override
  String get setupPlayWithoutCube => 'Gioca senza cubo';

  @override
  String get setupNoCubeThisMatch =>
      'Nessun cubo del raddoppio in questa partita';

  @override
  String get analysisTitle => 'Analisi';

  @override
  String get gameMatchSummary => 'Riepilogo del match';

  @override
  String get gameAnalyzeGame => 'Analizza la partita';

  @override
  String get analysisMetricsTooltip => 'Cosa significano questi numeri?';

  @override
  String analysisError(Object error) {
    return 'Analisi della partita non riuscita: $error';
  }

  @override
  String get analysisNoPositions =>
      'Questa partita non ha posizioni da mostrare.';

  @override
  String get analysisInProgress => 'Analisi della partita…';

  @override
  String analysisPercent(int percent) {
    return '$percent%';
  }

  @override
  String get analysisPlayed => 'Giocata';

  @override
  String get analysisBest => 'Migliore';

  @override
  String get analysisPrevious => 'Precedente';

  @override
  String get analysisNext => 'Successiva';

  @override
  String get analysisPositionBeforeCube =>
      'Posizione prima della decisione sul cubo';

  @override
  String get analysisPositionAtPoint =>
      'Posizione in questo punto della partita';

  @override
  String get analysisShowingBestBefore =>
      'Migliore mossa mostrata nella posizione prima della mossa';

  @override
  String get analysisShowingBefore => 'Posizione prima della mossa';

  @override
  String analysisVerdictLine(Object side, Object verdict, Object loss) {
    return '$side: $verdict$loss';
  }

  @override
  String analysisMoveLoss(Object loss) {
    return ' −$loss';
  }

  @override
  String get analysisExcludedFromAverages => ' · escluso dalle medie';

  @override
  String get analysisNoPlay => '(nessuna mossa)';

  @override
  String analysisBestMoveLine(Object move) {
    return 'Mossa migliore: $move';
  }

  @override
  String get analysisExplain => 'Spiega';

  @override
  String get analysisSaveForPractice => 'Salva per allenarti';

  @override
  String get analysisSaveError =>
      'Impossibile salvare questa decisione. Riprova.';

  @override
  String analysisCubeInfo(
    Object side,
    Object action,
    Object mark,
    Object loss,
  ) {
    return '$side: $action · $mark · perdita $loss';
  }

  @override
  String get analysisCubeDecision => 'Decisione sul cubo';

  @override
  String analysisCubePlayed(Object action, Object percent) {
    return 'Giocata: $action (probabilità di vincere il match: $percent%).';
  }

  @override
  String analysisCubeBest(Object action, Object percent) {
    return 'Migliore: $action (probabilità di vincere il match: $percent%).';
  }

  @override
  String get analysisCubeEstimate =>
      'Stima a 0 ply dalla prospettiva del giocatore di turno. Presume una risposta ottimale di presa o passaggio. Usa un’approssimazione della vita del cubo di 0,7 nel ramo del raddoppio accettato, non una ricerca completa dei raddoppi futuri. Un’analisi più profonda può cambiare la risposta.';

  @override
  String get analysisClose => 'Chiudi';

  @override
  String get analysisMoves => 'Mosse';

  @override
  String get analysisForced => 'Forzata';

  @override
  String get analysisMarkBest => 'Migliore';

  @override
  String get analysisMarkGood => 'Buona';

  @override
  String get analysisMarkDubious => 'Dubbia';

  @override
  String get analysisMarkError => 'Errore';

  @override
  String get analysisMarkBlunder => 'Errore grave';

  @override
  String analysisSummaryMeanLoss(Object loss) {
    return 'Perdita media $loss';
  }

  @override
  String analysisSummaryCheckerDecisions(int count) {
    return '$count decisioni sulle pedine';
  }

  @override
  String analysisSummaryBlunders(int count) {
    return 'Errori gravi $count';
  }

  @override
  String analysisSummaryCubeLoss(Object loss) {
    return 'Perdita del cubo $loss';
  }

  @override
  String analysisRollWithoutDoubling(Object side) {
    return '$side tira senza raddoppiare';
  }

  @override
  String get metricExplainerTitle => 'Capire le metriche';

  @override
  String get metricExplainerTooltip => 'Cosa significano questi numeri?';

  @override
  String get metricExplainerMwcTitle => 'Probabilità di vincere il match (MWC)';

  @override
  String get metricExplainerMwcBody =>
      'Quando il punteggio è noto, le mosse sono classificate per probabilità stimata di vincere il match. La perdita è espressa in punti percentuali (pp): 1 pp porta dal 51% al 50%. Sono inclusi la posta corrente del cubo e gli esiti gammon/backgammon. I passaggi forzati e i lanci con una sola posizione legale sono esclusi dalle medie.';

  @override
  String get metricExplainerSearchTitle => 'Ricerca e incertezza';

  @override
  String get metricExplainerSearchBody =>
      'Le classifiche delle mosse sono stime statiche post-mossa a 0 ply, non simulazioni. I valori del match usano una tabella di equity senza futuri turni del cubo. Le analisi del cubo usano un’approssimazione parziale della vita del cubo di 0,7 sui raddoppi accettati. Non è una ricerca cubeful completa. Gli svantaggi superiori a 25 usano il limite della tabella a 25. I risultati ravvicinati possono cambiare con un’analisi più profonda; non esiste un intervallo di confidenza calibrato.';

  @override
  String get metricExplainerEquityTitle => 'Equity';

  @override
  String get metricExplainerEquityBody =>
      'Se il punteggio non è disponibile, l’equity cubeless indica il valore medio in punti di una posizione con il cubo a 1. +1,0 significa un punto atteso; −0,5 significa mezzo punto perso in media.';

  @override
  String get metricExplainerEquityLossTitle => 'Perdita di equity (es. −0,016)';

  @override
  String get metricExplainerEquityLossBody =>
      'Per ogni mossa confrontiamo ciò che hai giocato con la mossa migliore del motore. La perdita di equity misura il valore atteso ceduto. −0,016 significa che la mossa era peggiore di soli 0,016 punti: un piccolo errore. 0,000 indica che hai trovato la mossa migliore.';

  @override
  String get metricExplainerErrorRateTitle => 'Tasso di errore';

  @override
  String get metricExplainerErrorRateBody =>
      'La perdita media calcola la media delle decisioni sulle pedine valutate nell’unità mostrata. Le decisioni sul cubo hanno una media separata. Un valore più basso indica maggiore vicinanza alle migliori stime del motore; non è una valutazione calibrata del giocatore.';

  @override
  String get metricExplainerMoveMarksTitle => 'Valutazioni delle mosse';

  @override
  String get metricExplainerMoveMarksBody =>
      'Fasce didattiche MWC: Migliore < 0,05 pp, Buona < 0,5 pp, Dubbia < 1,5 pp, Errore < 3 pp, Errore grave ≥ 3 pp. Sono fasce didattiche del prodotto, non una misura calibrata né un rating da torneo.\n\nFasce didattiche dell’equity cubeless:';

  @override
  String get metricExplainerThresholdBest => 'perdita < 0,001';

  @override
  String get metricExplainerThresholdGood => 'perdita < 0,020';

  @override
  String get metricExplainerThresholdDubious => 'perdita < 0,050';

  @override
  String get metricExplainerThresholdError => 'perdita < 0,110';

  @override
  String get metricExplainerThresholdBlunder => 'perdita ≥ 0,110';

  @override
  String get metricExplainerGotIt => 'Ho capito';

  @override
  String get historyTitle => 'Cronologia dei match';

  @override
  String historyLoadFailed(Object error) {
    return 'Impossibile caricare la cronologia:\n$error';
  }

  @override
  String get historyEmpty => 'Non hai ancora giocato nessun match.';

  @override
  String get historyDeleteConfirmTitle => 'Eliminare questo match?';

  @override
  String historyDeleteConfirmBody(Object scoreLine) {
    return '$scoreLine\n\nIl match e tutte le partite registrate saranno eliminati definitivamente. L’azione non può essere annullata.';
  }

  @override
  String get actionCancel => 'Annulla';

  @override
  String get actionDelete => 'Elimina';

  @override
  String get historyDeleteFailed => 'Impossibile eliminare il match.';

  @override
  String get historyComplete => 'Completato';

  @override
  String historyWinner(Object side) {
    return '$side ha vinto';
  }

  @override
  String get historyUnfinished => 'Incompleto';

  @override
  String get historyMatchTitle => 'Match';

  @override
  String historyMatchLoadFailed(Object error) {
    return 'Impossibile caricare il match:\n$error';
  }

  @override
  String historyGamesLoadFailed(Object error) {
    return 'Impossibile caricare le partite:\n$error';
  }

  @override
  String get historyNoGames => 'Nessuna partita registrata.';

  @override
  String historyGameTitle(int number) {
    return 'Partita $number';
  }

  @override
  String get historyCrawford => 'Crawford';

  @override
  String historyScoreLine(int whiteScore, int blackScore, int matchLength) {
    return 'Bianchi $whiteScore — $blackScore Neri (a $matchLength)';
  }

  @override
  String get historyModeComputer => 'contro il computer';

  @override
  String get historyModeTwoPlayers => 'Due giocatori';

  @override
  String get historyModeOnline => 'Online';

  @override
  String get historyModeNearby => 'Gioca nelle vicinanze';

  @override
  String get historyModeBuddy => 'Buddy';

  @override
  String get historyGameInProgress => 'In corso';

  @override
  String historyGameResult(Object side, int points, Object outcome) {
    return '$side vince $points ($outcome)';
  }

  @override
  String get historyOutcomeSingle => 'singola';

  @override
  String get historyOutcomeGammon => 'gammon';

  @override
  String get historyOutcomeBackgammon => 'backgammon';

  @override
  String get learningRefreshTooltip => 'Aggiorna i progressi di apprendimento';

  @override
  String get learningOptions => 'Opzioni di apprendimento';

  @override
  String get learningResetMenu => 'Reimposta i progressi degli esercizi';

  @override
  String get learningLoadFailed =>
      'Impossibile caricare i progressi di apprendimento.';

  @override
  String get actionRetry => 'Riprova';

  @override
  String get learningHeading => 'Impara dalle tue decisioni';

  @override
  String get learningIntro =>
      'I progressi restano su questo dispositivo. Rivedi i temi ricorrenti e riprova le posizioni salvate senza vedere la risposta. Puoi rivedere separatamente Bianchi e Neri.';

  @override
  String get learningBothSides => 'Entrambi i lati';

  @override
  String get learningHumansOnly => 'Solo decisioni umane';

  @override
  String get learningHumanOnlyHelp =>
      'Disattiva per includere le decisioni del computer e dei giocatori remoti';

  @override
  String learningDecisionSummary(int decisions, int mistakes, int blunders) {
    return '$decisions decisioni · $mistakes da migliorare · $blunders errori gravi';
  }

  @override
  String learningAverageLoss(int decisions, Object loss) {
    return 'Perdita media ($decisions decisioni): $loss';
  }

  @override
  String get learningForcedDisclaimer =>
      'Le mosse forzate sono escluse. Sono stime del motore, non una valutazione da torneo.';

  @override
  String learningGamesNeedingAnalysis(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Le $count partite salvate richiedono un’analisi o una nuova analisi.',
      one: 'La partita salvata richiede un’analisi o una nuova analisi.',
    );
    return '$_temp0';
  }

  @override
  String get learningAnalyseSavedGames => 'Analizza le partite salvate';

  @override
  String get learningEmptyProfile =>
      'Gioca e termina una partita per creare il tuo profilo di apprendimento. Puoi anche salvare singole decisioni dalla revisione.';

  @override
  String get learningOpenHistory => 'Apri la cronologia';

  @override
  String get learningRecurringThemes => 'Temi ricorrenti';

  @override
  String get learningNoThemes =>
      'Nessun tema ricorrente di errore in questa selezione.';

  @override
  String learningThemeDecisions(int count) {
    return '$count decisioni da rivedere. Una posizione può avere più temi.';
  }

  @override
  String get learningSaveMistakes => 'Salva questi errori per allenarti';

  @override
  String learningSavedMistakes(int count) {
    return '$count decisioni nella lista di allenamento. Le decisioni già salvate restano.';
  }

  @override
  String get learningSaveMistakesFailed =>
      'Non è stato possibile salvare alcune decisioni. Quelle salvate correttamente restano; riprova.';

  @override
  String get learningSpacedPractice => 'Allenamento dilazionato';

  @override
  String learningPracticeCounts(
    int due,
    int saved,
    int attempts,
    int successes,
  ) {
    return '$due da rivedere · $saved salvate · $attempts tentativi · $successes ricordi riusciti';
  }

  @override
  String get learningIntervalsHelp =>
      'Le revisioni dovute e riuscite tornano dopo 1, 3, 7, 14 e 30 giorni. Errori o risposte rivelate tornano dopo 10 minuti. Le ripetizioni anticipate non modificano l’intervallo.';

  @override
  String get learningAnswerContext =>
      'I risultati riflettono le risposte date qui, anche se la posizione originale apparteneva a un avversario.';

  @override
  String get learningNoSavedPositions =>
      'Salva una decisione dalla revisione oppure usa il pulsante degli errori qui sopra.';

  @override
  String learningPositionTitle(Object side, int gameId) {
    return 'Decisione di $side · partita $gameId';
  }

  @override
  String learningReviewDue(Object date) {
    return 'Rivedi il $date';
  }

  @override
  String get learningReadyToReview => 'Pronto per il ripasso';

  @override
  String learningSuccessStreak(int count) {
    return '$count ripassi dovuti riusciti';
  }

  @override
  String get learningRemoveTooltip => 'Rimuovi decisione salvata';

  @override
  String get learningRecentPractice => 'Allenamenti recenti';

  @override
  String get learningAnswerRevealed => 'Risposta mostrata';

  @override
  String get learningSuccessfulRecall => 'Ricordo riuscito';

  @override
  String get learningTryAgain => 'Riprova questa decisione';

  @override
  String learningAttemptSubtitle(Object date, int positionId) {
    return '$date · posizione salvata $positionId';
  }

  @override
  String get learningRemoveTitle => 'Rimuovere questo esercizio?';

  @override
  String get learningRemoveBody =>
      'Questo elimina i tentativi di allenamento. La partita originale resta nella cronologia.';

  @override
  String get actionRemove => 'Rimuovi';

  @override
  String get learningRemoveFailed => 'Impossibile rimuovere questo esercizio.';

  @override
  String get learningResetTitle => 'Reimpostare i progressi degli allenamenti?';

  @override
  String get learningResetBody =>
      'Tutti i tentativi e gli intervalli di ripasso verranno rimossi. Gli esercizi salvati e la cronologia restano; tutti gli esercizi diventeranno subito da rivedere.';

  @override
  String get learningResetAction => 'Reimposta progressi';

  @override
  String get learningResetFailed => 'Impossibile reimpostare i progressi.';

  @override
  String learningAnalysisProgress(int completed, int failed) {
    return 'Partite analizzate: $completed · non disponibili: $failed.';
  }

  @override
  String learningAnalysisComplete(int completed) {
    return 'Partite analizzate: $completed.';
  }

  @override
  String learningAnalysisCompleteWithErrors(int completed, int failed) {
    return 'Analizzate $completed partite; $failed non sono state analizzate. Riprova quando il motore è pronto.';
  }

  @override
  String get learningThemeHitting => 'Attacchi e tempo';

  @override
  String get learningThemeSafety => 'Blot e sicurezza';

  @override
  String get learningThemePointMaking => 'Costruire punti';

  @override
  String get learningThemePrime => 'Prime e blocchi';

  @override
  String get learningThemeAnchor => 'Ancore e fuga';

  @override
  String get learningThemeRace => 'Efficienza nella corsa';

  @override
  String get learningThemeBearOff => 'Uscita delle pedine';

  @override
  String get learningThemeBarEntry => 'Ingresso dalla barra';

  @override
  String get learningThemeCube => 'Decisioni sul cubo';

  @override
  String get analysisCubeNoDouble => 'Non raddoppiare';

  @override
  String get analysisCubeDouble => 'Raddoppia';

  @override
  String get analysisCubeTake => 'Accetta';

  @override
  String get analysisCubePass => 'Passa';

  @override
  String get learningAnalysisStarting => 'Analisi delle partite salvate…';

  @override
  String get tutorCubelessEstimateScope =>
      'Stima cubeless a 0 ply · punteggio non disponibile';

  @override
  String get tutorLossPp => 'Perdita pp';

  @override
  String get tutorLoss => 'Perdita';

  @override
  String get scoreSheetNoMoves => 'Nessuna mossa per ora';

  @override
  String get tutorOptions => 'Opzioni di tutoraggio';

  @override
  String get tutorCollapseTooltip => 'Riduci tutor';

  @override
  String get tutorExpandTooltip => 'Espandi tutor';

  @override
  String get onlineTitle => 'Gioca online';

  @override
  String get onlineUnassistedNote =>
      'Le partite online non hanno il tutor attivo. Rivedi le mosse e allenati sugli errori dopo il match.';

  @override
  String get onlineNotConfiguredTitle =>
      'Il gioco online non è configurato in questa build';

  @override
  String get onlineNotConfiguredBody =>
      'Questa build non è collegata a Firebase, quindi non è possibile creare o raggiungere match.';

  @override
  String get onlineErrorNoMatch =>
      'Nessun match con questo codice. Controllalo e riprova.';

  @override
  String get onlineErrorSeatTaken =>
      'Questo match non è più aperto: il posto è stato occupato.';

  @override
  String get onlineErrorPermission => 'Non hai accesso a questo match.';

  @override
  String get onlineErrorGeneric => 'Qualcosa è andato storto. Riprova.';

  @override
  String get onlineMatchFinished =>
      'Il match è terminato e non può essere ripreso.';

  @override
  String get onlineEnterCodeError => 'Inserisci un codice match.';

  @override
  String get onlineOpponentShort => 'Avversario';

  @override
  String get onlineMatchInProgress => 'Match in corso';

  @override
  String onlineResumePrompt(Object code) {
    return 'Stavi giocando il match $code.';
  }

  @override
  String get onlineRejoin => 'Riprendi';

  @override
  String get onlineForgetMatch => 'Dimentica questo match';

  @override
  String get onlineCreateTitle => 'Crea un match';

  @override
  String get onlineMatchLength => 'Durata del match';

  @override
  String get onlineNoCubeTitle => 'Gioca senza cubo';

  @override
  String get onlineNoCubeSubtitle =>
      'Nessun cubo del raddoppio in questa partita';

  @override
  String get onlineCreate => 'Crea';

  @override
  String get onlineWaitingOpponent => 'In attesa dell’avversario…';

  @override
  String get onlineShareCode => 'Condividi questo codice';

  @override
  String get onlineCopyCode => 'Copia codice';

  @override
  String get onlineCodeCopied => 'Codice copiato';

  @override
  String get onlineJoinTitle => 'Partecipa a un match';

  @override
  String get onlineRoomCode => 'Codice match';

  @override
  String get onlineJoin => 'Partecipa';

  @override
  String get lanTitle => 'Gioca nelle vicinanze';

  @override
  String get lanTabHost => 'Ospita';

  @override
  String get lanTabJoin => 'Partecipa';

  @override
  String get lanUnassistedNote =>
      'Le partite locali non hanno il tutor attivo. Rivedi le mosse e allenati sugli errori dopo il match.';

  @override
  String get lanGameStartFailed =>
      'Impossibile avviare la partita. L’altro dispositivo può provare a partecipare di nuovo.';

  @override
  String get lanHostPortInUse =>
      'Impossibile avviare l’hosting: la porta è già in uso. Chiudi ogni altra copia di Backgammon Buddy e riprova.';

  @override
  String get lanHostStartFailed =>
      'Impossibile avviare l’hosting. Controlla il Wi-Fi e riprova.';

  @override
  String get lanHostTitle => 'Ospita una partita';

  @override
  String get lanStartHosting => 'Avvia hosting';

  @override
  String get lanHostHelp =>
      'I due dispositivi devono usare la stessa rete Wi-Fi. Questo tira i dadi e tiene il punteggio.';

  @override
  String get lanWaitingPlayerTitle => 'In attesa di un giocatore';

  @override
  String get lanRoomCodeInfo =>
      'Comunica questo codice all’altro giocatore. Consente l’accesso e l’app non lo invia mai in rete.';

  @override
  String get lanWaitingPlayer => 'In attesa di un giocatore…';

  @override
  String get lanStopHosting => 'Interrompi hosting';

  @override
  String lanFindNearbyPort(int port) {
    return 'Chiedi all’altro dispositivo di cercare partite vicine. In ascolto sulla porta $port.';
  }

  @override
  String get lanOnNetwork => 'Su questa rete';

  @override
  String get lanCopyAddress => 'Copia indirizzo';

  @override
  String get lanAddressCopied => 'Indirizzo copiato';

  @override
  String get lanScanHostTitle => 'Scansiona l’host';

  @override
  String get lanScanHostHelp =>
      'L’altro dispositivo mostra un QR code nella schermata Host. Scansionandolo, indirizzo e codice sala vengono inseriti automaticamente.';

  @override
  String get lanScanQr => 'Scansiona QR code';

  @override
  String get lanScannerUnavailable =>
      'Fotocamera o autorizzazione non disponibile. Inserisci qui sotto indirizzo e codice sala.';

  @override
  String get lanInvalidQr =>
      'Questo QR code non è di Backgammon Buddy. Scansiona quello nella schermata Host dell’altro dispositivo.';

  @override
  String get lanScannerFailed =>
      'Impossibile aprire lo scanner. Inserisci qui sotto indirizzo e codice.';

  @override
  String get lanNearbyGames => 'Partite vicine';

  @override
  String get lanSearching => 'Ricerca di partite vicine…';

  @override
  String get lanNoGamesFound =>
      'Nessuna partita trovata. Verifica che l’altro dispositivo ospiti una partita e che entrambi siano sullo stesso Wi-Fi, oppure inserisci il suo indirizzo.';

  @override
  String get lanStillSearching => 'Ricerca in corso…';

  @override
  String get lanEnterAddress => 'Inserisci indirizzo';

  @override
  String get lanEnterAddressHelp =>
      'La ricerca automatica non funziona su tutte le reti e su iOS potrebbe essere del tutto bloccata. La schermata Host indica cosa inserire.';

  @override
  String get lanIpAddress => 'Indirizzo IP';

  @override
  String get lanPort => 'Porta';

  @override
  String get lanInvalidPort => 'Inserisci una porta tra 1 e 65535.';

  @override
  String get lanEnterAddressError =>
      'Inserisci l’indirizzo mostrato sull’altro dispositivo.';

  @override
  String get lanEnterRoomCodeError =>
      'Inserisci il codice di 4 cifre dell’altro dispositivo.';

  @override
  String get lanJoinWrongCode =>
      'Codice sala errato. Controlla le quattro cifre.';

  @override
  String get lanJoinVersionMismatch =>
      'L’altro dispositivo usa una versione diversa di Backgammon Buddy.';

  @override
  String get lanJoinHandshakeFailed =>
      'Il dispositivo non ha risposto come Backgammon Buddy. Controlla indirizzo e porta.';

  @override
  String get lanJoinFailed =>
      'Impossibile partecipare. Controlla indirizzo e codice e riprova.';

  @override
  String lanJoinTarget(Object name) {
    return 'Partecipa a $name';
  }

  @override
  String get lanJoinTargetHelp =>
      'Inserisci il codice di 4 cifre mostrato sull’altro dispositivo.';

  @override
  String lanJoiningTarget(Object name) {
    return 'Connessione a $name';
  }

  @override
  String get lanConnect => 'Connetti';

  @override
  String get lanBack => 'Indietro';

  @override
  String get lanTryAgain => 'Riprova';

  @override
  String get lanStatusBusy => 'Sala occupata — attesa…';

  @override
  String get lanStatusReconnecting => 'Connessione persa — nuovo tentativo…';

  @override
  String get lanStatusConnected => 'Connesso — avvio del match…';

  @override
  String get lanStatusFailed => 'Impossibile partecipare.';

  @override
  String get lanStatusConnecting => 'Connessione…';

  @override
  String get diagnosticsCopySuccess => 'Diagnostica copiata';

  @override
  String get diagnosticsReviewTitle => 'Controlla il rapporto diagnostico';

  @override
  String get diagnosticsPrivacyNotice =>
      'Aprendo la bozza invierai a GitHub i dettagli indicati sotto, inclusi versione dell’app, piattaforma e dettagli dell’errore. Nessun problema pubblico viene creato finché non lo invii. Se i dettagli contengono informazioni private, annulla e copiali per preparare il rapporto.';

  @override
  String get diagnosticsCancel => 'Annulla';

  @override
  String get diagnosticsOpenGitHub => 'Apri GitHub';

  @override
  String get diagnosticsTitle => 'Diagnostica';

  @override
  String get diagnosticsReportTooltip => 'Segnala un problema su GitHub';

  @override
  String get diagnosticsCopyTooltip => 'Copia negli appunti';

  @override
  String get diagnosticsClearTooltip => 'Cancella registro';

  @override
  String get diagnosticsEmpty =>
      'Nessun errore registrato.\n\nSe qualcosa non va, verrà registrato qui. Torna per copiare i dettagli in una segnalazione.';

  @override
  String gameHudNeutralScore(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore–$blackScore $blackLabel · a $matchLength';
  }

  @override
  String gameHudPlayerScore(
    Object you,
    int mine,
    int theirs,
    Object opponent,
    int matchLength,
  ) {
    return '$you $mine–$theirs $opponent · a $matchLength';
  }

  @override
  String get gameHudYou => 'Tu';

  @override
  String get gameHudAi => 'IA';

  @override
  String gameHudGameNumber(int number) {
    return 'Partita $number';
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
    return '$whiteLabel contro $blackLabel · $pipsLabel $whitePips–$blackPips';
  }

  @override
  String gameHudOpponentDetail(
    Object opponent,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'contro $opponent · $pipsLabel $mine–$theirs';
  }

  @override
  String gameHudOpponentDetailWithLevel(
    Object opponent,
    Object level,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'contro $opponent · $level · $pipsLabel $mine–$theirs';
  }

  @override
  String get gameHudPips => 'Pip';

  @override
  String get gameHudCrawford => 'Crawford';

  @override
  String get gameHudDouble => 'Raddoppia';

  @override
  String get gameHudMoreActions => 'Altre azioni';

  @override
  String get gameHudSurrender => 'Abbandona…';

  @override
  String get gameHudThinking => 'Sta pensando';

  @override
  String get gameHudDoubleBeforeRoll =>
      'Puoi raddoppiare solo prima di tirare, durante il tuo turno.';

  @override
  String get gameHudNoDoubleCrawford =>
      'Niente raddoppi nella partita Crawford: questa partita decide il match.';

  @override
  String get gameHudOnlyCubeOwner =>
      'Solo il proprietario del cubo può raddoppiare e ora appartiene all’altro lato.';

  @override
  String get gameHudDoubleUnavailable => 'Il raddoppio non è disponibile ora.';

  @override
  String gameDialogScoreLine(
    Object whiteLabel,
    int whiteScore,
    int blackScore,
    Object blackLabel,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore — $blackScore $blackLabel (a $matchLength)';
  }

  @override
  String gameDialogPlayerWon(Object winner, Object points) {
    return '$winner vince questa partita ($points).';
  }

  @override
  String gameDialogPlayerWonGammon(Object winner, Object points) {
    return '$winner vince questa partita ($points, gammon).';
  }

  @override
  String gameDialogPlayerWonBackgammon(Object winner, Object points) {
    return '$winner vince questa partita ($points, backgammon).';
  }

  @override
  String gameDialogPlayerWonDrop(Object winner, Object points, Object loser) {
    return '$winner vince questa partita ($points) — $loser ha rifiutato il raddoppio.';
  }

  @override
  String gameDialogPlayerWonResignation(
    Object winner,
    Object points,
    Object loser,
  ) {
    return '$winner vince questa partita ($points) — $loser si è arreso.';
  }

  @override
  String get gameDialogPassDeviceTitle => 'Passa il dispositivo';

  @override
  String gameDialogPlayersTurn(Object name) {
    return 'Tocca a $name';
  }

  @override
  String get gameDialogTapToContinue => 'Tocca per continuare';

  @override
  String get gameDialogCubeOfferedTitle => 'Raddoppio offerto';

  @override
  String gameDialogCubeOfferMessage(
    Object doubler,
    int value,
    Object tutorLine,
  ) {
    return '$doubler offre un raddoppio a $value. Accettare o passare?$tutorLine';
  }

  @override
  String get gameDialogPass => 'Passa';

  @override
  String get gameDialogTake => 'Accetta';

  @override
  String get gameDialogResignationTitle => 'Resa offerta';

  @override
  String gameDialogResignationMessage(Object resigner, Object value) {
    return '$resigner offre la resa per $value. Accettare o rifiutare?';
  }

  @override
  String get gameDialogResignSingle => 'partita singola';

  @override
  String get gameDialogResignGammon => 'gammon';

  @override
  String get gameDialogResignBackgammon => 'backgammon';

  @override
  String get gameDialogDecline => 'Rifiuta';

  @override
  String get gameDialogAccept => 'Accetta';

  @override
  String get gameDialogGameOverTitle => 'Partita terminata';

  @override
  String get gameDialogNextGame => 'Partita successiva';

  @override
  String get gameDialogMatchOverTitle => 'Match terminato';

  @override
  String get gameDialogNobody => 'Nessuno';

  @override
  String gameDialogMatchWinner(Object winner) {
    return '$winner vince il match.';
  }

  @override
  String get gameDialogSavedToHistory => 'Salvato nella cronologia';

  @override
  String get gameDialogDone => 'Fatto';

  @override
  String get gameTapNoLegalMove =>
      'Questa pedina non può muoversi con i dadi rimanenti';

  @override
  String get gameTapNoLegalMoveUndo =>
      'Questa pedina non può muoversi con i dadi rimanenti — prova ad annullare';

  @override
  String get gameDragHint =>
      'Suggerimento: trascina le pedine o toccale — modifica l’opzione in Impostazioni';

  @override
  String get commonGotIt => 'Capito';

  @override
  String get gameHintStageBeforeHint =>
      'Completa prima una mossa legale, poi chiedi un suggerimento.';

  @override
  String get surrenderTitle => 'Resa';

  @override
  String surrenderNamedConcedes(String player) {
    return '$player concede la partita in corso.';
  }

  @override
  String get surrenderConcedes => 'Concede la partita in corso.';

  @override
  String surrenderAvailableAtNamedTurn(String player) {
    return 'Disponibile all’inizio del turno di $player';
  }

  @override
  String get surrenderAvailableAtYourTurn =>
      'Disponibile all’inizio del tuo turno';

  @override
  String get commonCancel => 'Annulla';

  @override
  String get surrenderSingle => 'Singola (1)';

  @override
  String get surrenderGammon => 'Gammon (2)';

  @override
  String get surrenderBackgammon => 'Backgammon (3)';

  @override
  String get surrenderChoosePlayer => 'Chi concede questa partita?';

  @override
  String get commonDone => 'Fatto';

  @override
  String get cubeDouble => 'Raddoppia';

  @override
  String get cubeBlockedOtherPlayersTurn => 'Tocca all’altro giocatore.';

  @override
  String get cubeBlockedCrawford =>
      'Il cubo non è disponibile nella partita Crawford.';

  @override
  String get cubeBlockedOwnedByOther =>
      'Solo il proprietario del cubo può raddoppiare e al momento lo possiede l’altro lato.';

  @override
  String get cubeBlockedUnavailable => 'Il raddoppio non è disponibile ora.';

  @override
  String get gameStatusRolling => 'Lancio dei dadi…';

  @override
  String get gameStatusThinking => 'Sta pensando…';

  @override
  String gameStatusPlayersTurn(String player) {
    return 'Tocca a $player';
  }

  @override
  String get cubeAdviceOpponentTake =>
      'Raddoppia — l’avversario dovrebbe accettare';

  @override
  String get cubeAdviceOpponentPass =>
      'Raddoppia — l’avversario dovrebbe passare';

  @override
  String gameErrorBannerLabel(Object error) {
    return 'Errore: $error';
  }

  @override
  String get privacyTitle => 'Privacy e dati';

  @override
  String get privacyAppTitle => 'Backgammon Buddy di Freevia';

  @override
  String get privacyIntro =>
      'Questa pagina descrive come l\'app attuale tratta i tuoi dati.';

  @override
  String get privacyLocalTitle => 'Partite e tutor sul tuo dispositivo';

  @override
  String get privacyLocalBody =>
      'Le partite locali, le impostazioni, l\'analisi e i progressi di allenamento sono memorizzati su questo dispositivo. Il motore di backgammon e le spiegazioni del tutor funzionano qui. Elimina una partita salvata dalla Cronologia per rimuovere anche gli esercizi di allenamento e i tentativi salvati. Elimina singoli esercizi o azzera i progressi in Apprendimento; cancella i rapporti di errore locali in Impostazioni â†’ Diagnostica. Potrebbero applicarsi alla cronologia delle partite anche le impostazioni di backup del dispositivo. Le credenziali di accesso online sono conservate nell\'archivio protetto del dispositivo.';

  @override
  String get privacyOnlineTitle => 'Partite online e nelle vicinanze';

  @override
  String get privacyOnlineBody =>
      'Il gioco online invia a Google Firebase un identificatore anonimo del giocatore, le impostazioni della partita, le mosse e i record di sincronizzazione dei dadi, affinchÃ© entrambi i giocatori possano giocare la stessa partita. Eliminare la Cronologia su questo dispositivo non elimina i record online. Le partite ospitate scadono 30 giorni dopo la creazione; la pulizia pianificata rimuove i relativi log dal cloud. I record delle partite sono archiviati nell\'UE; Firebase Authentication tratta i dati di accesso negli Stati Uniti. Le connessioni online a Google sono crittografate durante il trasferimento. Il gioco nelle vicinanze scambia informazioni sulla partita con l\'altro dispositivo tramite una connessione locale non crittografata; usa una rete Wi-Fi fidata.';

  @override
  String get privacyDiagnosticsTitle =>
      'Diagnostica facoltativa di utilizzo e arresti anomali';

  @override
  String get privacyDiagnosticsBody =>
      'La condivisione resta disattivata finchÃ© non la attivi in Impostazioni. Se attivata, Google Firebase riceve eventi di utilizzo, informazioni sull\'app e sul dispositivo, misurazioni delle prestazioni e rapporti sugli arresti anomali per contribuire a migliorare l\'app. Puoi disattivare la condivisione in qualsiasi momento per interrompere la nuova raccolta facoltativa. Questo non elimina i dati giÃ  inviati. La diagnostica locale e le partite online funzionano indipendentemente da questa scelta.';

  @override
  String get privacyCameraTitle =>
      'Fotocamera per i codici QR delle partite vicine';

  @override
  String get privacyCameraBody =>
      'La fotocamera facoltativa scansiona i codici QR delle partite vicine. Le immagini vengono elaborate sul dispositivo e non vengono salvate nÃ© caricate. Puoi negare l\'accesso alla fotocamera e inserire manualmente l\'indirizzo dell\'host. Questa versione non usa il microfono nÃ© offre il gioco su una scacchiera fisica.';

  @override
  String get privacyFeedbackTitle => 'Feedback che scegli di inviare';

  @override
  String get privacyFeedbackBody =>
      'Il feedback apre una bozza di segnalazione GitHub che puoi rivedere. Aprire la bozza invia a GitHub la versione dell\'app e la piattaforma; il feedback inviato da Diagnostica puÃ² includere anche i dettagli dell\'errore. La segnalazione non viene pubblicata finchÃ© non la invii. Le segnalazioni possono essere pubbliche: rimuovi le informazioni private prima dell\'invio.';

  @override
  String get privacyContactTitle => 'Contatto per la privacy';

  @override
  String get privacyReadPolicy => 'Leggi l\'informativa sulla privacy';

  @override
  String get privacyPolicyOpenFailed =>
      'Impossibile aprire l\'informativa sulla privacy.';

  @override
  String get privacySupportTitle => 'Aiuto e supporto';

  @override
  String get privacySupportOpenFailed =>
      'Impossibile aprire il supporto. Contatta support@freevia.org.';

  @override
  String get privacyDeleteConfirmTitle => 'Eliminare identitÃ  online e dati?';

  @override
  String get privacyDeleteConfirmBody =>
      'Questa operazione interrompe immediatamente per entrambi i giocatori l\'accesso alle partite cloud di questa identitÃ  e richiede l\'eliminazione dell\'identitÃ  e dei log condivisi delle partite online entro 30 giorni. Google puÃ² impiegare fino a 180 giorni dall\'eliminazione dell\'account per rimuovere i dati di Authentication dai sistemi attivi e di backup. La Cronologia locale e l\'allenamento restano su questo dispositivo. Le diagnosi facoltative giÃ  inviate sono separate; per quelle contatta privacy@freevia.org. La richiesta non puÃ² essere annullata.';

  @override
  String get privacyRequestDeletion => 'Richiedi l\'eliminazione';

  @override
  String get privacyDeleteSectionTitle => 'Elimina i dati online';

  @override
  String get privacyDeleteInstructions =>
      'Usa l\'accesso salvato su questo dispositivo per verificare la titolaritÃ . Un identificatore giocatore o un codice d\'invito da solo non dimostra la titolaritÃ . I giocatori solo locali non hanno bisogno di un account online.';

  @override
  String get privacySendingRequest => 'Invio della richiestaâ€¦';

  @override
  String get privacyDeleteAction => 'Elimina identitÃ  online e dati';

  @override
  String get privacyDeleteRequested =>
      'Eliminazione richiesta. L\'identitÃ  online Ã¨ stata disconnessa. I suoi dati cloud saranno eliminati entro 30 giorni. Avviando di nuovo una partita online verrÃ  creata una nuova identitÃ . La rimozione dei dati di Google Authentication puÃ² richiedere fino a 180 giorni. Per assistenza, contatta privacy@freevia.org.';

  @override
  String get privacyDeleteRequestedSignOutFailed =>
      'Eliminazione richiesta. I dati cloud saranno eliminati entro 30 giorni. Il dispositivo non Ã¨ riuscito a cancellare l\'accesso salvato, ma l\'identitÃ  online Ã¨ bloccata e non puÃ² piÃ¹ accedere alle partite. La rimozione dei dati di Google Authentication puÃ² richiedere fino a 180 giorni. Per assistenza, contatta privacy@freevia.org.';

  @override
  String get privacyDeleteNoIdentity =>
      'Su questo dispositivo non Ã¨ salvata alcuna identitÃ  online utilizzabile. Non Ã¨ stato creato un nuovo account. Se hai giÃ  usato il gioco online, contatta privacy@freevia.org per assistenza; le partite ospitate scadono dopo 30 giorni.';

  @override
  String get privacyDeleteRequestFailed =>
      'Impossibile confermare la richiesta di eliminazione. Controlla la connessione e riprova, oppure contatta privacy@freevia.org.';

  @override
  String get privacyConsentTitle =>
      'Condividere dati di utilizzo e diagnostica degli arresti anomali?';

  @override
  String get privacyConsentBody =>
      'Questo invia a Google Firebase eventi di utilizzo, informazioni sull\'app e sul dispositivo, rapporti sugli arresti anomali e misurazioni delle prestazioni. La condivisione Ã¨ facoltativa. Le partite e il tutor funzionano anche senza; puoi disattivarla di nuovo in Impostazioni.';

  @override
  String get privacyKeepOff => 'Lascia disattivato';

  @override
  String get privacyShareDiagnostics => 'Condividi dati diagnostici';

  @override
  String get privacySaveFailed =>
      'Impossibile salvare la scelta sulla privacy. Riprova.';

  @override
  String get privacySettingsSubtitle =>
      'Cosa resta sul dispositivo e cosa viene condiviso';

  @override
  String get privacyDiagnosticsSettingTitle =>
      'Condividi dati di utilizzo e diagnostica degli arresti anomali';

  @override
  String get privacyDiagnosticsSettingSubtitle =>
      'Facoltativo Â· disattivato per impostazione predefinita';

  @override
  String get lanScanToJoin => 'Scansiona per unirti';

  @override
  String get lanScanHostCode => 'Scansiona il codice dell\'host';

  @override
  String get lanEnterAddressInstead => 'Inserisci invece l\'indirizzo';

  @override
  String get lanQrAccessibilityLabel => 'Codice QR per unirsi a questa partita';

  @override
  String get lanJoinInstruction =>
      'Sull’altro dispositivo, apri Gioca nelle vicinanze, scegli Unisciti e poi scansiona questo codice QR.';

  @override
  String get lanTorch => 'Torcia';

  @override
  String get lanCameraPermissionDenied =>
      'Backgammon Buddy non puÃ² usare la fotocamera. Consenti l\'accesso alla fotocamera nelle impostazioni del dispositivo oppure inserisci manualmente l\'indirizzo mostrato sull\'altro dispositivo.';

  @override
  String get lanCameraUnsupported =>
      'Questo dispositivo non puÃ² scansionare codici QR. Inserisci manualmente l\'indirizzo mostrato sull\'altro dispositivo.';

  @override
  String get lanCameraStartFailed =>
      'Impossibile avviare la fotocamera. Inserisci manualmente l\'indirizzo mostrato sull\'altro dispositivo.';

  @override
  String get lanPointCameraAtQr =>
      'Inquadra con la fotocamera il codice QR sull\'altro dispositivo.';

  @override
  String get physicalBuddyUnavailableTitle => 'Backgammon Buddy';

  @override
  String get physicalBuddyUnavailableBody =>
      'Il gioco su una tavola fisica non Ã¨ disponibile in questa versione. Le partite sullo schermo, il tutor e gli allenamenti sono disponibili dalla schermata Home.';

  @override
  String get homePlayWithBuddy => 'Gioca con Buddy';

  @override
  String get homeBuddyShort => 'Buddy';

  @override
  String boardSemanticsLabel(Object status) {
    return 'Tavola di backgammon. $status';
  }

  @override
  String get boardWhiteToRoll => 'Tocca al Bianco lanciare i dadi.';

  @override
  String get boardBlackToRoll => 'Tocca al Nero lanciare i dadi.';

  @override
  String boardWhiteToMove(Object die1, Object die2) {
    return 'Tocca al Bianco: lancia $die1 e $die2.';
  }

  @override
  String boardBlackToMove(Object die1, Object die2) {
    return 'Tocca al Nero: lancia $die1 e $die2.';
  }

  @override
  String get boardDoubleOffered => 'Ãˆ stato proposto il raddoppio.';

  @override
  String get boardResignationOffered => 'Ãˆ stata proposta la resa.';

  @override
  String get boardGameOver => 'La partita Ã¨ terminata.';

  @override
  String feedbackBugTitle(Object version, Object platform) {
    return '[Bug]: Backgammon Buddy $version ($platform)';
  }

  @override
  String get feedbackIdeaTitle => '[Idea]: Backgammon Buddy';

  @override
  String get feedbackBugSummary =>
      'Sostituisci questo testo con una breve descrizione di cosa Ã¨ successo.';

  @override
  String get feedbackBugReproduction =>
      'Sostituisci questo testo con i passaggi che hanno causato il problema.';

  @override
  String get feedbackBugExpected =>
      'Sostituisci questo testo con ciÃ² che ti aspettavi accadesse.';

  @override
  String get feedbackIdeaNeed =>
      'Sostituisci questo testo con ciÃ² che volevi fare o imparare.';

  @override
  String get feedbackIdeaSuggestion =>
      'Sostituisci questo testo con la modifica che ti sarebbe utile.';

  @override
  String get feedbackExcerptTruncated =>
      '(estratto abbreviato â€” usa Copia negli appunti nella schermata Diagnostica per il registro completo)';

  @override
  String get boardWhiteToMoveNoRoll => 'Tocca al Bianco muovere.';

  @override
  String get boardBlackToMoveNoRoll => 'Tocca al Nero muovere.';

  @override
  String get feedbackFieldVersion => 'Versione';

  @override
  String get feedbackFieldPlatform => 'Piattaforma';

  @override
  String get feedbackFieldSummary => 'Riepilogo';

  @override
  String get feedbackFieldReproduction => 'Passaggi per riprodurre il problema';

  @override
  String get feedbackFieldExpected => 'Risultato atteso';

  @override
  String get feedbackFieldNeed => 'Cosa volevi fare o imparare';

  @override
  String get feedbackFieldIdea => 'Idea suggerita';

  @override
  String get buddySetupTitle => 'Gioca con Buddy';

  @override
  String get buddySetupSideLabel => 'Colore di Buddy';

  @override
  String get buddySetupSeatLabel => 'Il tuo posto';

  @override
  String get buddySetupSeatNear => 'Al telefono';

  @override
  String get buddySetupSeatFar => 'Opposto';

  @override
  String get buddySetupSeatHelp =>
      'Da che parte del tabellone ti trovi. È il modo in cui Buddy numera i punti e il modo in cui distingue il dado di apertura dal proprio.';

  @override
  String get buddySetupVoiceLabel => 'Come parla Buddy';

  @override
  String get buddySetupVoiceTerse => 'Conciso';

  @override
  String get buddySetupVoiceFriendly => 'Amichevole';

  @override
  String get buddySetupVoiceTerseHelp =>
      '\"13/8, 24/22\" - notazione, il modo in cui parlano effettivamente due giocatori su un tabellone.';

  @override
  String get buddySetupVoiceFriendlyHelp =>
      '\"Muovi una pedina da 13 a 8 e una da 24 a 22.\"';

  @override
  String get buddySetupTutorHelp =>
      'I commenti del Tutor e le spiegazioni sulle mosse seguono le tue preferenze Tutor salvate in Impostazioni. Buddy fornisce feedback occasionali dopo le tue giocate; i dadi digitati e le mosse manuali funzionano allo stesso modo.';

  @override
  String get buddySetupCalibrate => 'Calibrare la scheda';

  @override
  String get buddyFixAim => 'Fissare l\'obiettivo';

  @override
  String get buddyWaitingForOpening =>
      'Buddy aspetta il tiro che dà inizio alla partita.';

  @override
  String get buddyPromptLostBoard =>
      'Buddy ha perso il tabellone. Fissa l\'obiettivo e la partita riprenderà da dove si era fermata.';

  @override
  String get buddyPromptWaitingPicture =>
      'In attesa di una foto che Buddy possa leggere. Niente è perduto.';

  @override
  String get buddyPromptTypeDice =>
      'Buddy non riesce a trovare i dadi. Digitare invece il rotolo.';

  @override
  String get buddyPromptPlay =>
      'Fai la tua giocata sul tabellone. Toccalo qui se Buddy non lo vede.';

  @override
  String get buddyPromptWhichPlay => 'Quale mossa hai giocato?';

  @override
  String get buddyPromptCube =>
      'Buddy propone il raddoppio. Accetti o rifiuti?';

  @override
  String get buddyPromptMakeMove =>
      'Esegui la mossa di Buddy sul tabellone, poi Buddy proseguirà.';

  @override
  String get buddyPromptThinking => 'Buddy sta pensando.';

  @override
  String get buddyPromptWaitingCalibration => 'In attesa di una calibrazione.';

  @override
  String get buddyPromptMirrorNoDetail =>
      'Buddy non riesce ancora a vedere la sua mossa. Il tabellone sottostante è la posizione che sta mantenendo.';

  @override
  String get buddyPromptNotLegal => 'Questa mossa non è legale.';

  @override
  String buddyPromptNotLegalReason(String reason) {
    return 'Questa mossa non è legale. $reason';
  }

  @override
  String get buddyThrowOpening => 'Lancia i dadi iniziali: un dado ciascuno.';

  @override
  String get buddyThrowUser => 'Lancia i tuoi dadi.';

  @override
  String get buddyThrowBuddy => 'Lancia i dadi di Buddy.';

  @override
  String get buddyMatchOver => 'La partita è finita.';

  @override
  String get buddyYouWin => 'Hai vinto la partita.';

  @override
  String get buddyBuddyWins => 'Buddy vince la partita.';

  @override
  String get buddyDoubleNoGame =>
      'Non c\'è ancora un gioco in cui raddoppiare: il tiro di apertura viene prima.';

  @override
  String get buddyDoubleBeforeRoll =>
      'Puoi solo raddoppiare prima di tirare, nel tuo turno.';

  @override
  String get buddyDoubleCrawford =>
      'Nessun raddoppio nel gioco Crawford: questo singolo gioco decide la partita.';

  @override
  String get buddyDoubleNotOwner =>
      'Solo il proprietario del cubo può raddoppiare e l\'altra parte lo possiede in questo momento.';

  @override
  String get buddyDoubleUnavailable =>
      'Il raddoppio non è disponibile al momento.';

  @override
  String get buddyLookingAtBoard => 'Buddy sta guardando il tabellone.';

  @override
  String get buddyCameraPlayFallback =>
      'Puoi ancora giocare la partita: digita ogni lancio sul dado e tocca le tue giocate sul tabellone sottostante.';

  @override
  String get buddySkipCheck => 'Salta questo controllo';

  @override
  String get buddyFixedIt => 'Ho risolto il problema';

  @override
  String get buddyDrop => 'Rifiuta';

  @override
  String get buddyTake => 'Accetta';

  @override
  String get buddyDone => 'Fatto';

  @override
  String get buddyTranscriptLabel => 'Cosa ha detto Buddy';

  @override
  String get buddyUndo => 'Disfare';

  @override
  String get buddyConfirm => 'Confermare';

  @override
  String get buddyDice => 'Dadi';

  @override
  String get buddyDouble => 'Raddoppio';

  @override
  String get buddyDicePadTitle => 'Che cosa hai tirato?';

  @override
  String get buddyEnterRoll => 'Inserisci il lancio';

  @override
  String get buddyContextBeforeGame => 'Gioca con Buddy';

  @override
  String buddyContextMatchScore(
    String you,
    String buddy,
    String length,
    String number,
  ) {
    return 'Tu $you–$buddy Buddy · a $length · Gioco $number';
  }

  @override
  String get buddyCameraUnavailable =>
      'Non è stato possibile avviare la fotocamera. Controlla le autorizzazioni e riprova.';

  @override
  String get buddyCameraPermission =>
      'Backgammon Buddy non dispone dell\'autorizzazione per utilizzare la fotocamera. Consenti l\'accesso alla fotocamera nelle impostazioni del tuo dispositivo e riprova.';

  @override
  String get buddyCalibrationTitle => 'Mostra Buddy sul tabellone';

  @override
  String get buddyCalibrationCornersFold =>
      'Trascina le quattro maniglie esterne sugli angoli del feltro (non sul bordo di legno) e le quattro piccole sulle cuciture dove la cerniera incontra i bordi vicini e lontani.';

  @override
  String get buddyCalibrationCornersFlat =>
      'Trascina ciascuna maniglia su un angolo del feltro: la superficie di gioco, non il bordo di legno attorno ad essa.';

  @override
  String get buddyCalibrationCheckLines =>
      'Quindi controlla le dodici linee lungo ciascuna metà: ognuna dovrebbe correre lungo un punto della tua tavola. Una linea che non raggiunge il suo scopo è una maniglia che ha bisogno di essere spinta.';

  @override
  String get buddyCalibrationSeatQuestion =>
      'Quale metà è la tua tavola interna?';

  @override
  String get buddyCalibrationSeatHelp =>
      'La metà più vicina alla parte inferiore dell\'immagine. Questo è ciò che fissa i numeri dei punti, quindi le linee sopra si muovono con esso.';

  @override
  String get buddyCalibrationCaptureWait =>
      'Tieni fermo il telefono. Buddy sta aspettando che l\'immagine si stabilizzi prima di apprendere questa scheda.';

  @override
  String get buddyCalibrationConfirmQuestion => 'Questa è la tua tavola?';

  @override
  String get buddyCalibrationConfirmFallback =>
      'Buddy sta guardando il tabellone che ha appena imparato.';

  @override
  String get buddyCalibrationConfirmHelp =>
      'Gli uomini disegnati sull\'immagine sono ciò che Buddy pensa sia sul tabellone. Se qualcuno di loro è nel posto sbagliato, ricomincia da capo: costa pochi secondi adesso e una partita dopo.';

  @override
  String get buddyCalibrationNext => 'Prossimo';

  @override
  String get buddyCalibrationBack => 'Indietro';

  @override
  String get buddyCalibrationCapture => 'Catturare';

  @override
  String get buddyCalibrationStartOver => 'Ricominciare';

  @override
  String get buddyCalibrationLooksRight => 'Sembra giusto';

  @override
  String get buddyCalibrationCornersInvalid =>
      'Queste quattro maniglie non delineano una tavola: una di esse ne ha incrociata un\'altra. Trascinali nuovamente negli angoli del feltro.';

  @override
  String get buddyCalibrationPrepTitle => 'Prima tre cose';

  @override
  String get buddyCalibrationRemoveDiceTitle => 'Togli i dadi dal tabellone.';

  @override
  String get buddyCalibrationRemoveDiceBody =>
      'Buddy ora apprende la scheda nuda. Un dado lasciato sul tavolo viene appreso come parte di esso, e quindi Buddy non potrà mai più vedere i dadi in questa sessione.';

  @override
  String get buddyCalibrationSetupCheckersTitle =>
      'Disponi le pedine nella posizione iniziale.';

  @override
  String get buddyCalibrationSetupCheckersBody =>
      'Le trenta pedine nelle posizioni iniziali aiutano Buddy a riconoscere i due colori del tabellone.';

  @override
  String get buddyCalibrationFitBoardTitle =>
      'Adatta l\'intero campo di gioco nella foto.';

  @override
  String get buddyCalibrationFitBoardBody =>
      'Quindi lascia il telefono dov\'è. Se si muove, Buddy lo dirà e potrai spostare indietro gli angoli.';

  @override
  String get buddyCalibrationBoardKind => 'Che tipo di tavola è?';

  @override
  String get buddyCalibrationFlatBoard => 'Tavola piatta';

  @override
  String get buddyCalibrationFoldingBoard => 'Custodia pieghevole';

  @override
  String get buddyCalibrationBoardKindHelp =>
      'Un asse pieghevole necessita di quattro maniglie extra sulle cuciture delle cerniere.';

  @override
  String get buddyCalibrationNoCameraBody =>
      'La modalità Buddy osserva una scheda reale, quindi non può essere avviata senza la fotocamera. Tutto il resto nell\'app non viene influenzato.';

  @override
  String buddyHandleHingeSeam(int number) {
    return 'Cucitura cerniera $number di 4';
  }

  @override
  String buddyHandleCorner(int number) {
    return 'Angolo tavola $number di 4';
  }

  @override
  String get buddyNudgeLeft => 'Spingi a sinistra';

  @override
  String get buddyNudgeRight => 'Spingi a destra';

  @override
  String get buddyNudgeUp => 'Spingi verso l\'alto';

  @override
  String get buddyNudgeDown => 'Spingi verso il basso';

  @override
  String get buddyCalibrationProblemCorners =>
      'Quei quattro angoli non delineano una tavola. Trascina ciascuna maniglia su un angolo del campo di gioco e riprova.';

  @override
  String get buddyCalibrationProblemFoldCorners =>
      'Questi otto punti non delineano una tavola pieghevole. Metti quattro sugli angoli del campo di gioco e quattro sulle cuciture dei cardini, quindi riprova.';

  @override
  String get buddyCalibrationProblemUnreadable =>
      'Non riesco a distinguere il tabellone in sé: ogni sua parte è coperta o persa nell\'ombra o nella luce vivida. Svuota il tabellone, aggiungi un po\' di luce e riprova.';

  @override
  String buddyCalibrationProblemRegionUnreadable(String region) {
    return 'Non riesco a distinguere $region: potrebbe esserci qualcosa sopra o quell\'angolo del tabellone potrebbe essere troppo buio per leggere. Cancellalo o aggiungi un po\' di luce e riprova.';
  }

  @override
  String get buddyCalibrationProblemColours =>
      'Le due pedine sembrano troppo simili da qui. Più luce o un angolo con meno abbagliamento sulla tavola di solito risolvono il problema.';

  @override
  String buddyCalibrationProblemWrongChecker(int number) {
    return 'Le pedine non sono nella posizione iniziale: sul punto $number c’è una pedina del colore sbagliato. Ripristina la posizione iniziale e calibra di nuovo.';
  }

  @override
  String get buddyCalibrationProblemOverexposed =>
      'C\'è così tanta luce sul tabellone che i suoi colori si confondono l\'uno con l\'altro. Abbassa la luce o sposta il telefono in modo che la lampada non sia puntata direttamente verso di esso.';

  @override
  String get buddyCalibrationProblemReadBack =>
      'Posso leggere questo tabellone, ma non come un gioco che sta per iniziare. Prepara gli uomini per l\'inizio di una partita, quindi calibrali di nuovo.';

  @override
  String get buddyCalibrationProblemStacks =>
      'Riesco a leggere il tabellone, ma da qui non distinguo con sicurezza quante pedine sono impilate, quindi potrei sbagliare il conteggio. Di solito aiuta più luce sui punti vicini o una visuale della fotocamera leggermente più alta.';

  @override
  String get buddyCalibrationProblemNotVisible =>
      'Non riesco a vedere l\'intera scheda. Sposta indietro il telefono o trascina gli angoli sul campo di gioco.';

  @override
  String buddyConfirmBoardOutOfFrame(String region) {
    return 'Non riesco più a vedere l\'intero tabellone: ​​$region è fuori dall\'immagine. Allinea nuovamente la fotocamera o ricontrolla gli angoli.';
  }

  @override
  String get buddyConfirmStartingPosition => 'Sembra la posizione di partenza.';

  @override
  String get buddyConfirmNoCheckers =>
      'Non vedo pedine nei punti della posizione iniziale. Disponile nella posizione iniziale e riprova.';

  @override
  String buddyConfirmWrongPosition(String details, String more) {
    return 'Il tabellone non è predisposto per l\'inizio di una partita: $details$more.';
  }

  @override
  String buddyConfirmRegionEmpty(String region, String side) {
    return '$region sembra vuoto, ma il gioco inizia con $side lì';
  }

  @override
  String buddyConfirmRegionUnexpected(String region, String side) {
    return '$region contiene $side, ma il gioco inizia con il campo vuoto';
  }

  @override
  String buddyConfirmRegionWrongSide(
    String region,
    String observed,
    String expected,
  ) {
    return '$region contiene $observed, dove il gioco inizia con $expected';
  }

  @override
  String get buddyReadabilityMotion =>
      'Resta fermo un attimo: perdo la scheda mentre il telefono si muove.';

  @override
  String get buddyReadabilityWrongFrame =>
      'L\'immagine che mi viene fornita non è quella su cui è stata installata questa scheda, quindi non posso allineare nulla al suo interno. Configura nuovamente la scheda da qui.';

  @override
  String get buddyReadabilityBlur =>
      'L\'immagine è troppo morbida per poter leggere la lavagna. Concedi alla fotocamera un momento per mettere a fuoco.';

  @override
  String get buddyReadabilityCalibrationStale =>
      'La scheda non è più dov\'era quando l\'ho imparato. Allinea di nuovo gli angoli e riprenderò il gioco da capo.';

  @override
  String get buddyReadabilityOccluded =>
      'Qualcosa copre parte del tabellone. Continuerò non appena sarà chiaro.';

  @override
  String get buddyReadabilityClear => 'Posso vedere il tabellone.';

  @override
  String get buddyReadabilityColorChanged =>
      'La luce sulla lavagna ha cambiato colore, quindi la lavagna non assomiglia più a quella che ho imparato. Allinea di nuovo gli angoli sotto questa luce e riprenderò il gioco subito.';

  @override
  String get buddyReadabilityTooDark =>
      'È troppo buio per leggere il tabellone. Ancora un po\' di luce e continuerò dove eravamo prima.';

  @override
  String get buddyReadabilityTooBright =>
      'C\'è così tanta luce sul tabellone che i suoi colori si sovrappongono. Abbassalo o sposta il telefono in modo che la lampada non risplenda direttamente verso di esso.';

  @override
  String buddyPromptBeliefMirror(String reason) {
    return 'Buddy non riesce ancora a vedere la sua mossa: $reason.';
  }

  @override
  String buddyCameraUnavailablePlay(String cameraMessage) {
    return '$cameraMessage\n\nPuoi ancora giocare la partita: digita ogni lancio sul dado e tocca le tue giocate sul tabellone sottostante.';
  }

  @override
  String get buddyCameraGenericError =>
      'Non è stato possibile avviare la fotocamera. Controlla le autorizzazioni e riprova.';

  @override
  String buddyRegionPoint(int number) {
    return 'il punto $number';
  }

  @override
  String get buddyRegionBar => 'il bar';

  @override
  String get buddyRegionWhiteTray => 'vaschetta di raccolta del Bianco';

  @override
  String get buddyRegionBlackTray => 'vaschetta di raccolta del Nero';

  @override
  String get buddyRegionDiceZone => 'il centro del tabellone';

  @override
  String get buddyCalibrationProblemVisible =>
      'Non riesco a vedere l\'intera scheda. Sposta indietro il telefono o trascina gli angoli sul campo di gioco.';

  @override
  String buddyConfirmMore(int number) {
    return '(e $number altro)';
  }

  @override
  String get buddyDiceOpeningCaption =>
      'Ogni giocatore tira un dado. Il risultato più alto decide chi inizia.';

  @override
  String get buddyDiceOpeningFirst => 'dado bianco';

  @override
  String get buddyDiceOpeningSecond => 'dado nero';

  @override
  String get buddyDiceRegularCaption =>
      'Le due facce sul tavolo, in qualsiasi ordine.';

  @override
  String get buddyDiceRegularFirst => 'Uno muore';

  @override
  String get buddyDiceRegularSecond => 'L\'altro';

  @override
  String get evaluationEngine => 'Motore di valutazione';

  @override
  String get parallelEngineAnalysis => 'Analizza con entrambi i motori';

  @override
  String get parallelEngineExplanation =>
      'Confronta i consigli separati di wildbg e GNUbg nel tutor.';

  @override
  String get engineComparison => 'Confronto dei motori';

  @override
  String get engineWinChance => 'Probabilità di vittoria';

  @override
  String get buddyBar => 'il bar';

  @override
  String get buddyOff => 'spento';

  @override
  String get buddyHitSuffix => ', colpendo';

  @override
  String buddyFriendlyMoveOne(String from, String to, String hit) {
    return 'Sposta una pedina da $from a $to $hit';
  }

  @override
  String buddyFriendlyMoveMany(
    String count,
    String from,
    String to,
    String hit,
  ) {
    return 'Sposta $count pedine da $from a $to $hit';
  }

  @override
  String buddyFriendlyBearOffOne(String from, String hit) {
    return 'Porta una pedina fuori da $from $hit';
  }

  @override
  String buddyFriendlyBearOffMany(String count, String from, String hit) {
    return 'Porta $count pedine da $from $hit';
  }

  @override
  String buddySpeechIRolled(String dice) {
    return 'Ho tirato $dice.';
  }

  @override
  String buddySpeechYouRolled(String dice) {
    return 'Hai tirato $dice.';
  }

  @override
  String buddySpeechOpeningTie(String die) {
    return 'Entrambi hanno tirato $die. Rotolare di nuovo.';
  }

  @override
  String get buddySpeechNoPlayYouTurn => 'Non si gioca, quindi è il tuo turno.';

  @override
  String get buddySpeechNoPlayBuddyTurn =>
      'Non c\'è gioco, quindi è il turno di Buddy.';

  @override
  String get buddySpeechNoPlayPass => 'Nessun gioco: il tuo turno passa.';

  @override
  String get buddySpeechNoPlayBack => 'Nessun gioco, quindi torna a te.';

  @override
  String get buddySpeechIllegalPlay => 'Non è un gioco legale.';

  @override
  String buddySpeechPlacementMismatch(String reason) {
    return 'Non è del tutto corretto. $reason';
  }

  @override
  String buddyBoardMismatch(String details, String more) {
    return 'Il tabellone è diverso dal gioco: $details$more.';
  }

  @override
  String buddyConfirmRegionWrongCount(
    String region,
    String expected,
    String side,
    String observed,
  ) {
    return '$region: il gioco prevede $expected $side pedine; la telecamera vede $observed.';
  }

  @override
  String get buddySpeechSkippedCheck =>
      'Ti crederò sulla parola. Non riuscivo a vedere quella terra, quindi se ci siamo separati si presenterà come un\'opera teatrale che non riesco a leggere.';

  @override
  String get buddySpeechBuddyDouble => 'Raddoppio: prendere o rilasciare?';

  @override
  String get buddySpeechYouDouble => 'Raddoppi.';

  @override
  String get buddySpeechBuddyTakes => 'Prendo.';

  @override
  String get buddySpeechYouTake => 'Prendi.';

  @override
  String get buddySpeechBuddyDrops => 'Lascio cadere.';

  @override
  String get buddySpeechYouDrop => 'Cadi.';

  @override
  String buddySpeechGameWinnerBuddy(String points) {
    return 'Vinco questa partita: $points.';
  }

  @override
  String buddySpeechGameWinnerYou(String points) {
    return 'Hai vinto questa partita: $points.';
  }

  @override
  String get buddySpeechMatchWinnerBuddy => 'Questa è la partita per me.';

  @override
  String get buddySpeechMatchWinnerYou => 'Hai vinto la partita.';

  @override
  String get buddyTutorLastPlayBest =>
      'La tua ultima giocata corrispondeva al meglio del motore.';

  @override
  String get buddyTutorLastPlayClose =>
      'La tua ultima giocata è stata vicina alla migliore del motore.';

  @override
  String buddyTutorPreferredMove(String move, String reason) {
    return 'Per la tua ultima riproduzione, il motore ha preferito $move. $reason';
  }

  @override
  String buddyTutorBarDifference(String best, String played) {
    return 'Lascia $best pedine avversarie sul bar invece di $played.';
  }

  @override
  String buddyTutorBlotDifference(String best, String played) {
    return 'Lascia $best macchie invece di $played.';
  }

  @override
  String buddyTutorHomeDifference(String best, String played) {
    return 'Ha $best punti sul tabellone interno invece di $played.';
  }

  @override
  String buddyTutorOffDifference(String best, String played) {
    return 'Ha $best pedine spente invece di $played.';
  }

  @override
  String get buddyTutorGeneralDifference =>
      'Nella classifica pesano vincite e gammon stimati; nessuna caratteristica della scheda singola lo spiega.';

  @override
  String buddySpeechPlay(String move) {
    return 'Gioca a $move';
  }

  @override
  String buddySpeechBuddyRolledMove(String dice, String move) {
    return 'Ho tirato $dice — $move';
  }
}
