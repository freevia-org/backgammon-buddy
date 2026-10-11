// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get homeTagline => 'Poboljšajte igru uz trenera';

  @override
  String get settings => 'Postavke';

  @override
  String get playVsComputer => 'Igraj protiv računala';

  @override
  String get twoPlayers => 'Dva igrača';

  @override
  String get playNearby => 'Igraj u blizini';

  @override
  String get playOnline => 'Igraj na mreži';

  @override
  String get learningPractice => 'Učenje i vježba';

  @override
  String get gamesArchive => 'Arhiva igara';

  @override
  String get followSystem => 'Jezik uređaja';

  @override
  String get white => 'Bijeli';

  @override
  String get black => 'Crni';

  @override
  String get random => 'Nasumično';

  @override
  String get startMatch => 'Započni igru';

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
  String get hint => 'Savjet';

  @override
  String get tutoringStyle => 'Stil podučavanja';

  @override
  String get tutorStyleCoach => 'Trener';

  @override
  String get tutorStyleHintsOnly => 'Samo savjeti';

  @override
  String get tutorStyleTryFirst => 'Prvo pokušaj';

  @override
  String get tutorCoachDescription =>
      'Upute o poziciji, povratne informacije o potezima, savjeti i preporuke za kocku za udvostručavanje.';

  @override
  String get tutorHintsDescription =>
      'Rangirani potezi prikazuju se na zahtjev. Upute o poziciji uživo i automatske povratne informacije o potezima su isključene.';

  @override
  String get tutorTryFirstDescription =>
      'Odigrajte svoj potez prije prikaza rangiranih savjeta ili ocjene; upute o poziciji ostaju uključene.';

  @override
  String get tutorCustomDescription =>
      'Prilagođena kombinacija. Promijenite bilo koju od opcija u nastavku.';

  @override
  String get tutorBestMoveHints => 'Savjeti za najbolji potez';

  @override
  String get tutorRevealRankedPlays =>
      'Prikaži rangirane poteze dok odlučujete';

  @override
  String get tutorMoveExplanations => 'Objašnjenja poteza';

  @override
  String get tutorCompareEstimates => 'Usporedite procjene i promjene na ploči';

  @override
  String get tutorGameCommentary => 'Komentar igre';

  @override
  String get tutorPositionPrompts =>
      'Upute o poziciji i povratne informacije nakon svakog poteza';

  @override
  String get tutorCubeAdvice => 'Savjeti za kocku';

  @override
  String get tutorMatchAwareCubeAdvice =>
      'Preporuke za udvostručavanje, prihvaćanje i odbijanje prema rezultatu meča';

  @override
  String get tutorTryMoveFirst => 'Prvo isprobaj potez';

  @override
  String get tutorStageBeforeHints =>
      'Odigrajte trenutačni potez prije prikaza savjeta ili njegove ocjene';

  @override
  String get tutorStaticEstimateNote =>
      'Brza statička procjena (0 poteza unaprijed, bez simulacija); bilješke opisuju promjene na ploči i moguće odgovore, a ne jamče što će se sljedeće dogoditi.';

  @override
  String get tutorWhatToWatchNext => 'Na što obratiti pozornost';

  @override
  String get tutorMoreBoardDetails => 'Više pojedinosti o ploči';

  @override
  String get tutorEstimatesAndHowTheyWork => 'Procjene i kako funkcioniraju';

  @override
  String get tutorEstimateLimitations =>
      'Dubina: statička neuronska procjena nakon svakog legalnog poteza (0 poteza unaprijed), bez simulacija i pretraživanja budućih odgovora. MWC uzima u obzir rezultat meča i trenutačnu kocku pri ponderiranju procjena ishoda, ali ne modelira buduće odluke o kocki. Ako rezultat nije dostupan, equity bez kocke predstavlja očekivane bodove uz kocku na 1. Opažanja opisuju potez, a ne interno zaključivanje neuronskog mehanizma. Gotovo izjednačene procjene ne znače sigurnost; interval pouzdanosti nije kalibriran.';

  @override
  String get tutorPointNumberNote =>
      'Brojevi polja u bilješkama broje se od kućne ploče igrača koji je na potezu.';

  @override
  String get tutorHittingRollNote =>
      'Broj prilika za udar uključuje svih 36 uređenih ishoda bacanja i legalne izravne ili neizravne udare; riječ je o prilikama, a ne predviđanju protivnikova izbora.';

  @override
  String get tutorNoEvaluatedAlternatives =>
      'Za ovaj potez nema procijenjenih alternativa.';

  @override
  String get tutorForcedPassNoDecision =>
      'Prisilno propuštanje poteza ne uključuje odluku o pomicanju dama.';
}
