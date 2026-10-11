// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get homeTagline => 'Îmbunătățește-ți jocul cu un antrenor';

  @override
  String get settings => 'Setări';

  @override
  String get playVsComputer => 'Joacă împotriva calculatorului';

  @override
  String get twoPlayers => 'Doi jucători';

  @override
  String get playNearby => 'Joacă în apropiere';

  @override
  String get playOnline => 'Joacă online';

  @override
  String get learningPractice => 'Învață și exersează';

  @override
  String get gamesArchive => 'Arhiva jocurilor';

  @override
  String get followSystem => 'Limba dispozitivului';

  @override
  String get white => 'Albe';

  @override
  String get black => 'Negre';

  @override
  String get random => 'Aleatoriu';

  @override
  String get startMatch => 'Începe jocul';

  @override
  String get tutor => 'Antrenor';

  @override
  String get noMovesPass => 'Nu există mutări — pasează';

  @override
  String get undo => 'Anulează';

  @override
  String get confirm => 'Confirmă';

  @override
  String get roll => 'Aruncă';

  @override
  String get hint => 'Indiciu';

  @override
  String get tutoringStyle => 'Stilul de instruire';

  @override
  String get tutorStyleCoach => 'Antrenor';

  @override
  String get tutorStyleHintsOnly => 'Doar indicii';

  @override
  String get tutorStyleTryFirst => 'Încearcă mai întâi';

  @override
  String get tutorCoachDescription =>
      'Indicații despre poziție, feedback pentru mutări, sugestii și sfaturi despre cub.';

  @override
  String get tutorHintsDescription =>
      'Mutări clasificate, la cerere. Indicațiile despre poziție și feedbackul automat după mutare rămân dezactivate.';

  @override
  String get tutorTryFirstDescription =>
      'Încearcă mutarea înainte să vezi mutările clasificate sau evaluarea; îndrumarea pe tablă rămâne activă.';

  @override
  String get tutorCustomDescription =>
      'Combinație personalizată. Ajustează oricare dintre opțiunile de mai jos.';

  @override
  String get tutorBestMoveHints => 'Sugestii pentru cea mai bună mutare';

  @override
  String get tutorRevealRankedPlays =>
      'Afișează mutările clasificate în timp ce alegi';

  @override
  String get tutorMoveExplanations => 'Explicații pentru mutări';

  @override
  String get tutorCompareEstimates =>
      'Compară estimările și schimbările de pe tablă';

  @override
  String get tutorGameCommentary => 'Comentarii despre joc';

  @override
  String get tutorPositionPrompts =>
      'Indicații despre poziție și feedback după fiecare mutare';

  @override
  String get tutorCubeAdvice => 'Sfaturi despre cub';

  @override
  String get tutorMatchAwareCubeAdvice =>
      'Sugestii de dublare, acceptare și renunțare în funcție de scorul meciului';

  @override
  String get tutorTryMoveFirst => 'Încearcă mai întâi o mutare';

  @override
  String get tutorStageBeforeHints =>
      'Încearcă mutarea înainte să afișezi sugestiile sau evaluarea';

  @override
  String get tutorStaticEstimateNote =>
      'Estimare statică rapidă (0-ply, fără simulări); notele descriu schimbările de pe tablă și răspunsurile posibile, nu garantează ce se va întâmpla.';

  @override
  String get tutorWhatToWatchNext => 'La ce să fii atent în continuare';

  @override
  String get tutorMoreBoardDetails => 'Mai multe detalii despre tablă';

  @override
  String get tutorEstimatesAndHowTheyWork => 'Estimări și cum funcționează';

  @override
  String get tutorEstimateLimitations =>
      'Profunzime: evaluare statică realizată de rețeaua neuronală după fiecare mutare legală (0-ply), fără simulări sau căutarea răspunsurilor viitoare. MWC ține cont de scor: ponderază aceste estimări ale rezultatelor în funcție de scorul meciului și de cubul actual; nu modelează acțiunile viitoare cu cubul. Echitatea fără cub reprezintă punctele așteptate la cubul 1 când scorul nu este disponibil. Observațiile despre tablă descriu mutarea, nu raționamentul intern al motorului neuronal. Apropierea estimărilor nu garantează certitudine; nu există un interval de încredere calibrat.';

  @override
  String get tutorPointNumberNote =>
      'În notele de instruire, punctele se numără din perspectiva tablei de casă a jucătorului care mută.';

  @override
  String get tutorHittingRollNote =>
      'Numărul aruncărilor care permit lovirea include toate cele 36 de rezultate ordonate ale zarurilor și loviturile directe sau indirecte legale; sunt oportunități, nu o predicție a alegerii adversarului.';

  @override
  String get tutorNoEvaluatedAlternatives =>
      'Nu există alternative evaluate pentru această mutare.';

  @override
  String get tutorForcedPassNoDecision =>
      'La un pas forțat nu există o decizie de mutare a pieselor.';
}
