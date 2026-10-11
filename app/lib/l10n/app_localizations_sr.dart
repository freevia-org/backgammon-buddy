// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Serbian (`sr`).
class AppLocalizationsSr extends AppLocalizations {
  AppLocalizationsSr([String locale = 'sr']) : super(locale);

  @override
  String get homeTagline => 'Unapredite igru uz trenera';

  @override
  String get settings => 'Podešavanja';

  @override
  String get playVsComputer => 'Igraj protiv računara';

  @override
  String get twoPlayers => 'Dva igrača';

  @override
  String get playNearby => 'Igraj u blizini';

  @override
  String get playOnline => 'Igraj onlajn';

  @override
  String get learningPractice => 'Učenje i vežbanje';

  @override
  String get gamesArchive => 'Arhiva partija';

  @override
  String get followSystem => 'Jezik uređaja';

  @override
  String get white => 'Beli';

  @override
  String get black => 'Crni';

  @override
  String get random => 'Nasumično';

  @override
  String get startMatch => 'Započni partiju';

  @override
  String get tutor => 'Trener';

  @override
  String get noMovesPass => 'Nema poteza — preskoči';

  @override
  String get undo => 'Poništi';

  @override
  String get confirm => 'Potvrdi';

  @override
  String get roll => 'Baci';

  @override
  String get hint => 'Savet';

  @override
  String get tutoringStyle => 'Stil podučavanja';

  @override
  String get tutorStyleCoach => 'Trener';

  @override
  String get tutorStyleHintsOnly => 'Samo saveti';

  @override
  String get tutorStyleTryFirst => 'Prvo pokušaj';

  @override
  String get tutorCoachDescription =>
      'Nagoveštaji o poziciji, povratne informacije o potezima, saveti i preporuke za kocku.';

  @override
  String get tutorHintsDescription =>
      'Rangirani potezi na zahtev. Nagoveštaji o poziciji i automatske povratne informacije posle svakog poteza ostaju isključeni.';

  @override
  String get tutorTryFirstDescription =>
      'Pripremi svoj potez pre nego što vidiš rangirane opcije ili ocenu; vođenje po tabli ostaje uključeno.';

  @override
  String get tutorCustomDescription =>
      'Prilagođena kombinacija. Podesi bilo koju od opcija ispod.';

  @override
  String get tutorBestMoveHints => 'Saveti za najbolji potez';

  @override
  String get tutorRevealRankedPlays => 'Prikaži rangirane poteze dok odlučuješ';

  @override
  String get tutorMoveExplanations => 'Objašnjenja poteza';

  @override
  String get tutorCompareEstimates => 'Uporedi procene i promene na tabli';

  @override
  String get tutorGameCommentary => 'Komentari o partiji';

  @override
  String get tutorPositionPrompts =>
      'Nagoveštaji o poziciji i povratne informacije posle svakog poteza';

  @override
  String get tutorCubeAdvice => 'Saveti za kocku';

  @override
  String get tutorMatchAwareCubeAdvice =>
      'Predlozi za dupliranje, prihvatanje ili predaju u skladu sa rezultatom meča';

  @override
  String get tutorTryMoveFirst => 'Prvo pokušaj potez';

  @override
  String get tutorStageBeforeHints =>
      'Pripremi potez pre prikazivanja saveta ili ocene';

  @override
  String get tutorStaticEstimateNote =>
      'Brza statička procena (0-ply, bez simulacija); beleške opisuju promene na tabli i moguće odgovore, a ne garantuju šta će se sledeće dogoditi.';

  @override
  String get tutorWhatToWatchNext => 'Na šta da obratiš pažnju dalje';

  @override
  String get tutorMoreBoardDetails => 'Više detalja o tabli';

  @override
  String get tutorEstimatesAndHowTheyWork => 'Procene i kako funkcionišu';

  @override
  String get tutorEstimateLimitations =>
      'Dubina: statička neuronska procena posle svakog dozvoljenog poteza (0-ply), bez simulacija ili pretrage budućih odgovora. MWC uzima u obzir rezultat i ponderiše procene ishoda prema rezultatu meča i trenutnoj kocki; ne modeluje buduće odluke o kocki. Equity bez kocke predstavlja očekivane poene uz kocku vrednosti 1 kada rezultat nije dostupan. Zapažanja o tabli opisuju potez, a ne unutrašnje rezonovanje neuronskog mehanizma. Slične procene ne znače sigurnost; kalibrisan interval pouzdanosti nije dostupan.';

  @override
  String get tutorPointNumberNote =>
      'Brojevi polja u nastavnim beleškama računaju se od matične table igrača koji je na potezu.';

  @override
  String get tutorHittingRollNote =>
      'Broj bacanja koja omogućavaju udarac obuhvata svih 36 uređenih ishoda kockica i dozvoljene direktne ili indirektne udarce; to su prilike, a ne predviđanje protivnikovog izbora.';

  @override
  String get tutorNoEvaluatedAlternatives =>
      'Za ovaj potez nema procenjenih alternativa.';

  @override
  String get tutorForcedPassNoDecision =>
      'Prinudno preskakanje ne uključuje odluku o pomeranju figura.';
}
