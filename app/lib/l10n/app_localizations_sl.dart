// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovenian (`sl`).
class AppLocalizationsSl extends AppLocalizations {
  AppLocalizationsSl([String locale = 'sl']) : super(locale);

  @override
  String get homeTagline => 'Izboljšajte igro s pomočjo trenerja';

  @override
  String get settings => 'Nastavitve';

  @override
  String get playVsComputer => 'Igraj proti računalniku';

  @override
  String get twoPlayers => 'Dva igralca';

  @override
  String get playNearby => 'Igraj v bližini';

  @override
  String get playOnline => 'Igraj prek spleta';

  @override
  String get learningPractice => 'Učenje in vadba';

  @override
  String get gamesArchive => 'Arhiv iger';

  @override
  String get followSystem => 'Jezik naprave';

  @override
  String get white => 'Beli';

  @override
  String get black => 'Črni';

  @override
  String get random => 'Naključno';

  @override
  String get startMatch => 'Začni igro';

  @override
  String get tutor => 'Trener';

  @override
  String get noMovesPass => 'Ni potez — prepusti';

  @override
  String get undo => 'Razveljavi';

  @override
  String get confirm => 'Potrdi';

  @override
  String get roll => 'Vrzi';

  @override
  String get hint => 'Namig';

  @override
  String get tutoringStyle => 'Slog učenja';

  @override
  String get tutorStyleCoach => 'Trener';

  @override
  String get tutorStyleHintsOnly => 'Samo namigi';

  @override
  String get tutorStyleTryFirst => 'Najprej poskusi';

  @override
  String get tutorCoachDescription =>
      'Namigi o položaju, povratne informacije o potezah, predlogi in nasveti glede kocke.';

  @override
  String get tutorHintsDescription =>
      'Razvrščene poteze na zahtevo. Namigi o položaju in samodejne povratne informacije po potezi ostanejo izklopljeni.';

  @override
  String get tutorTryFirstDescription =>
      'Najprej pripravi svojo potezo, nato si oglej razvrščene možnosti ali oceno; vodenje po igralni plošči ostane vključeno.';

  @override
  String get tutorCustomDescription =>
      'Poljubna kombinacija. Spodaj prilagodi katero koli možnost.';

  @override
  String get tutorBestMoveHints => 'Namigi za najboljšo potezo';

  @override
  String get tutorRevealRankedPlays =>
      'Med odločanjem prikaži razvrščene poteze';

  @override
  String get tutorMoveExplanations => 'Pojasnila potez';

  @override
  String get tutorCompareEstimates =>
      'Primerjaj ocene in spremembe na igralni plošči';

  @override
  String get tutorGameCommentary => 'Komentarji o igri';

  @override
  String get tutorPositionPrompts =>
      'Namigi o položaju in povratne informacije po vsaki potezi';

  @override
  String get tutorCubeAdvice => 'Nasveti glede kocke';

  @override
  String get tutorMatchAwareCubeAdvice =>
      'Predlogi za podvojitev, sprejem in predajo glede na rezultat dvoboja';

  @override
  String get tutorTryMoveFirst => 'Najprej poskusi potezo';

  @override
  String get tutorStageBeforeHints =>
      'Pripravi svojo potezo, preden prikažeš namige ali oceno';

  @override
  String get tutorStaticEstimateNote =>
      'Hitra statična ocena (0-ply, brez simulacij); opombe opisujejo spremembe na igralni plošči in možne odgovore, ne zagotavljajo pa, kaj se bo zgodilo.';

  @override
  String get tutorWhatToWatchNext => 'Na kaj bodi pozoren v nadaljevanju';

  @override
  String get tutorMoreBoardDetails => 'Več podrobnosti o igralni plošči';

  @override
  String get tutorEstimatesAndHowTheyWork => 'Ocene in njihovo delovanje';

  @override
  String get tutorEstimateLimitations =>
      'Globina: statična nevronska ocena vsake dovoljene poteze (0-ply), brez simulacij ali iskanja prihodnjih odgovorov. MWC, ki upošteva rezultat, te ocene izidov uteži glede na rezultat dvoboja in trenutno kocko; prihodnjih dejanj s kocko ne modelira. Equity brez kocke pomeni pričakovane točke pri kocki z vrednostjo 1, kadar rezultat ni na voljo. Opazovanja igralne plošče opisujejo potezo, ne notranjega sklepanja nevronskega mehanizma. Skoraj izenačene ocene ne zagotavljajo gotovosti; kalibriranega intervala zaupanja ni.';

  @override
  String get tutorPointNumberNote =>
      'Številke polj v učnih opombah se štejejo od domače deske igralca, ki je na potezi.';

  @override
  String get tutorHittingRollNote =>
      'Število metov, ki omogočajo udarec, vključuje vseh 36 urejenih izidov kock in dovoljene neposredne ali posredne udarce; to so priložnosti, ne napoved nasprotnikove izbire.';

  @override
  String get tutorNoEvaluatedAlternatives =>
      'Za to potezo ni na voljo ocenjenih alternativ.';

  @override
  String get tutorForcedPassNoDecision =>
      'Pri prisiljeni predaji ni odločitve o premiku figur.';
}
