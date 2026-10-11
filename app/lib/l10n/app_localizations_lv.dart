// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Latvian (`lv`).
class AppLocalizationsLv extends AppLocalizations {
  AppLocalizationsLv([String locale = 'lv']) : super(locale);

  @override
  String get homeTagline => 'Uzlabojiet savu spēli ar trenera palīdzību';

  @override
  String get settings => 'Iestatījumi';

  @override
  String get playVsComputer => 'Spēlēt pret datoru';

  @override
  String get twoPlayers => 'Divi spēlētāji';

  @override
  String get playNearby => 'Spēlēt tuvumā';

  @override
  String get playOnline => 'Spēlēt tiešsaistē';

  @override
  String get learningPractice => 'Mācības un prakse';

  @override
  String get gamesArchive => 'Spēļu arhīvs';

  @override
  String get followSystem => 'Ierīces valoda';

  @override
  String get white => 'Baltie';

  @override
  String get black => 'Melnie';

  @override
  String get random => 'Nejauši';

  @override
  String get startMatch => 'Sākt spēli';

  @override
  String get tutor => 'Treneris';

  @override
  String get noMovesPass => 'Nav gājienu — izlaist';

  @override
  String get undo => 'Atsaukt';

  @override
  String get confirm => 'Apstiprināt';

  @override
  String get roll => 'Mest';

  @override
  String get hint => 'Padoms';

  @override
  String get tutoringStyle => 'Apmācības stils';

  @override
  String get tutorStyleCoach => 'Treneris';

  @override
  String get tutorStyleHintsOnly => 'Tikai ieteikumi';

  @override
  String get tutorStyleTryFirst => 'Vispirms izmēģini pats';

  @override
  String get tutorCoachDescription =>
      'Pozīcijas ieteikumi, gājienu komentāri, padomi un ieteikumi par dubultošanas kubu.';

  @override
  String get tutorHintsDescription =>
      'Gājienu sarindojums pēc pieprasījuma. Tiešie pozīcijas ieteikumi un automātiski gājienu komentāri paliek izslēgti.';

  @override
  String get tutorTryFirstDescription =>
      'Izmēģini savu gājienu, pirms aplūko sarindotos gājienus vai tā vērtējumu; pozīcijas norādes paliek ieslēgtas.';

  @override
  String get tutorCustomDescription =>
      'Pielāgota kombinācija. Maini jebkuru no tālāk norādītajām opcijām.';

  @override
  String get tutorBestMoveHints => 'Ieteikumi par labāko gājienu';

  @override
  String get tutorRevealRankedPlays =>
      'Rādīt sarindotos gājienus izvēles laikā';

  @override
  String get tutorMoveExplanations => 'Gājienu skaidrojumi';

  @override
  String get tutorCompareEstimates =>
      'Salīdzināt novērtējumus un izmaiņas uz galdiņa';

  @override
  String get tutorGameCommentary => 'Spēles komentāri';

  @override
  String get tutorPositionPrompts =>
      'Pozīcijas ieteikumi un atsauksmes pēc katra gājiena';

  @override
  String get tutorCubeAdvice => 'Padomi par dubultošanas kubu';

  @override
  String get tutorMatchAwareCubeAdvice =>
      'Ieteikumi par dubultošanu, pieņemšanu un atteikšanos, ņemot vērā mača rezultātu';

  @override
  String get tutorTryMoveFirst => 'Vispirms izmēģini gājienu';

  @override
  String get tutorStageBeforeHints =>
      'Izmēģini savu gājienu, pirms tiek rādīti ieteikumi vai vērtējums';

  @override
  String get tutorStaticEstimateNote =>
      'Ātrs statisks novērtējums (0-ply, bez simulācijām); piezīmes apraksta izmaiņas uz galdiņa un iespējamās atbildes, nevis garantē nākamo notikumu.';

  @override
  String get tutorWhatToWatchNext => 'Kam pievērst uzmanību nākamajā gājienā';

  @override
  String get tutorMoreBoardDetails => 'Papildu informācija par galdiņu';

  @override
  String get tutorEstimatesAndHowTheyWork => 'Novērtējumi un to darbība';

  @override
  String get tutorEstimateLimitations =>
      'Dziļums: statisks neironu tīkla novērtējums pēc katra atļautā gājiena (0-ply), bez simulācijām vai turpmāko atbilžu meklēšanas. MWC, kas ņem vērā rezultātu, sver iznākumu novērtējumus atbilstoši mača rezultātam un pašreizējam kubam; tas nemodelē turpmākos lēmumus par kubu. Ja rezultāts nav pieejams, equity bez kuba ir sagaidāmais punktu skaits ar kuba vērtību 1. Novērojumi par galdiņu raksturo gājienu, nevis neironu dzinēja iekšējo spriešanu. Gandrīz vienādi rezultāti nenozīmē noteiktību; kalibrēts ticamības intervāls netiek sniegts.';

  @override
  String get tutorPointNumberNote =>
      'Mācību piezīmēs punktus skaita no tā spēlētāja mājas puses, kura kārta ir gājienam.';

  @override
  String get tutorHittingRollNote =>
      'Sitienu iespēju skaitā ietverti visi 36 sakārtotie kauliņu iznākumi un atļautie tiešie vai netiešie sitieni; tie rāda iespējas, nevis paredz pretinieka izvēli.';

  @override
  String get tutorNoEvaluatedAlternatives =>
      'Šim gājienam nav pieejamu novērtētu alternatīvu.';

  @override
  String get tutorForcedPassNoDecision =>
      'Piespiedu gājiena izlaišana nav lēmums par spēles kauliņu pārvietošanu.';
}
