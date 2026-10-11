// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lithuanian (`lt`).
class AppLocalizationsLt extends AppLocalizations {
  AppLocalizationsLt([String locale = 'lt']) : super(locale);

  @override
  String get homeTagline => 'Tobulinkite žaidimą su treneriu';

  @override
  String get settings => 'Nustatymai';

  @override
  String get playVsComputer => 'Žaisti prieš kompiuterį';

  @override
  String get twoPlayers => 'Du žaidėjai';

  @override
  String get playNearby => 'Žaisti netoliese';

  @override
  String get playOnline => 'Žaisti internetu';

  @override
  String get learningPractice => 'Mokymasis ir praktika';

  @override
  String get gamesArchive => 'Žaidimų archyvas';

  @override
  String get followSystem => 'Įrenginio kalba';

  @override
  String get white => 'Balti';

  @override
  String get black => 'Juodi';

  @override
  String get random => 'Atsitiktinai';

  @override
  String get startMatch => 'Pradėti žaidimą';

  @override
  String get tutor => 'Treneris';

  @override
  String get noMovesPass => 'Ėjimų nėra — praleisti';

  @override
  String get undo => 'Atšaukti';

  @override
  String get confirm => 'Patvirtinti';

  @override
  String get roll => 'Mesti';

  @override
  String get hint => 'Patarimas';

  @override
  String get tutoringStyle => 'Mokymo stilius';

  @override
  String get tutorStyleCoach => 'Treneris';

  @override
  String get tutorStyleHintsOnly => 'Tik patarimai';

  @override
  String get tutorStyleTryFirst => 'Pirmiausia pabandyk pats';

  @override
  String get tutorCoachDescription =>
      'Patarimai apie padėtį, ėjimų įvertinimai, užuominos ir patarimai dėl dvigubinimo kubo.';

  @override
  String get tutorHintsDescription =>
      'Ėjimų reitingai pateikiami paprašius. Tiesioginiai patarimai apie padėtį ir automatiniai ėjimų įvertinimai lieka išjungti.';

  @override
  String get tutorTryFirstDescription =>
      'Pirmiausia išbandyk savo ėjimą, tada peržiūrėk reitingą ar įvertinimą; patarimai apie padėtį lieka įjungti.';

  @override
  String get tutorCustomDescription =>
      'Pasirinktinis derinys. Keisk bet kurias toliau pateiktas parinktis.';

  @override
  String get tutorBestMoveHints => 'Geriausio ėjimo patarimai';

  @override
  String get tutorRevealRankedPlays => 'Rodyti ėjimų reitingą tau renkantis';

  @override
  String get tutorMoveExplanations => 'Ėjimų paaiškinimai';

  @override
  String get tutorCompareEstimates => 'Palyginti įverčius ir pokyčius lentoje';

  @override
  String get tutorGameCommentary => 'Žaidimo komentarai';

  @override
  String get tutorPositionPrompts =>
      'Patarimai apie padėtį ir grįžtamasis ryšys po kiekvieno ėjimo';

  @override
  String get tutorCubeAdvice => 'Patarimai dėl dvigubinimo kubo';

  @override
  String get tutorMatchAwareCubeAdvice =>
      'Dvigubinimo, priėmimo ir atsisakymo pasiūlymai pagal mačo rezultatą';

  @override
  String get tutorTryMoveFirst => 'Pirmiausia išbandyk ėjimą';

  @override
  String get tutorStageBeforeHints =>
      'Išbandyk savo ėjimą prieš rodant patarimus ar jo įvertinimą';

  @override
  String get tutorStaticEstimateNote =>
      'Greitas statinis įvertis (0-ply, be simuliacijų); pastabose aprašomi lentos pokyčiai ir galimi atsakomieji ėjimai, o ne garantuojama, kas nutiks toliau.';

  @override
  String get tutorWhatToWatchNext => 'Į ką atkreipti dėmesį toliau';

  @override
  String get tutorMoreBoardDetails => 'Daugiau informacijos apie lentą';

  @override
  String get tutorEstimatesAndHowTheyWork => 'Įverčiai ir jų veikimas';

  @override
  String get tutorEstimateLimitations =>
      'Gylis: statinis neuroninio tinklo įvertinimas po kiekvieno teisėto ėjimo (0-ply), be simuliacijų ar būsimų atsakomųjų ėjimų paieškos. MWC, atsižvelgdamas į rezultatą, įverčius pasveria pagal mačo rezultatą ir dabartinį kubą; jis nemodeliuoja būsimų sprendimų dėl kubo. Jei rezultatas nežinomas, equity be kubo reiškia tikėtinus taškus, kai kubo vertė yra 1. Pastabose apie lentą aprašomas ėjimas, o ne vidinis neuroninio variklio samprotavimas. Nedideli skirtumai nereiškia tikrumo; kalibruotas pasikliautinasis intervalas nepateikiamas.';

  @override
  String get tutorPointNumberNote =>
      'Mokomuosiuose paaiškinimuose taškai skaičiuojami nuo einančio žaidėjo namų lentos.';

  @override
  String get tutorHittingRollNote =>
      'Smūgiavimo galimybių skaičius apima visus 36 išrikiuotus kauliukų derinius ir teisėtus tiesioginius ar netiesioginius smūgius; tai galimybės, o ne priešininko pasirinkimo prognozė.';

  @override
  String get tutorNoEvaluatedAlternatives =>
      'Šiam ėjimui nėra įvertintų alternatyvų.';

  @override
  String get tutorForcedPassNoDecision =>
      'Priverstinis ėjimo praleidimas nėra sprendimas, kaip perkelti šaškes.';
}
