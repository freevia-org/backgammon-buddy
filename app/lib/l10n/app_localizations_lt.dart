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

  @override
  String get settingsReset => 'Atkurti';

  @override
  String get settingsAppLanguage => 'Programos kalba';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get settingsThemeSystem => 'Sistemos';

  @override
  String get settingsThemeLight => 'Šviesi';

  @override
  String get settingsThemeDark => 'Tamsi';

  @override
  String get settingsAnimationSpeed => 'Animacijos greitis';

  @override
  String get settingsAnimationNone => 'Nėra';

  @override
  String get settingsAnimationNormal => 'Įprastas';

  @override
  String get settingsAnimationFast => 'Greitas';

  @override
  String get settingsDiceRollAnimation => 'Kauliukų metimo animacija';

  @override
  String get settingsDiceRollAnimationHelp =>
      'Prieš kiekvieną metimą kauliukai paridenami.';

  @override
  String get settingsDefaultMatchLength => 'Numatytasis mačo ilgis';

  @override
  String get settingsDefaultDifficulty => 'Numatytasis sudėtingumas';

  @override
  String get settingsDifficultyEasy => 'Lengvas';

  @override
  String get settingsDifficultyMedium => 'Vidutinis';

  @override
  String get settingsDifficultyHard => 'Sunkus';

  @override
  String get settingsDifficultyExpert => 'Ekspertas';

  @override
  String get settingsTutorModeDefault => 'Numatytasis trenerio režimas';

  @override
  String get settingsTutorAuto => 'Automatinis';

  @override
  String get settingsTutorOn => 'Įjungta';

  @override
  String get settingsTutorOff => 'Išjungta';

  @override
  String get settingsTutorModeHelp =>
      'Automatinis režimas įjungia trenerį esant bet kokiam kompiuterio sudėtingumo lygiui. Įjungta ir Išjungta nustato vietinių mačų pradinę parinktį. Žaidžiant greta ar internetu pagalba neteikiama; išsaugotas partijas galima peržiūrėti vėliau. Toliau pateiktos mokymosi nuostatos išsaugomos šiame įrenginyje.';

  @override
  String get settingsTutorPreferences => 'Trenerio nuostatos';

  @override
  String get settingsTutorPreferencesSubtitle =>
      'Numatytosios nuostatos būsimiems mačams';

  @override
  String get settingsTutorSaveError => 'Nepavyko išsaugoti trenerio nuostatų.';

  @override
  String get settingsGameplay => 'Žaidimo eiga';

  @override
  String get settingsMoveHighlights => 'Ėjimų paryškinimas';

  @override
  String get settingsMoveHighlightsHelp =>
      'Pažymėk pasirenkamas šaškes ir paryškink paskirties vietas.';

  @override
  String get settingsDragToMove => 'Vilkti norint perkelti';

  @override
  String get settingsDragToMoveHelp =>
      'Vilk šaškę į paskirties vietą (bakstelėti taip pat galima).';

  @override
  String get settingsCombinedMoves => 'Sujungti ėjimai';

  @override
  String get settingsCombinedMovesHelp =>
      'Vienu bakstelėjimu perkelk šaškę pagal abu kauliukus.';

  @override
  String get settingsRotateBoard => 'Pasukti lentą tarp ėjimų';

  @override
  String get settingsRotateBoardHelp =>
      'Žaidžiant pakaitomis apversk vaizdą aktyviam žaidėjui.';

  @override
  String get settingsPassDevice => 'Įrenginio perdavimo ekranas';

  @override
  String get settingsPassDeviceHelp =>
      'Paslėpk lentą tarp ėjimų žaidžiant pakaitomis.';

  @override
  String get settingsShowScore => 'Rodyti rezultatą';

  @override
  String get settingsShowScoreHelp =>
      'Antraštėje rodyti dabartinį mačo rezultatą.';

  @override
  String get settingsBuddyMode => 'Buddy režimas';

  @override
  String get settingsBuddyTerse => 'Trumpai';

  @override
  String get settingsBuddyFriendly => 'Draugiškai';

  @override
  String get settingsBuddyTerseHelp =>
      'Kaip Buddy garsiai pasako ėjimą: „13/8, 24/22“ – žymėjimu, kaip prie lentos kalba du žaidėjai.';

  @override
  String get settingsBuddyFriendlyHelp =>
      'Kaip Buddy garsiai pasako ėjimą: „Perkelk vieną šaškę iš 13 į 8, kitą – iš 24 į 22.“';

  @override
  String get settingsListenForDice => 'Klausytis kauliukų';

  @override
  String get settingsListenForDiceHelp =>
      'Išgirdęs metimą Buddy greičiau pažvelgia į lentą. Išjungus niekas kitas nesikeičia.';

  @override
  String get settingsDiagnostics => 'Diagnostika';

  @override
  String get settingsErrorLog => 'Klaidų žurnalas';

  @override
  String get settingsErrorLogHelp =>
      'Naujausios klaidos, paruoštos kopijuoti į pranešimą apie riktą.';

  @override
  String get settingsReportBug => 'Pranešti apie riktą';

  @override
  String get settingsReportBugHelp =>
      'Atverti vedamą pranešimo formą GitHub svetainėje.';

  @override
  String get settingsSuggestIdea => 'Pasiūlyti idėją';

  @override
  String get settingsSuggestIdeaHelp =>
      'Padėk mums tobulinti trenerį ir žaidimą.';

  @override
  String get settingsAbout => 'Apie programą';

  @override
  String get settingsOpenSourceLicenses => 'Atvirojo kodo licencijos';

  @override
  String settingsAppVersion(Object version) {
    return 'Backgammon Buddy $version';
  }

  @override
  String get tutorPhraseGameFinished => 'Partija baigta.';

  @override
  String get tutorPhraseReviewFinishedGame =>
      'Peržiūrėk ėjimus ir rask sprendimą, kurį verta pasitreniruoti.';

  @override
  String get tutorPhraseCubeOffered => 'Pasiūlytas dvigubinimo kubas.';

  @override
  String get tutorPhraseCubeDecisionPrompt =>
      'Prieš planuodamas šaškių ėjimą nuspręsk, ar priimti kubą, ar pasiduoti.';

  @override
  String get tutorPhraseCubeScoreContext =>
      'Mačo rezultatas keičia papildomo statymo vertę.';

  @override
  String get tutorPhraseResignationOffered => 'Pasiūlyta pasiduoti.';

  @override
  String get tutorPhraseResignationDecisionPrompt =>
      'Prieš priimdamas ar tęsdamas palygink siūlomus taškus su pozicija.';

  @override
  String get tutorPhraseNoLegalPlay => 'Su šiuo metimu nėra teisėto ėjimo.';

  @override
  String get tutorPhraseForcedPassPrompt =>
      'Priverstinis praleidimas nėra klaida; lauk kito metimo.';

  @override
  String get tutorPhraseOnlyOneResult =>
      'Galima tik viena teisėta galutinė pozicija.';

  @override
  String get tutorPhraseForcedTurnPrompt =>
      'Atlik priverstinį ėjimą. Šio metimo pasirinkimo vertinti nereikia.';

  @override
  String get tutorPhrasePipCountsLevel => 'Pipų skaičius vienodas.';

  @override
  String tutorPhrasePipCountsAhead(int count) {
    return 'Turi $count pipų persvarą.';
  }

  @override
  String tutorPhrasePipCountsBehind(int count) {
    return 'Atsilieki $count pipais.';
  }

  @override
  String tutorPhrasePlayerHasCheckersOnBar(int count) {
    return 'Ant baro yra $count šaškės: pirmiausia reikia įeiti.';
  }

  @override
  String get tutorPhraseEnterBeforeMoving =>
      'Pirmiausia įeik į lentą, tada ieškok saugios vietos nusileisti.';

  @override
  String tutorPhraseOpponentHomePoints(int count) {
    return 'Varžovas užėmęs $count namų lentos punktų.';
  }

  @override
  String get tutorPhraseBearOffRace => 'Šaškių nuėmimo lenktynės.';

  @override
  String get tutorPhrasePureRace => 'Grynosios lenktynės.';

  @override
  String get tutorPhraseBearOffSpread =>
      'Nuimk šaškes ir palik naudingą išsidėstymą kitam metimui.';

  @override
  String get tutorPhraseBringRearCheckersHome =>
      'Parvesk galines šaškes namo, nesukraudamas per daug į vieną punktą.';

  @override
  String get tutorPhraseArmiesHavePassed =>
      'Šaškės prasilenkė; daugiau smūgiuoti nebegalima.';

  @override
  String tutorPhraseContactStillMatters(Object part) {
    return '$part Kontaktas vis dar svarbus.';
  }

  @override
  String tutorPhraseOpponentHasCheckersOnBar(int count) {
    return 'Ant baro yra $count varžovo šaškės.';
  }

  @override
  String get tutorPhraseKeepBoardClosed =>
      'Išlaikyk lentą uždarytą, kol parvesi likusias šaškes namo.';

  @override
  String get tutorPhraseBuildOrPreserveHomeBoard =>
      'Stiprink arba išlaikyk savo namų lentą, kol varžovas bando įeiti.';

  @override
  String tutorPhraseHomePointsCloseEntries(int count) {
    return 'Esi užėmęs $count namų lentos punktų; kiekvienas uždaro vieną įėjimo skaičių.';
  }

  @override
  String tutorPhrasePrimeContact(int count) {
    return 'Kontaktas su $count punktų bloku.';
  }

  @override
  String get tutorPhraseExtendPrimeOrKeepSpares =>
      'Palygink bloko pratęsimą su atsarginių šaškių išsaugojimu jam palaikyti.';

  @override
  String tutorPhraseSpareCheckersCanMove(int count) {
    return '$count atsargines šaškes galima perkelti iškart neatveriant punkto.';
  }

  @override
  String tutorPhraseAnchorContact(Object points) {
    return 'Kontaktas su inkaru punktuose $points.';
  }

  @override
  String get tutorPhraseCompareAnchorProgressAhead =>
      'Palygink galinių šaškių parvedimą namo su saugumu, kurį suteikia išlaikytas inkaras.';

  @override
  String get tutorPhraseCompareAnchorProgressBehind =>
      'Ieškodamas smūgio ar stiprindamas lentą nepamiršk saugios atramos.';

  @override
  String get tutorPhrasePreserveAnchorFoothold =>
      'Inkaro negalima smūgiuoti, tačiau šioms šaškėms dar toli iki namų.';

  @override
  String get tutorPhraseContactThreats =>
      'Kontaktas: abi pusės vis dar gali grasinti smūgiu.';

  @override
  String get tutorPhraseLookForPointsAndSafety =>
      'Ieškok naudingų punktų, tada įvertink pavienių atvirų šaškių riziką.';

  @override
  String tutorPhraseHomePointsAndBlots(int count, int otherCount) {
    return 'Turi $count namų lentos punktų ir palieki $otherCount pavienes šaškes.';
  }

  @override
  String get tutorPhraseChooseCheckerPrompt =>
      'Pasirink šaškę, nuo kurios pradėsi ėjimą.';

  @override
  String get tutorPhraseLegalPlayPrompt =>
      'Pradėk teisėtą ėjimą, kad matytum komentarus.';

  @override
  String tutorPhraseStagedHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'šaškes',
      few: 'šaškes',
      one: 'šaškę',
    );
    return 'Smūgiavai į $count varžovo $_temp0.';
  }

  @override
  String tutorPhraseStagedEnter(int count) {
    return 'Įvedei $count šaškę(-es) nuo baro.';
  }

  @override
  String tutorPhraseStagedBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'šaškes',
      few: 'šaškes',
      one: 'šaškę',
    );
    return 'Nuėmei nuo lentos $count $_temp0.';
  }

  @override
  String tutorPhraseStagedMakePoints(Object points) {
    return 'Užėmei punktus $points.';
  }

  @override
  String tutorPhraseStagedBlot(int point) {
    return 'Tavo $point-ame punkte esanti šaškė kol kas yra atvira.';
  }

  @override
  String tutorPhraseStagedSpare(int point) {
    return 'Atsarginę šaškę iš $point-o punkto vėliau galima perkelti jo neatveriant.';
  }

  @override
  String tutorPhraseStagedPartialPrompt(Object part) {
    return '$part Prieš vertindamas visą ėjimą panaudok likusius tinkamus kauliukus.';
  }

  @override
  String get tutorPhraseStagedAllCheckersOff =>
      'Visos 15 šaškių nuimtos: partija laimėta.';

  @override
  String get tutorPhraseStagedHitShortPlan =>
      'Smūgis laimi laiko, kol varžovas bando grįžti.';

  @override
  String get tutorPhraseStagedEfficientBearOffPlan =>
      'Veiksmingas nuėmimas pašalina šaškes ir palieka naudingus skaičius kitam metimui.';

  @override
  String get tutorPhraseStagedRaceHomePlan =>
      'Lenktynių planas – parvesti galines šaškes namo, paliekant patogius punktus nuėmimui.';

  @override
  String get tutorPhraseStagedBearOffContactPlan =>
      'Nuėmimas leidžia judėti pirmyn, bet likęs kontaktas vis dar kelia smūgio riziką.';

  @override
  String get tutorPhraseStagedReentryPlan =>
      'Sugrįžusi šaškė vėl žaidime; kitas tikslas – rasti saugų nusileidimo punktą.';

  @override
  String get tutorPhraseStagedHomeBoardPlan =>
      'Naujasis namų lentos punktas atima vieną įėjimo skaičių po būsimo smūgio.';

  @override
  String get tutorPhraseStagedPrimePlan =>
      'Ilgesnė eilė uždaro daugiau nusileidimo punktų; atsarginės šaškės padeda ją išlaikyti.';

  @override
  String get tutorPhraseStagedLeaveAnchorPlan =>
      'Palikęs inkarą įgyji erdvės, bet atsisakai saugios atramos.';

  @override
  String get tutorPhraseStagedNewAnchorPlan =>
      'Naujasis inkaras suteikia galinėms šaškėms saugią atramą.';

  @override
  String get tutorPhraseStagedCoverBlotPlan =>
      'Uždengęs atvirą šaškę pašalini varžovo taikinį.';

  @override
  String get tutorPhraseStagedSafetyTradeoffPlan =>
      'Čia reikia rinktis tarp plėtros ir saugumo: naudingos parengiamosios šaškės taip pat gali tapti taikiniu.';

  @override
  String tutorPhraseStagedCompletePrompt(Object part) {
    return '$part Visas ėjimas paruoštas; patvirtink, kad jį atliktum.';
  }

  @override
  String get tutorMoveForcedVerdict =>
      'Šis metimas nepalieka pasirinkimo, kaip perkelti šaškes; jis nevertinamas kaip sprendimas.';

  @override
  String get tutorMoveTopVerdict => 'Geriausias pasirinkimas šioje pozicijoje.';

  @override
  String get tutorMoveAlternativeVerdict =>
      'Šioje pozicijoje variklis teikia pirmenybę kitam ėjimui.';

  @override
  String tutorMoveEstimateDifference(Object loss) {
    return 'Skirtumas nuo geriausio ėjimo: $loss.';
  }

  @override
  String tutorMoveEstimateOutcomes(
    Object winPercent,
    Object winGammonPercent,
    Object loseGammonPercent,
  ) {
    return 'Po šio ėjimo: pergalės tikimybė $winPercent%, pergalės su gamonu ar geriau $winGammonPercent%, pralaimėjimo su gamonu ar blogiau $loseGammonPercent%. Įverčiai pateikti ėjusio žaidėjo požiūriu.';
  }

  @override
  String tutorMoveEstimateMatchChance(Object percent) {
    return 'Numatoma mačo pergalės tikimybė: $percent%.';
  }

  @override
  String get tutorMovePlanAllCheckersOff =>
      'Visos 15 šaškių nuimtos nuo lentos – partija laimėta.';

  @override
  String tutorMovePlanHit(Object homeBoardAdvice) {
    return 'Smūgiuok, kad laimėtum laiko, kol varžovas grįš nuo baro. $homeBoardAdvice';
  }

  @override
  String get tutorMovePlanHitClosed =>
      'Išlaikyk užimtus savo namų lentos punktus, kad varžovui būtų sunkiau grįžti.';

  @override
  String get tutorMovePlanHitBuild =>
      'Užimk daugiau savo namų lentos punktų, kad varžovui būtų sunkiau atsigauti po būsimų smūgių.';

  @override
  String get tutorMovePlanRaceBearOff =>
      'Nuimk šaškes veiksmingai: pašalink jas nuo lentos ir išsaugok palankius skaičius kitam metimui.';

  @override
  String get tutorMovePlanRaceHome =>
      'Parvesk atsilikusias šaškes namo ir išdėliok jas patogiuose punktuose nuėmimui.';

  @override
  String get tutorMovePlanContactBearOff =>
      'Nuiminėk šaškes, bet stebėk atsilikusias varžovo šaškes: kol yra kontaktas, neapsaugota šaškė gali tapti taikiniu.';

  @override
  String get tutorMovePlanReentry =>
      'Grįžk į žaidimą, tada ieškok saugaus punkto įėjusiai šaškei.';

  @override
  String get tutorMovePlanHomeBoard =>
      'Sustiprink savo namų lentą. Naujas užimtas punktas sustiprins būsimą smūgį, nes panaikins vieną įėjimo skaičių.';

  @override
  String get tutorMovePlanPrime =>
      'Išlaikyk vientisą užimtų punktų eilę. Palik atsarginių šaškių, kad vėlesnis metimas nepriverstų jos atverti.';

  @override
  String get tutorMovePlanLeaveAnchor =>
      'Palikęs inkarą pastumsi atsilikusias šaškes į priekį, bet prarasi saugią atramą. Stebėk jų pažeidžiamumą keliaujant namo.';

  @override
  String get tutorMovePlanNewAnchor =>
      'Naudok naują inkarą kaip saugią atramą, kol gerini likusią poziciją.';

  @override
  String get tutorMovePlanCoverBlot =>
      'Sutelk šaškes. Uždengęs pavienę šaškę pašalini taikinį ir išsaugai būsimų nusileidimo punktų galimybes.';

  @override
  String get tutorMovePlanSafety =>
      'Derink plėtrą su saugumu: vesk parengiamąsias šaškes link naudingų punktų ir tikrink, kurias pavienes šaškes galima smūgiuoti.';

  @override
  String get tutorMoveObservationNoLegalPlay =>
      'Nėra teisėto ėjimo šaškėmis – reikia praleisti ėjimą.';

  @override
  String tutorMoveObservationHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'varžovo šaškes',
      few: 'varžovo šaškes',
      one: 'varžovo šaškę',
    );
    return 'Smūgiuoja į $count $_temp0; varžovas privalo grįžti nuo baro prieš judindamas kitas šaškes.';
  }

  @override
  String tutorMoveObservationEntry(int count) {
    return 'Įveda $count šaškę(-es) nuo baro.';
  }

  @override
  String tutorMoveObservationBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'šaškes',
      few: 'šaškes',
      one: 'šaškę',
    );
    return 'Nuima nuo lentos $count $_temp0.';
  }

  @override
  String tutorMoveObservationMadePoints(Object points) {
    return 'Užima punktus $points. Dvi ar daugiau šaškių saugiai užima punktą ir neleidžia varžovui ten nusileisti.';
  }

  @override
  String tutorMoveObservationBrokenPoints(Object pointLabel, Object points) {
    return 'Atveria užimtus $pointLabel $points. Šie punktai nebeužblokuoja varžovo.';
  }

  @override
  String tutorMoveObservationNoBlots(int previousCount) {
    return 'Nepalieka atvirų pavienių šaškių (anksčiau $previousCount). Nėra pavienių šaškių, kurias būtų galima smūgiuoti.';
  }

  @override
  String tutorMoveObservationBlots(int count, int previousCount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ių atvirų šaškių',
      few: 'es atviras šaškes',
      one: 'ę atvirą šaškę',
    );
    return 'Palieka $count pavien$_temp0 (anksčiau $previousCount). Patikrink, ar varžovas jas pasieks, prieš rinkdamasis saugumą vietoj kitos naudos.';
  }

  @override
  String tutorMoveObservationPrimeRun(
    int count,
    int previousCount,
    Object primeAdvice,
  ) {
    return 'Ilgiausia užimtų punktų eilė: $count (anksčiau $previousCount). $primeAdvice';
  }

  @override
  String get tutorMoveObservationPrimeSix =>
      'Šešių punktų blokas neperžengiamas, kol lieka užimtas.';

  @override
  String get tutorMoveObservationPrimeBuild =>
      'Laikyk parengiamąsias šaškes netoliese, jei nori pratęsti arba išlaikyti šią eilę.';

  @override
  String tutorMoveObservationPrimeSpares(int count) {
    return 'Virš dviejų šaškių, laikančių užimtus punktus, yra $count atsarginių. Perkėlus atsarginę šaškę punktas gali likti užimtas; perkėlus vieną iš paskutinių dviejų jis atsivers.';
  }

  @override
  String tutorMoveObservationAnchors(Object points, Object previousPoints) {
    return 'Inkarai varžovo namų lentoje: $points (anksčiau $previousPoints). Inkaras apsaugo šias šaškes nuo smūgių; jo atsisakymas iškeičia saugią atramą į pažangą lenktynėse.';
  }

  @override
  String get tutorMoveObservationPureRace =>
      'Grynos lenktynės: pusės prasilenkė ir nė viena neturi šaškių ant baro. Smūgiuoti nebegalima; svarbus veiksmingas šaškių nuėmimas.';

  @override
  String get tutorMoveObservationNoReplyHit =>
      'Nė vienas teisėtas kitas metimas nesuteikia varžovui galimybės smūgiuoti šioje pozicijoje. Kontaktas išlieka, todėl vėlesni ėjimai gali sukurti naujų smūgio progų.';

  @override
  String tutorMoveObservationReplyHit(
    int count,
    int total,
    int dieOne,
    int dieTwo,
    int point,
  ) {
    return 'Varžovas gali smūgiuoti per $count iš $total metimų. Pavyzdžiui, $dieOne–$dieTwo leidžia teisėtai smūgiuoti tavo šaškę $point-ame punkte. Galimybė smūgiuoti nereiškia, kad varžovas ja pasinaudos.';
  }

  @override
  String tutorMoveObservationOpponentBarHome(
    int closedPoints,
    Object entryAdvice,
  ) {
    return 'Tavo namų lentoje užimta $closedPoints punktų. $entryAdvice';
  }

  @override
  String get tutorMoveObservationAllEntriesClosed =>
      'Varžovas negali grįžti, kol neatsivers punktas.';

  @override
  String get tutorMoveObservationOpenEntry =>
      'Metimas, atitinkantis atvirą įėjimo punktą, gali grąžinti šaškę nuo baro.';

  @override
  String tutorMoveComparisonDetail(
    Object factors,
    Object delta,
    Object direction,
    Object scoreContext,
  ) {
    return '$factors Geriausio ėjimo numatoma pergalės tikimybė $delta procentinio punkto $direction.$scoreContext';
  }

  @override
  String get tutorMoveComparisonHigher => 'didesnė';

  @override
  String get tutorMoveComparisonLower => 'mažesnė';

  @override
  String tutorMoveComparisonScoreContext(Object scoreContext) {
    return ' Jis vis tiek gali būti įvertintas geriau, nes gamono ir backgamono vertė priklauso nuo esamo $scoreContext.';
  }

  @override
  String get tutorMoveComparisonStake => 'rezultato';

  @override
  String get tutorMoveComparisonMatchScore => 'mačo rezultato';

  @override
  String tutorMoveComparisonFactorBar(int bestCount, int playedCount) {
    return 'Geriausias ėjimas palieka ant baro $bestCount varžovo šaškes vietoj $playedCount. Ant baro esanti šaškė turi grįžti, kol varžovas gali judinti kitas.';
  }

  @override
  String tutorMoveComparisonFactorHomeBoard(
    int bestCount,
    int playedCount,
    Object entryDifference,
  ) {
    return 'Geriausias ėjimas išlaiko užimtus $bestCount namų lentos punktus vietoj $playedCount – po smūgio lieka $entryDifference įėjimo punktų.';
  }

  @override
  String get tutorMoveComparisonClosingMore => 'uždarant daugiau punktų';

  @override
  String get tutorMoveComparisonLeavingMore =>
      'paliekant daugiau atvirų punktų';

  @override
  String tutorMoveComparisonFactorShots(
    int bestCount,
    int playedCount,
    Object riskDifference,
  ) {
    return 'Po geriausio ėjimo varžovas gali smūgiuoti per $bestCount iš 36 metimų vietoj $playedCount. $riskDifference';
  }

  @override
  String get tutorMoveComparisonReducesRisk =>
      'Taip sumažėja tiesioginė rizika, kad tavo šaškė bus numušta.';

  @override
  String get tutorMoveComparisonExtraExposure =>
      'Palygink šį papildomą pažeidžiamumą su kita ėjimo nauda.';

  @override
  String tutorMoveComparisonFactorPrime(int bestCount, int playedCount) {
    return 'Ilgiausia užimtų punktų eilė geriausiame ėjime yra $bestCount, o ne $playedCount; palygink blokadą su šaškėmis, kuriomis ją galima išlaikyti.';
  }

  @override
  String tutorMoveComparisonFactorAnchors(
    Object bestPoints,
    Object playedPoints,
  ) {
    return 'Geriausias ėjimas išlaiko $bestPoints inkarus vietoj $playedPoints. Inkaras išsaugo saugų punktą; jį palikus šaškės priartėja namų link.';
  }

  @override
  String tutorMoveComparisonFactorBearOff(int bestCount, int playedCount) {
    return 'Geriausias ėjimas nuima $bestCount šaškes vietoj $playedCount. Kiekvienos nuimtos šaškės vėliau nebereikės pašalinti.';
  }

  @override
  String get tutorMoveComparisonFactorSimilarRisks =>
      'Abu ėjimai palieka tokią pačią tiesioginę smūgio riziką, namų lentos punktus, inkarus ir nuimtų šaškių skaičių. Palygink nusileidimo punktus: per kitą metimą šaškes galėsi panaudoti skirtingai.';

  @override
  String get tutorMoveComparisonSummaryBar =>
      'Geriausias ėjimas nusiunčia ant baro daugiau varžovo šaškių ir pristabdo kitus jo ėjimus.';

  @override
  String get tutorMoveComparisonSummaryHomeBoard =>
      'Geriausias ėjimas uždaro daugiau namų lentos punktų ir apsunkina grįžimą po smūgio.';

  @override
  String get tutorMoveComparisonSummaryShots =>
      'Geriausias ėjimas leidžia mažiau iškart galimų smūgių ir sumažina atsakomojo smūgio riziką.';

  @override
  String get tutorMoveComparisonSummaryPrime =>
      'Geriausias ėjimas išsaugo ilgesnę užimtų punktų eilę.';

  @override
  String get tutorMoveComparisonSummaryAnchors =>
      'Geriausias ėjimas išlaiko daugiau saugių inkarų varžovo namų lentoje.';

  @override
  String get tutorMoveComparisonSummaryBearOff =>
      'Geriausias ėjimas nuima daugiau šaškių, todėl vėliau liks mažiau.';

  @override
  String tutorMoveComparisonSummaryBlots(int playedCount, int bestCount) {
    return 'Šis ėjimas palieka $playedCount pavienes šaškes; geriausias – $bestCount.';
  }

  @override
  String tutorMoveComparisonSummarySafeAnchor(int point) {
    return 'Geriausias ėjimas išlaiko saugų inkarą $point-ame punkte.';
  }

  @override
  String get tutorMoveComparisonSummaryEntry =>
      'Geriausias ėjimas uždaro daugiau įėjimo punktų, jei viena tavo šaškė būtų numušta.';

  @override
  String get tutorMoveComparisonSummarySimilarRisks =>
      'Tiesioginė ėjimų rizika panaši; palygink, kurie nusileidimo punktai liks naudingi kitą metimą.';

  @override
  String tutorMoveAssessmentEquityLoss(Object value) {
    return '$value ekviti';
  }

  @override
  String tutorMoveAssessmentMwcLoss(Object value) {
    return '$value mačo pergalės tikimybės procentinio punkto';
  }

  @override
  String get tutorMovePointSingular => 'punktas';

  @override
  String get tutorMovePointPlural => 'punktai';

  @override
  String get tutorMoveNoPoints => 'nėra';

  @override
  String get gameTutorCommentaryOff => 'Partijos komentarai išjungti.';

  @override
  String get gameTutorToolsAvailable =>
      'Atverk trenerį, kad pasiektum įjungtus įrankius.';

  @override
  String get gameTutorNextRoll => 'Dabar mesk kauliukus.';

  @override
  String get gameTutorNoEvaluatedReview =>
      'Šiam įrašytam ėjimui nėra įvertinto paaiškinimo.';

  @override
  String get gameTutorAnalysisUnavailable => 'analizė nepasiekiama';

  @override
  String get gameTutorReviewing => 'analizuojama…';

  @override
  String get gameTutorTryYourPlayFirst =>
      'Pirmiausia pabandyk atlikti ėjimą pats.';

  @override
  String get gameTutorKeepBuilding => 'Toliau dėliok savo ėjimą.';

  @override
  String get gameTutorStageCompleteBeforeCoaching =>
      'Užbaik visą teisėtą ėjimą prieš rodydamas patarimus ar užuominas.';

  @override
  String get gameTutorReadyToConfirm => 'Galima patvirtinti';

  @override
  String get gameTutorPlayTakingShape => 'Tavo ėjimas įgauna formą.';

  @override
  String get gameTutorConfirmOrUndo =>
      'Patvirtink ėjimą arba atšauk ir apsvarstyk dar kartą.';

  @override
  String get gameTutorFinishDiceOrUndo =>
      'Panaudok likusius kauliukus arba atšauk ėjimą.';

  @override
  String get gameTutorComputerConsidering => 'Kompiuteris svarsto savo ėjimą.';

  @override
  String get gameTutorComputerPlayReviewed =>
      'Užbaigtas kompiuterio ėjimas bus aptartas čia.';

  @override
  String get gameTutorYourPlay => 'Tavo ėjimas';

  @override
  String get gameTutorComputer => 'Kompiuteris';

  @override
  String gameTutorPlayQuality(Object quality) {
    return 'Tavo ėjimas: $quality';
  }

  @override
  String get gameTutorForcedPlay => 'priverstinis ėjimas';

  @override
  String get gameTutorTopChoice => 'geriausias pasirinkimas';

  @override
  String get gameTutorSoundPlay => 'geras ėjimas';

  @override
  String get gameTutorAnotherPlayMayFitBetter => 'Galbūt tiktų kitas ėjimas.';

  @override
  String get gameTutorAnotherPlayFitsBetter =>
      'Kitas ėjimas šiai pozicijai tinka geriau.';

  @override
  String get gameTutorStrongerPlayAvailable =>
      'Buvo galimas aiškiai stipresnis ėjimas.';

  @override
  String gameTutorPositionEdge(Object side) {
    return 'Pagal įvertinimą pranašumą turi $side.';
  }

  @override
  String get gameTutorPositionEven => 'Pozicija apylygė.';

  @override
  String tutorPlayedMove(Object move) {
    return 'Sužaista: $move';
  }

  @override
  String tutorBestMove(Object move) {
    return 'Geriausias: $move';
  }

  @override
  String get tutorShowRankedPlays => 'Rodyti įvertintus ėjimus';

  @override
  String get tutorReviewRecordedMove =>
      'Bakstelėk užbaigtą ėjimą žurnale, kad čia peržiūrėtum jo sprendimą.';

  @override
  String get tutorTopPlays => 'Geriausi ėjimai';

  @override
  String get tutorNoHintsAvailable => 'Užuominų nėra.';

  @override
  String get tutorPreviewThenConfirm =>
      'Bakstelėk ėjimą, kad peržiūrėtum jį lentoje, tada patvirtink.';

  @override
  String get tutorTopChoiceForPosition =>
      'Geriausias pasirinkimas šioje pozicijoje';

  @override
  String get tutorAlternativePlay => 'Alternatyvus ėjimas';

  @override
  String get tutorEngineEstimates => 'Variklio įverčiai';

  @override
  String get tutorEstimateScope =>
      '0 pusėjimų įvertis – dabartinis rezultatas ir statymas – be būsimų dvigubinimų';

  @override
  String get tutorEquity => 'Ekviti';

  @override
  String get tutorMwcPercent => 'Mačo pergalės tikimybė, %';

  @override
  String get tutorNearTiesNote =>
      'Gilesnė analizė gali pakeisti beveik lygių variantų eilę.';

  @override
  String get tutorWhyThisPlay => 'Kodėl šis ėjimas?';

  @override
  String get tutorCompareAlternative => 'Palyginti šią alternatyvą';

  @override
  String get gameTutorCubeTake => 'Treneris: priimti';

  @override
  String get gameTutorCubePass => 'Treneris: pasiduoti';

  @override
  String get practiceScreenTitle => 'Praktikuokite ėjimą';

  @override
  String get practiceUnavailable => 'Ši praktikos pozicija nebepasiekiama.';

  @override
  String get practiceSubmitError =>
      'Šio bandymo nepavyko įvertinti arba išsaugoti. Jūsų pažanga nepasikeitė. Bandykite dar kartą.';

  @override
  String practiceTurnLabel(Object side, Object dice) {
    return '$side turi ėjimą · $dice';
  }

  @override
  String get practiceHistoricalScoreUnavailable =>
      'Istorinis rezultatas nežinomas; ėjimas vertinamas pagal equity be dvigubinimo kubo.';

  @override
  String practiceScoreLine(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return 'Rezultatas: $whiteLabel $whiteScore – $blackLabel $blackScore, iki $matchLength';
  }

  @override
  String get practiceCrawfordGame => ' · Crawfordo partija';

  @override
  String get practiceNoDoublingCube => 'Be dvigubinimo kubo.';

  @override
  String practiceCubeValue(int value) {
    return 'Kubo vertė $value.';
  }

  @override
  String get practiceHistoricalCubeUnknown =>
      'Istorinės kubo taisyklės nežinomos.';

  @override
  String get practiceAfterBestPosition => 'Pozicija po geriausio ėjimo';

  @override
  String get practiceAfterYourAnswerPosition => 'Pozicija po jūsų atsakymo';

  @override
  String get practiceFindYourPlayPrompt =>
      'Atlikite ėjimą lentoje ir patikrinkite atsakymą. Užuominų nebus.';

  @override
  String get practiceUndo => 'Atšaukti ėjimą';

  @override
  String get practiceCheckAnswer => 'Patikrinti atsakymą';

  @override
  String get practiceRevealNoCredit => 'Rodyti atsakymą (be taškų)';

  @override
  String get practiceAnswerRevealedNoCredit =>
      'Atsakymas parodytas — prisiminimo taškų negausite.';

  @override
  String practiceGradeLine(Object verdict, Object loss) {
    return '$verdict · $loss';
  }

  @override
  String practiceBestMoveLine(Object move) {
    return 'Geriausias: $move';
  }

  @override
  String practiceOriginalGameLine(Object move, Object loss) {
    return 'Pradinis žaidimo ėjimas: $move · $loss';
  }

  @override
  String practiceYourAnswerLine(Object move) {
    return 'Jūsų atsakymas: $move';
  }

  @override
  String get practiceYourAnswerChip => 'Jūsų atsakymas';

  @override
  String get practiceBestPlayChip => 'Geriausias ėjimas';

  @override
  String practiceNextReview(Object date) {
    return 'Kita peržiūra: $date.';
  }

  @override
  String get practiceRecallCredit =>
      'Geriausi ir geri atsakymai laikomi sėkmingu prisiminimu. Ankstyvas pakartojimas intervalo nepailgina.';

  @override
  String get practiceBackToLearning => 'Grįžti į mokymąsi';

  @override
  String get practiceMarkBest => 'Geriausias';

  @override
  String get practiceMarkGood => 'Geras';

  @override
  String get practiceMarkDubious => 'Abejotinas';

  @override
  String get practiceMarkError => 'Klaida';

  @override
  String get practiceMarkBlunder => 'Didelė klaida';

  @override
  String get practiceMarkForced => 'Priverstinis';

  @override
  String get newMatchYourSide => 'Jūsų pusė';

  @override
  String get newMatchTutorMode => 'Mokytojo režimas';

  @override
  String get newMatchTutorDescription =>
      'Mokykitės naudodami užuominas, paaiškinimus ir žaidimo komentarus';

  @override
  String get newMatchTutoringOptions => 'Mokymo parinktys';

  @override
  String get newMatchTutoringOptionsDescription =>
      'Šiam mačui; žaidžiant galima keisti';

  @override
  String get setupMatchLength => 'Mačo ilgis';

  @override
  String get setupDifficulty => 'Sudėtingumas';

  @override
  String get setupDifficultyEasy => 'Lengvas';

  @override
  String get setupDifficultyMedium => 'Vidutinis';

  @override
  String get setupDifficultyHard => 'Sunkus';

  @override
  String get setupDifficultyExpert => 'Ekspertas';

  @override
  String get setupPlayWithoutCube => 'Žaisti be kubo';

  @override
  String get setupNoCubeThisMatch => 'Šiame mače nėra dvigubinimo kubo';

  @override
  String get analysisTitle => 'Analizė';

  @override
  String get gameMatchSummary => 'Mačo santrauka';

  @override
  String get gameAnalyzeGame => 'Analizuoti partiją';

  @override
  String get analysisMetricsTooltip => 'Ką reiškia šie skaičiai?';

  @override
  String analysisError(Object error) {
    return 'Nepavyko išanalizuoti partijos: $error';
  }

  @override
  String get analysisNoPositions => 'Šioje partijoje nėra rodomų pozicijų.';

  @override
  String get analysisInProgress => 'Analizuojama…';

  @override
  String analysisPercent(int percent) {
    return '$percent%';
  }

  @override
  String get analysisPlayed => 'Sužaista';

  @override
  String get analysisBest => 'Geriausias';

  @override
  String get analysisPrevious => 'Ankstesnis';

  @override
  String get analysisNext => 'Kitas';

  @override
  String get analysisPositionBeforeCube => 'Pozicija prieš sprendimą dėl kubo';

  @override
  String get analysisPositionAtPoint => 'Pozicija šiuo žaidimo momentu';

  @override
  String get analysisShowingBestBefore =>
      'Rodomas geriausias ėjimas pozicijoje prieš ėjimą';

  @override
  String get analysisShowingBefore => 'Rodoma pozicija prieš ėjimą';

  @override
  String analysisVerdictLine(Object side, Object verdict, Object loss) {
    return '$side: $verdict$loss';
  }

  @override
  String analysisMoveLoss(Object loss) {
    return ' −$loss';
  }

  @override
  String get analysisExcludedFromAverages => ' · neįtraukta į vidurkius';

  @override
  String get analysisNoPlay => '(ėjimo nėra)';

  @override
  String analysisBestMoveLine(Object move) {
    return 'Geriausias: $move';
  }

  @override
  String get analysisExplain => 'Paaiškinti';

  @override
  String get analysisSaveForPractice => 'Išsaugoti praktikai';

  @override
  String get analysisSaveError =>
      'Nepavyko išsaugoti šio sprendimo. Bandykite dar kartą.';

  @override
  String analysisCubeInfo(
    Object side,
    Object action,
    Object mark,
    Object loss,
  ) {
    return '$side: $action · $mark · praradimas $loss';
  }

  @override
  String get analysisCubeDecision => 'Sprendimas dėl kubo';

  @override
  String analysisCubePlayed(Object action, Object percent) {
    return 'Sužaista: $action ($percent% laimėti partiją).';
  }

  @override
  String analysisCubeBest(Object action, Object percent) {
    return 'Geriausia: $action ($percent% laimėti partiją).';
  }

  @override
  String get analysisCubeEstimate =>
      '0-ply įvertis veikiančio žaidėjo požiūriu. Daroma prielaida, kad į optimalų priėmimą ar pasą bus atsakyta. Priimto dvigubinimo šakai naudojamas apytikslis 0,7 kubo gyvavimo įvertis, o ne visa būsimo pakartotinio dvigubinimo paieška. Gilesnė analizė gali pakeisti rezultatą.';

  @override
  String get analysisClose => 'Uždaryti';

  @override
  String get analysisMoves => 'Ėjimai';

  @override
  String get analysisForced => 'Priverstinis';

  @override
  String get analysisMarkBest => 'Geriausias';

  @override
  String get analysisMarkGood => 'Geras';

  @override
  String get analysisMarkDubious => 'Abejotinas';

  @override
  String get analysisMarkError => 'Klaida';

  @override
  String get analysisMarkBlunder => 'Grubi klaida';

  @override
  String analysisSummaryMeanLoss(Object loss) {
    return 'Vidutinis praradimas $loss';
  }

  @override
  String analysisSummaryCheckerDecisions(int count) {
    return '$count ėjimų su kauliukais';
  }

  @override
  String analysisSummaryBlunders(int count) {
    return 'Grubios klaidos $count';
  }

  @override
  String analysisSummaryCubeLoss(Object loss) {
    return 'Kubo praradimas $loss';
  }

  @override
  String analysisRollWithoutDoubling(Object side) {
    return '$side meta nedvigubindamas';
  }

  @override
  String get metricExplainerTitle => 'Metrikų paaiškinimas';

  @override
  String get metricExplainerTooltip => 'Ką reiškia šie skaičiai?';

  @override
  String get metricExplainerMwcTitle => 'Laimėjimo mače tikimybė (MWC)';

  @override
  String get metricExplainerMwcBody =>
      'Kai rezultatas žinomas, šaškių ėjimai rikiuojami pagal apytikslę mačo laimėjimo tikimybę. Praradimas nurodomas procentiniais punktais (pp): 1 pp reiškia, kad 51 % sumažėja iki 50 %. Įskaičiuojama kubo vertė ir gamono bei backgamono baigtys. Priverstiniai pasai ir metimai, po kurių lieka viena teisėta pozicija, neįtraukiami į vidurkius.';

  @override
  String get metricExplainerSearchTitle => 'Paieška ir neapibrėžtumas';

  @override
  String get metricExplainerSearchBody =>
      'Šaškių ėjimų reitingai yra statiniai 0-ply įverčiai po ėjimo, o ne simuliacijos. Mačo vertėms naudojama mačo nuosavybės lentelė, neįtraukiant būsimų kubo ėjimų. Kubo analizėje priimtiems dvigubinimams naudojamas dalinis 0,7 kubo gyvavimo įvertis. Tai nėra pilna analizė su kubu. Kai iki mačo pabaigos liko daugiau nei 25 taškai, naudojama lentelės 25-away riba. Gilesnė analizė gali pakeisti artimus rezultatus; kalibruotas patikimumo intervalas neskaičiuojamas.';

  @override
  String get metricExplainerEquityTitle => 'Nuosavybė';

  @override
  String get metricExplainerEquityBody =>
      'Jei rezultatas nežinomas, nuosavybė be kubo rodo vidutinę pozicijos vertę taškais, kai kubas lygus 1. +1,0 reiškia tikėtiną vieno taško laimėjimą, o −0,5 – pusės taško pralaimėjimą.';

  @override
  String get metricExplainerEquityLossTitle =>
      'Nuosavybės praradimas (pvz., −0,016)';

  @override
  String get metricExplainerEquityLossBody =>
      'Kiekvieną ėjimą lyginame su geriausiu variklio ėjimu. Nuosavybės praradimas rodo, kiek tikėtinos vertės atsisakyta. −0,016 reiškia, kad ėjimas buvo tik 0,016 taško blogesnis už geriausią – tai menka klaida. 0,000 reiškia, kad radote geriausią ėjimą.';

  @override
  String get metricExplainerErrorRateTitle => 'Klaidų dažnis';

  @override
  String get metricExplainerErrorRateBody =>
      'Vidutinis praradimas apskaičiuojamas iš įvertintų šaškių sprendimų ir rodomas pasirinktais vienetais. Kubo sprendimai turi atskirą vidurkį. Mažesnė reikšmė reiškia, kad ėjimai artimesni geriausiems variklio įverčiams; tai nėra kalibruotas žaidėjo reitingas.';

  @override
  String get metricExplainerMoveMarksTitle => 'Ėjimų įvertinimai';

  @override
  String get metricExplainerMoveMarksBody =>
      'MWC mokomosios ribos: geriausias < 0,05 pp, geras < 0,5 pp, abejotinas < 1,5 pp, klaida < 3 pp, grubi klaida ≥ 3 pp. Tai mokomieji intervalai, o ne patikimumo ar turnyro reitingai.\n\nNuosavybės be kubo mokomosios ribos:';

  @override
  String get metricExplainerThresholdBest => 'prarasta < 0,001';

  @override
  String get metricExplainerThresholdGood => 'prarasta < 0,020';

  @override
  String get metricExplainerThresholdDubious => 'prarasta < 0,050';

  @override
  String get metricExplainerThresholdError => 'prarasta < 0,110';

  @override
  String get metricExplainerThresholdBlunder => 'prarasta ≥ 0,110';

  @override
  String get metricExplainerGotIt => 'Supratau';

  @override
  String get historyTitle => 'Partijų istorija';

  @override
  String historyLoadFailed(Object error) {
    return 'Nepavyko įkelti istorijos:\n$error';
  }

  @override
  String get historyEmpty => 'Dar nežaidėte nė vienos partijos.';

  @override
  String get historyDeleteConfirmTitle => 'Ištrinti šią partiją?';

  @override
  String historyDeleteConfirmBody(Object scoreLine) {
    return '$scoreLine\n\nMačas ir visos jame užregistruotos partijos bus visam laikui pašalintos. Šio veiksmo anuliuoti negalima.';
  }

  @override
  String get actionCancel => 'Atšaukti';

  @override
  String get actionDelete => 'Ištrinti';

  @override
  String get historyDeleteFailed => 'Nepavyko ištrinti partijos.';

  @override
  String get historyComplete => 'Baigta';

  @override
  String historyWinner(Object side) {
    return 'Laimėjo $side';
  }

  @override
  String get historyUnfinished => 'Neužbaigta';

  @override
  String get historyMatchTitle => 'Mačas';

  @override
  String historyMatchLoadFailed(Object error) {
    return 'Nepavyko įkelti mačo:\n$error';
  }

  @override
  String historyGamesLoadFailed(Object error) {
    return 'Nepavyko įkelti partijų:\n$error';
  }

  @override
  String get historyNoGames => 'Partijų dar neužfiksuota.';

  @override
  String historyGameTitle(int number) {
    return 'Partija $number';
  }

  @override
  String get historyCrawford => 'Krawfordo taisyklė';

  @override
  String historyScoreLine(int whiteScore, int blackScore, int matchLength) {
    return 'Balti $whiteScore — $blackScore Juodi  (iki $matchLength)';
  }

  @override
  String get historyModeComputer => 'prieš kompiuterį';

  @override
  String get historyModeTwoPlayers => 'Du žaidėjai';

  @override
  String get historyModeOnline => 'Prisijungus';

  @override
  String get historyModeNearby => 'Žaisti netoliese';

  @override
  String get historyModeBuddy => 'Buddy';

  @override
  String get historyGameInProgress => 'Vyksta';

  @override
  String historyGameResult(Object side, int points, Object outcome) {
    return '$side laimi $points ($outcome)';
  }

  @override
  String get historyOutcomeSingle => 'viengubas';

  @override
  String get historyOutcomeGammon => 'gammonas';

  @override
  String get historyOutcomeBackgammon => 'backgammonas';

  @override
  String get learningRefreshTooltip => 'Atnaujinti mokymosi pažangą';

  @override
  String get learningOptions => 'Mokymosi parinktys';

  @override
  String get learningResetMenu => 'Iš naujo nustatyti praktikos pažangą';

  @override
  String get learningLoadFailed => 'Nepavyko įkelti mokymosi pažangos.';

  @override
  String get actionRetry => 'Bandyti dar kartą';

  @override
  String get learningHeading => 'Mokykitės iš savo sprendimų';

  @override
  String get learningIntro =>
      'Pažanga saugoma šiame įrenginyje. Peržiūrėkite pasikartojančias temas ir bandykite išsaugotas pozicijas dar kartą nematydami atsakymo. Baltųjų ir juodųjų ėjimus galima peržiūrėti atskirai.';

  @override
  String get learningBothSides => 'Abi pusės';

  @override
  String get learningHumansOnly => 'Tik žmonių ėjimai';

  @override
  String get learningHumanOnlyHelp =>
      'Išjungę įtrauksite kompiuterio ir nuotolinių žaidėjų ėjimus';

  @override
  String learningDecisionSummary(int decisions, int mistakes, int blunders) {
    return '$decisions sprendimų · $mistakes tobulintini · $blunders grubios klaidos';
  }

  @override
  String learningAverageLoss(int decisions, Object loss) {
    return 'Vidutinis praradimas ($decisions sprendimai): $loss';
  }

  @override
  String get learningForcedDisclaimer =>
      'Priverstiniai ėjimai neįtraukiami. Tai variklio įverčiai, ne turnyro reitingas.';

  @override
  String learningGamesNeedingAnalysis(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          '# išsaugotoms partijoms reikia analizės arba atnaujintos analizės.',
      one: '# išsaugotai partijai reikia analizės arba atnaujintos analizės.',
    );
    return '$_temp0';
  }

  @override
  String get learningAnalyseSavedGames => 'Analizuoti išsaugotas partijas';

  @override
  String get learningEmptyProfile =>
      'Sužaiskite ir užbaikite partiją, kad susidarytų jūsų mokymosi profilis. Taip pat galite išsaugoti atskirus sprendimus iš partijos pakartojimo.';

  @override
  String get learningOpenHistory => 'Atverti partijų istoriją';

  @override
  String get learningRecurringThemes => 'Pasikartojančios temos';

  @override
  String get learningNoThemes =>
      'Šiame pasirinkime pasikartojančių klaidų temų dar nėra.';

  @override
  String learningThemeDecisions(int count) {
    return '$count sprendimų, kuriuos verta pakartoti. Viena pozicija gali turėti kelias temas.';
  }

  @override
  String get learningSaveMistakes => 'Išsaugoti šias klaidas praktikai';

  @override
  String learningSavedMistakes(int count) {
    return 'Praktikos sąraše yra $count sprendimų. Esami įrašai nedubliuojami.';
  }

  @override
  String get learningSaveMistakesFailed =>
      'Nepavyko išsaugoti kai kurių sprendimų. Išsaugoti įrašai palikti; bandykite dar kartą.';

  @override
  String get learningSpacedPractice => 'Intervalinė praktika';

  @override
  String learningPracticeCounts(
    int due,
    int saved,
    int attempts,
    int successes,
  ) {
    return 'Dabar reikia: $due · išsaugota: $saved · bandymų: $attempts · sėkmingai prisiminta: $successes';
  }

  @override
  String get learningIntervalsHelp =>
      'Sėkmingos peržiūros vėl bus pateiktos po 1, 3, 7, 14 ir 30 dienų. Klaidos arba parodyti atsakymai grįš po 10 minučių. Ankstyvi pakartojimai intervalo nepailgina.';

  @override
  String get learningAnswerContext =>
      'Praktikos rezultatai atspindi jūsų atsakymus čia, net jei pradinė pozicija priklausė varžovui.';

  @override
  String get learningNoSavedPositions =>
      'Išsaugokite sprendimą iš peržiūros arba naudokite klaidų mygtuką aukščiau.';

  @override
  String learningPositionTitle(Object side, int gameId) {
    return '$side sprendimas · partija $gameId';
  }

  @override
  String learningReviewDue(Object date) {
    return 'Peržiūra $date';
  }

  @override
  String get learningReadyToReview => 'Paruošta peržiūrai';

  @override
  String learningSuccessStreak(int count) {
    return 'Sėkmingos peržiūros iš eilės: $count';
  }

  @override
  String get learningRemoveTooltip => 'Pašalinti išsaugotą sprendimą';

  @override
  String get learningRecentPractice => 'Naujausia praktika';

  @override
  String get learningAnswerRevealed => 'Atsakymas parodytas';

  @override
  String get learningSuccessfulRecall => 'Sėkmingas prisiminimas';

  @override
  String get learningTryAgain => 'Bandykite dar kartą';

  @override
  String learningAttemptSubtitle(Object date, int positionId) {
    return '$date · išsaugota pozicija $positionId';
  }

  @override
  String get learningRemoveTitle => 'Pašalinti šį pratimą?';

  @override
  String get learningRemoveBody =>
      'Bus pašalinti jo praktikos bandymai. Pradinė partija liks istorijoje.';

  @override
  String get actionRemove => 'Pašalinti';

  @override
  String get learningRemoveFailed => 'Nepavyko pašalinti šio pratimo.';

  @override
  String get learningResetTitle => 'Iš naujo nustatyti praktikos pažangą?';

  @override
  String get learningResetBody =>
      'Bus pašalinti visi praktikos bandymai ir peržiūros intervalai. Išsaugoti pratimai ir partijų istorija liks; visus pratimus reikės peržiūrėti iš karto.';

  @override
  String get learningResetAction => 'Nustatyti pažangą iš naujo';

  @override
  String get learningResetFailed =>
      'Nepavyko iš naujo nustatyti praktikos pažangos.';

  @override
  String learningAnalysisProgress(int completed, int failed) {
    return 'Išanalizuota partijų: $completed · nepasiekiama: $failed.';
  }

  @override
  String learningAnalysisComplete(int completed) {
    return 'Išanalizuota partijų: $completed.';
  }

  @override
  String learningAnalysisCompleteWithErrors(int completed, int failed) {
    return 'Išanalizuota $completed partijų; nepavyko išanalizuoti $failed. Bandykite dar kartą, kai variklis bus pasirengęs.';
  }

  @override
  String get learningThemeHitting => 'Kirtimas ir tempas';

  @override
  String get learningThemeSafety => 'Paliktos šaškės ir saugumas';

  @override
  String get learningThemePointMaking => 'Taškų sudarymas';

  @override
  String get learningThemePrime => 'Blokai ir užtvaros';

  @override
  String get learningThemeAnchor => 'Tvirtovės ir pabėgimas';

  @override
  String get learningThemeRace => 'Lenktynių efektyvumas';

  @override
  String get learningThemeBearOff => 'Šaškių nuėmimas';

  @override
  String get learningThemeBarEntry => 'Įėjimas nuo baro';

  @override
  String get learningThemeCube => 'Sprendimai dėl kubo';

  @override
  String get analysisCubeNoDouble => 'Nedvigubinti';

  @override
  String get analysisCubeDouble => 'Dvigubinti';

  @override
  String get analysisCubeTake => 'Priimti';

  @override
  String get analysisCubePass => 'Pasiduoti';

  @override
  String get learningAnalysisStarting => 'Analizuojamos išsaugotos partijos…';

  @override
  String get tutorCubelessEstimateScope =>
      '0-ply įvertis be kubo · rezultatas nežinomas';

  @override
  String get tutorLossPp => 'Praradimas pp';

  @override
  String get tutorLoss => 'Praradimas';

  @override
  String get scoreSheetNoMoves => 'Ėjimų nėra';

  @override
  String get tutorOptions => 'Mokymo parinktys';

  @override
  String get tutorCollapseTooltip => 'Sutraukti mokytoją';

  @override
  String get tutorExpandTooltip => 'Išplėsti mokytoją';

  @override
  String get onlineTitle => 'Žaidimas internetu';

  @override
  String get onlineUnassistedNote => 'Mokytojas nepadeda žaidžiant internetu.';

  @override
  String get onlineNotConfiguredTitle =>
      'Internetinis žaidimas nesukonfigūruotas';

  @override
  String get onlineNotConfiguredBody =>
      'Šiame leidime internetinis žaidimas nepasiekiamas.';

  @override
  String get onlineErrorNoMatch => 'Partija nerasta.';

  @override
  String get onlineErrorSeatTaken => 'Vieta jau užimta.';

  @override
  String get onlineErrorPermission => 'Neturite leidimo atlikti šio veiksmo.';

  @override
  String get onlineErrorGeneric =>
      'Nepavyko prisijungti prie internetinio žaidimo.';

  @override
  String get onlineMatchFinished => 'Partija baigta.';

  @override
  String get onlineEnterCodeError => 'Įveskite galiojantį kodą.';

  @override
  String get onlineOpponentShort => 'Varžovas';

  @override
  String get onlineMatchInProgress => 'Partija vyksta';

  @override
  String onlineResumePrompt(Object code) {
    return 'Žaidėte mačą $code. Tęsti?';
  }

  @override
  String get onlineRejoin => 'Prisijungti iš naujo';

  @override
  String get onlineForgetMatch => 'Pamiršti partiją';

  @override
  String get onlineCreateTitle => 'Sukurti internetinį žaidimą';

  @override
  String get onlineMatchLength => 'Mačo trukmė';

  @override
  String get onlineNoCubeTitle => 'Žaidimas be kubo';

  @override
  String get onlineNoCubeSubtitle => 'Žaidžiama be dvigubinimo kubo.';

  @override
  String get onlineCreate => 'Sukurti';

  @override
  String get onlineWaitingOpponent => 'Laukiama varžovo';

  @override
  String get onlineShareCode => 'Bendrinti kodą';

  @override
  String get onlineCopyCode => 'Kopijuoti kodą';

  @override
  String get onlineCodeCopied => 'Kodas nukopijuotas';

  @override
  String get onlineJoinTitle => 'Prisijungti prie žaidimo';

  @override
  String get onlineRoomCode => 'Kambario kodas';

  @override
  String get onlineJoin => 'Prisijungti';

  @override
  String get lanTitle => 'Žaisti netoliese';

  @override
  String get lanTabHost => 'Kurti kambarį';

  @override
  String get lanTabJoin => 'Prisijungti';

  @override
  String get lanUnassistedNote =>
      'Žaidžiant vietiniame tinkle mokytojas nepadeda. Po mačo peržiūrėkite ėjimus ir pasitreniruokite klaidas.';

  @override
  String get lanGameStartFailed =>
      'Nepavyko pradėti partijos. Kitas įrenginys gali bandyti prisijungti dar kartą.';

  @override
  String get lanHostPortInUse =>
      'Nepavyko pradėti prieglobos — prievadas jau naudojamas. Uždarykite kitas Backgammon Buddy kopijas ir bandykite vėl.';

  @override
  String get lanHostStartFailed =>
      'Nepavyko pradėti prieglobos. Patikrinkite „Wi-Fi“ ryšį ir bandykite dar kartą.';

  @override
  String get lanHostTitle => 'Kurti žaidimą';

  @override
  String get lanStartHosting => 'Pradėti prieglobą';

  @override
  String get lanHostHelp =>
      'Abu įrenginiai turi būti tame pačiame „Wi-Fi“ tinkle. Šis įrenginys meta kauliukus ir saugo rezultatą.';

  @override
  String get lanWaitingPlayerTitle => 'Laukiama žaidėjo';

  @override
  String get lanRoomCodeInfo =>
      'Pasakykite šį kodą kitam žaidėjui. Jis suteikia prieigą — programėlė jo nesiunčia tinklu.';

  @override
  String get lanWaitingPlayer => 'Laukiama žaidėjo…';

  @override
  String get lanStopHosting => 'Baigti prieglobą';

  @override
  String lanFindNearbyPort(int port) {
    return 'Paprašykite kito įrenginio ieškoti netoliese esančių žaidimų. Klausoma prievado $port.';
  }

  @override
  String get lanOnNetwork => 'Šiame tinkle';

  @override
  String get lanCopyAddress => 'Kopijuoti adresą';

  @override
  String get lanAddressCopied => 'Adresas nukopijuotas';

  @override
  String get lanScanHostTitle => 'Nuskaityti prieglobos įrenginį';

  @override
  String get lanScanHostHelp =>
      'Kitas įrenginys pagrindiniame ekrane rodo QR kodą. Jį nuskaičius automatiškai įrašomi adresas ir kambario kodas.';

  @override
  String get lanScanQr => 'Nuskaityti QR kodą';

  @override
  String get lanScannerUnavailable =>
      'Kamera arba jos leidimas nepasiekiami. Vietoj to įveskite adresą ir kambario kodą žemiau.';

  @override
  String get lanInvalidQr =>
      'Šis QR kodas nėra Backgammon Buddy žaidimas. Nuskaitykite kodą kitame įrenginyje.';

  @override
  String get lanScannerFailed =>
      'Nepavyko atverti skaitytuvo. Įveskite adresą ir kodą žemiau.';

  @override
  String get lanNearbyGames => 'Netoliese esantys žaidimai';

  @override
  String get lanSearching => 'Ieškoma netoliese esančių žaidimų…';

  @override
  String get lanNoGamesFound =>
      'Žaidimų dar nerasta. Patikrinkite, ar kitas įrenginys kuria žaidimą ir abu naudoja tą patį „Wi-Fi“, arba įveskite jo adresą.';

  @override
  String get lanStillSearching => 'Vis dar ieškoma…';

  @override
  String get lanEnterAddress => 'Įvesti adresą';

  @override
  String get lanEnterAddressHelp =>
      'Automatinė paieška veikia ne visuose tinkluose (iOS ji gali būti visiškai blokuojama). Pagrindiniame ekrane rasite adresą, kurį reikia įvesti.';

  @override
  String get lanIpAddress => 'IP adresas';

  @override
  String get lanPort => 'Prievadas';

  @override
  String get lanInvalidPort => 'Įveskite prievadą nuo 1 iki 65535.';

  @override
  String get lanEnterAddressError =>
      'Įveskite kitame įrenginyje rodomą adresą.';

  @override
  String get lanEnterRoomCodeError =>
      'Įveskite kitame įrenginyje rodomą 4 skaitmenų kodą.';

  @override
  String get lanJoinWrongCode =>
      'Neteisingas kambario kodas. Patikrinkite keturis skaitmenis kitame įrenginyje.';

  @override
  String get lanJoinVersionMismatch =>
      'Kitame įrenginyje veikia kita Backgammon Buddy versija.';

  @override
  String get lanJoinHandshakeFailed =>
      'Įrenginys atsakė netinkamai. Patikrinkite adresą ir prievadą.';

  @override
  String get lanJoinFailed =>
      'Nepavyko prisijungti. Patikrinkite adresą ir kambario kodą, tada bandykite dar kartą.';

  @override
  String lanJoinTarget(Object name) {
    return 'Prisijungti: $name';
  }

  @override
  String get lanJoinTargetHelp =>
      'Įveskite kitame įrenginyje rodomą 4 skaitmenų kodą.';

  @override
  String lanJoiningTarget(Object name) {
    return 'Jungiamasi prie $name';
  }

  @override
  String get lanConnect => 'Prisijungti';

  @override
  String get lanBack => 'Atgal';

  @override
  String get lanTryAgain => 'Bandyti dar kartą';

  @override
  String get lanStatusBusy => 'Kambarys užimtas — laukiama…';

  @override
  String get lanStatusReconnecting => 'Ryšys nutrūko — bandoma iš naujo…';

  @override
  String get lanStatusConnected => 'Prisijungta — pradedamas mačas…';

  @override
  String get lanStatusFailed => 'Nepavyko prisijungti.';

  @override
  String get lanStatusConnecting => 'Jungiamasi…';

  @override
  String get diagnosticsCopySuccess => 'Diagnostikos nukopijuotos į iškarpinę';

  @override
  String get diagnosticsReviewTitle => 'Peržiūrėti diagnostikos ataskaitą';

  @override
  String get diagnosticsPrivacyNotice =>
      'Atidarius juodraštį, toliau pateikta informacija bus siunčiama į GitHub: programos versija, platforma ir klaidų informacija. Vieša problema nebus paskelbta, kol jos nepateiksite ten. Jei informacijoje yra privačių duomenų, atšaukite ir naudokite kopijavimą ataskaitai paruošti patys.';

  @override
  String get diagnosticsCancel => 'Atšaukti';

  @override
  String get diagnosticsOpenGitHub => 'Atidaryti GitHub';

  @override
  String get diagnosticsTitle => 'Diagnostika';

  @override
  String get diagnosticsReportTooltip => 'Pranešti apie problemą GitHub';

  @override
  String get diagnosticsCopyTooltip => 'Kopijuoti į iškarpinę';

  @override
  String get diagnosticsClearTooltip => 'Išvalyti žurnalą';

  @override
  String get diagnosticsEmpty =>
      'Klaidų neužregistruota.\n\nJei kas nors nutiks, informacija bus įrašyta čia — sugrįžkite ir nukopijuokite ją į klaidos ataskaitą.';

  @override
  String gameHudNeutralScore(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore–$blackScore $blackLabel · iki $matchLength';
  }

  @override
  String gameHudPlayerScore(
    Object you,
    int mine,
    int theirs,
    Object opponent,
    int matchLength,
  ) {
    return '$you $mine–$theirs $opponent · iki $matchLength';
  }

  @override
  String get gameHudYou => 'Jūs';

  @override
  String get gameHudAi => 'Kompiuteris';

  @override
  String gameHudGameNumber(int number) {
    return '$number partija';
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
    return '$whiteLabel prieš $blackLabel · $pipsLabel $whitePips–$blackPips';
  }

  @override
  String gameHudOpponentDetail(
    Object opponent,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'prieš $opponent · $pipsLabel $mine–$theirs';
  }

  @override
  String gameHudOpponentDetailWithLevel(
    Object opponent,
    Object level,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'prieš $opponent · $level · $pipsLabel $mine–$theirs';
  }

  @override
  String get gameHudPips => 'Pipai';

  @override
  String get gameHudCrawford => 'Crawfordo';

  @override
  String get gameHudDouble => 'Dvigubinti';

  @override
  String get gameHudMoreActions => 'Daugiau veiksmų';

  @override
  String get gameHudSurrender => 'Pasiduoti…';

  @override
  String get gameHudThinking => 'Galvoja';

  @override
  String get gameHudDoubleBeforeRoll =>
      'Dvigubinti galima tik prieš metimą, savo ėjimo metu.';

  @override
  String get gameHudNoDoubleCrawford =>
      'Crawfordo partijoje dvigubinti negalima — ši partija nulemia mačą.';

  @override
  String get gameHudOnlyCubeOwner =>
      'Dvigubinti gali tik kubo savininkas; šiuo metu kubas priklauso kitai pusei.';

  @override
  String get gameHudDoubleUnavailable => 'Dvigubinimas dabar negalimas.';

  @override
  String gameDialogScoreLine(
    Object whiteLabel,
    int whiteScore,
    int blackScore,
    Object blackLabel,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore — $blackScore $blackLabel (iki $matchLength)';
  }

  @override
  String gameDialogPlayerWon(Object winner, Object points) {
    return '$winner laimi šią partiją ($points).';
  }

  @override
  String gameDialogPlayerWonGammon(Object winner, Object points) {
    return '$winner laimi šią partiją ($points, gammon).';
  }

  @override
  String gameDialogPlayerWonBackgammon(Object winner, Object points) {
    return '$winner laimi šią partiją ($points, backgammon).';
  }

  @override
  String gameDialogPlayerWonDrop(Object winner, Object points, Object loser) {
    return '$winner laimi šią partiją ($points) — $loser atsisakė dvigubinimo.';
  }

  @override
  String gameDialogPlayerWonResignation(
    Object winner,
    Object points,
    Object loser,
  ) {
    return '$winner laimi šią partiją ($points) — $loser pasidavė.';
  }

  @override
  String get gameDialogPassDeviceTitle => 'Perduokite įrenginį';

  @override
  String gameDialogPlayersTurn(Object name) {
    return 'Dabar $name ėjimas';
  }

  @override
  String get gameDialogTapToContinue => 'Palieskite, kad tęstumėte';

  @override
  String get gameDialogCubeOfferedTitle => 'Pasiūlytas dvigubinimas';

  @override
  String gameDialogCubeOfferMessage(
    Object doubler,
    int value,
    Object tutorLine,
  ) {
    return '$doubler siūlo padvigubinti iki $value. Priimti ar atsisakyti?$tutorLine';
  }

  @override
  String get gameDialogPass => 'Atsisakyti';

  @override
  String get gameDialogTake => 'Priimti';

  @override
  String get gameDialogResignationTitle => 'Pasiūlytas pasidavimas';

  @override
  String gameDialogResignationMessage(Object resigner, Object value) {
    return '$resigner siūlo pasiduoti su $value. Priimti ar atmesti?';
  }

  @override
  String get gameDialogResignSingle => 'viena partija';

  @override
  String get gameDialogResignGammon => 'gammon';

  @override
  String get gameDialogResignBackgammon => 'backgammon';

  @override
  String get gameDialogDecline => 'Atmesti';

  @override
  String get gameDialogAccept => 'Priimti';

  @override
  String get gameDialogGameOverTitle => 'Partija baigta';

  @override
  String get gameDialogNextGame => 'Kita partija';

  @override
  String get gameDialogMatchOverTitle => 'Mačas baigtas';

  @override
  String get gameDialogNobody => 'Niekas';

  @override
  String gameDialogMatchWinner(Object winner) {
    return '$winner laimi mačą.';
  }

  @override
  String get gameDialogSavedToHistory => 'Išsaugota istorijoje';

  @override
  String get gameDialogDone => 'Baigti';

  @override
  String get gameTapNoLegalMove =>
      'Bakstelėkite savo šaškę, kad pamatytumėte galimus ėjimus.';

  @override
  String get gameTapNoLegalMoveUndo =>
      'Bakstelėkite šaškę, tada paskirties vietą.';

  @override
  String get gameDragHint => 'Vilkite šaškę į paskirties vietą.';

  @override
  String get commonGotIt => 'Supratau';

  @override
  String get gameHintStageBeforeHint => 'Prieš užuominą';

  @override
  String get surrenderTitle => 'Pasiduoti partiją?';

  @override
  String surrenderNamedConcedes(String player) {
    return '$player pasiduoda šioje partijoje.';
  }

  @override
  String get surrenderConcedes => 'Pasiduoda šioje partijoje.';

  @override
  String surrenderAvailableAtNamedTurn(String player) {
    return 'Galima pradėti $player ėjimą';
  }

  @override
  String get surrenderAvailableAtYourTurn => 'Galima pradėti jūsų ėjimą';

  @override
  String get commonCancel => 'Atšaukti';

  @override
  String get surrenderSingle => 'Paprastas pralaimėjimas';

  @override
  String get surrenderGammon => 'Gamono pralaimėjimas';

  @override
  String get surrenderBackgammon => 'Backgammono pralaimėjimas';

  @override
  String get surrenderChoosePlayer => 'Pasirinkite žaidėją';

  @override
  String get commonDone => 'Atlikta';

  @override
  String get cubeDouble => 'Dvigubinti';

  @override
  String get cubeBlockedOtherPlayersTurn => 'Dabar varžovo ėjimas.';

  @override
  String get cubeBlockedCrawford => 'Krawfordo partijoje kubas negalimas.';

  @override
  String get cubeBlockedOwnedByOther =>
      'Dvigubinti gali tik kubo savininkas; dabar jį turi varžovas.';

  @override
  String get cubeBlockedUnavailable => 'Dvigubinimas dabar negalimas.';

  @override
  String get gameStatusRolling => 'Metama';

  @override
  String get gameStatusThinking => 'Kompiuteris mąsto';

  @override
  String gameStatusPlayersTurn(String player) {
    return '$player ėjimas';
  }

  @override
  String get cubeAdviceOpponentTake => 'Dvigubinti — varžovas turėtų priimti';

  @override
  String get cubeAdviceOpponentPass => 'Dvigubinti — varžovas turėtų pasiduoti';

  @override
  String gameErrorBannerLabel(Object error) {
    return 'Klaida: $error';
  }

  @override
  String get privacyTitle => 'Privatumas ir duomenys';

  @override
  String get privacyAppTitle => 'Freevia Backgammon Buddy';

  @override
  String get privacyIntro =>
      'Šiame puslapyje aprašoma, kaip ši programėlė tvarko jūsų duomenis.';

  @override
  String get privacyLocalTitle => 'Žaidimai ir mokymas jūsų įrenginyje';

  @override
  String get privacyLocalBody =>
      'Vietinės partijos, nustatymai, analizė ir treniruočių pažanga saugomi šiame įrenginyje. Čia veikia backgammon variklis ir mokytojo paaiškinimai. Ištrynus išsaugotą partiją iš istorijos, pašalinamos ir jos išsaugotos treniruotės bei bandymai. Atskirą pratimą ištrinkite arba iš naujo nustatykite mokymosi pažangą skiltyje „Mokymasis“; vietines klaidų ataskaitas išvalykite skiltyje „Nustatymai“ → „Diagnostika“. Įrenginio atsarginės kopijos nustatymai taip pat gali apimti partijų istoriją. Internetinio prisijungimo duomenys laikomi saugioje įrenginio saugykloje.';

  @override
  String get privacyOnlineTitle => 'Žaidimas internetu ir netoliese';

  @override
  String get privacyOnlineBody =>
      'Žaidžiant internetu „Google Firebase“ siunčiamas anoniminis žaidėjo identifikatorius, partijos nustatymai, ėjimai ir kauliukų suderinimo įrašai, kad abu žaidėjai galėtų žaisti tą pačią partiją. Ištrynus istoriją šiame įrenginyje, internetiniai įrašai neištrinami. Priglobtos partijos baigia galioti praėjus 30 dienų nuo sukūrimo; suplanuotas valymas pašalina jų debesijos žurnalus. Partijų įrašai saugomi ES; „Firebase Authentication“ prisijungimo duomenis tvarko Jungtinėse Valstijose. Interneto ryšys su „Google“ šifruojamas perduodant duomenis. Žaidžiant netoliese, informacija su kitu įrenginiu perduodama nešifruotu vietiniu ryšiu; naudokite patikimą „Wi-Fi“.';

  @override
  String get privacyDiagnosticsTitle =>
      'Pasirenkama naudojimo ir strigčių diagnostika';

  @override
  String get privacyDiagnosticsBody =>
      'Bendrinimas išjungtas, kol jo nepasirinksite nustatymuose. Įjungus „Google Firebase“ gauna naudojimo įvykius, programėlės ir įrenginio informaciją, našumo matavimus bei strigčių ataskaitas, kad padėtų tobulinti programėlę. Bendrinimą galite bet kada išjungti ir sustabdyti naują pasirenkamą duomenų rinkimą. Anksčiau išsiųsti duomenys neištrinami. Vietinė diagnostika ir internetinės partijos veikia nepriklausomai nuo šio pasirinkimo.';

  @override
  String get privacyCameraTitle => 'Kamera netoliese esantiems QR kodams';

  @override
  String get privacyCameraBody =>
      'Pasirenkama kamera nuskaito netoliese esančių žaidimų QR kodus. Vaizdai apdorojami įrenginyje, neišsaugomi ir neįkeliami. Galite neleisti naudoti kameros ir rankiniu būdu įvesti pagrindinio įrenginio adresą. Šioje versijoje nenaudojamas mikrofonas ir negalima žaisti su fizine lenta.';

  @override
  String get privacyFeedbackTitle => 'Jūsų siunčiami atsiliepimai';

  @override
  String get privacyFeedbackBody =>
      'Atsiliepimas atveria „GitHub“ problemos juodraštį, kad galėtumėte jį peržiūrėti. Atvėrus juodraštį, „GitHub“ siunčiama programėlės versija ir platforma; atsiliepime iš diagnostikos taip pat gali būti klaidų duomenų. Problema paskelbiama tik jums ją pateikus. Problemos gali būti viešos, todėl prieš siųsdami pašalinkite privačią informaciją.';

  @override
  String get privacyContactTitle => 'Privatumo kontaktai';

  @override
  String get privacyReadPolicy => 'Skaityti privatumo politiką';

  @override
  String get privacyPolicyOpenFailed =>
      'Nepavyko atidaryti privatumo politikos.';

  @override
  String get privacySupportTitle => 'Pagalba ir palaikymas';

  @override
  String get privacySupportOpenFailed =>
      'Nepavyko atidaryti pagalbos. Susisiekite adresu support@freevia.org.';

  @override
  String get privacyDeleteConfirmTitle =>
      'Ištrinti internetinę tapatybę ir duomenis?';

  @override
  String get privacyDeleteConfirmBody =>
      'Tai iš karto panaikina šios tapatybės prieigą prie debesijos partijų abiem žaidėjams ir pateikia prašymą per 30 dienų ištrinti tapatybę bei bendrinamus internetinių partijų žurnalus. „Google“ gali užtrukti iki 180 dienų po paskyros ištrynimo, kol pašalins „Authentication“ duomenis iš veikiančių ir atsarginių sistemų. Vietinė istorija ir treniruotės liks šiame įrenginyje. Anksčiau siųsta pasirenkama diagnostika tvarkoma atskirai; dėl jos kreipkitės privacy@freevia.org. Šio prašymo atšaukti negalima.';

  @override
  String get privacyRequestDeletion => 'Prašyti ištrinti';

  @override
  String get privacyDeleteSectionTitle => 'Internetinių duomenų ištrynimas';

  @override
  String get privacyDeleteInstructions =>
      'Nuosavybei patvirtinti naudokite šiame įrenginyje išsaugotą prisijungimą. Vien žaidėjo identifikatorius ar kvietimo kodas nuosavybės neįrodo. Tik vietiniu režimu žaidžiantiems internetinės paskyros nereikia.';

  @override
  String get privacySendingRequest => 'Siunčiama užklausa…';

  @override
  String get privacyDeleteAction => 'Ištrinti internetinę tapatybę ir duomenis';

  @override
  String get privacyDeleteRequested =>
      'Pateiktas prašymas ištrinti. Ši internetinė tapatybė atjungta. Jos debesijos duomenys bus ištrinti per 30 dienų. Vėl pradėjus žaisti internetu bus sukurta nauja tapatybė. „Google“ Authentication duomenims pašalinti gali prireikti iki 180 dienų. Pagalbos kreipkitės privacy@freevia.org.';

  @override
  String get privacyDeleteRequestedSignOutFailed =>
      'Pateiktas prašymas ištrinti; debesijos duomenys bus ištrinti per 30 dienų. Įrenginiui nepavyko išvalyti išsaugoto prisijungimo, tačiau internetinei tapatybei užblokuota prieiga prie partijų. „Google“ Authentication duomenims pašalinti gali prireikti iki 180 dienų. Kreipkitės privacy@freevia.org.';

  @override
  String get privacyDeleteNoIdentity =>
      'Šiame įrenginyje nėra išsaugotos tinkamos internetinės tapatybės. Nauja paskyra nesukurta. Jei anksčiau žaidėte internetu, kreipkitės privacy@freevia.org; priglobtos partijos baigia galioti po 30 dienų.';

  @override
  String get privacyDeleteRequestFailed =>
      'Nepavyko patvirtinti ištrynimo prašymo. Patikrinkite ryšį ir bandykite dar kartą arba kreipkitės privacy@freevia.org.';

  @override
  String get privacyConsentTitle =>
      'Bendrinti naudojimo ir strigčių diagnostiką?';

  @override
  String get privacyConsentBody =>
      'Į „Google Firebase“ siunčiami naudojimo įvykiai, programėlės ir įrenginio informacija, strigčių ataskaitos bei našumo matavimai. Bendrinimas neprivalomas. Žaidimai ir mokymas veikia ir be jo; nustatymuose galite jį vėl išjungti.';

  @override
  String get privacyKeepOff => 'Palikti išjungtą';

  @override
  String get privacyShareDiagnostics => 'Bendrinti diagnostiką';

  @override
  String get privacySaveFailed =>
      'Nepavyko išsaugoti privatumo pasirinkimo. Bandykite dar kartą.';

  @override
  String get privacySettingsSubtitle =>
      'Kas lieka jūsų įrenginyje ir kas bendrinama';

  @override
  String get privacyDiagnosticsSettingTitle =>
      'Bendrinti naudojimo ir strigčių diagnostiką';

  @override
  String get privacyDiagnosticsSettingSubtitle =>
      'Pasirenkama · pagal numatytuosius nustatymus išjungta';

  @override
  String get lanScanToJoin => 'Nuskaityti ir prisijungti';

  @override
  String get lanScanHostCode => 'Nuskaityti pagrindinio įrenginio kodą';

  @override
  String get lanEnterAddressInstead => 'Vietoj to įveskite adresą';

  @override
  String get lanQrAccessibilityLabel =>
      'QR kodas, skirtas prisijungti prie šio žaidimo';

  @override
  String get lanJoinInstruction =>
      'Kitame įrenginyje atidarykite „Žaisti netoliese“, pasirinkite „Prisijungti“ ir nuskaitykite šį QR kodą.';

  @override
  String get lanTorch => 'Žibintuvėlis';

  @override
  String get lanCameraPermissionDenied =>
      'Backgammon Buddy negali naudoti kameros. Suteikite prieigą įrenginio nustatymuose arba įveskite adresą, rodomą kitame įrenginyje.';

  @override
  String get lanCameraUnsupported =>
      'Šis įrenginys negali nuskaityti QR kodų. Įveskite adresą, rodomą kitame įrenginyje.';

  @override
  String get lanCameraStartFailed =>
      'Nepavyko paleisti kameros. Įveskite adresą, rodomą kitame įrenginyje.';

  @override
  String get lanPointCameraAtQr =>
      'Nukreipkite kamerą į QR kodą kitame įrenginyje.';

  @override
  String get physicalBuddyUnavailableTitle => 'Žaidimas su fizine lenta';

  @override
  String get physicalBuddyUnavailableBody =>
      'Šioje versijoje negalima žaisti su fizine lenta. Žaidimai ekrane, mokymas ir treniruotės pasiekiami pagrindiniame ekrane.';

  @override
  String get homePlayWithBuddy => 'Žaisti su Buddy';

  @override
  String get homeBuddyShort => 'Buddy';

  @override
  String boardSemanticsLabel(Object status) {
    return 'Backgammon lenta. $status';
  }

  @override
  String get boardWhiteToRoll => 'Baltieji meta kauliukus.';

  @override
  String get boardBlackToRoll => 'Juodieji meta kauliukus.';

  @override
  String boardWhiteToMove(Object die1, Object die2) {
    return 'Baltieji turi ėjimą, meskite $die1 ir $die2.';
  }

  @override
  String boardBlackToMove(Object die1, Object die2) {
    return 'Juodieji turi ėjimą, meskite $die1 ir $die2.';
  }

  @override
  String get boardDoubleOffered => 'Pasiūlytas dvigubinimas.';

  @override
  String get boardResignationOffered => 'Pasiūlyta pasiduoti.';

  @override
  String get boardGameOver => 'Žaidimas baigtas.';

  @override
  String feedbackBugTitle(Object version, Object platform) {
    return '[Klaida]: Backgammon Buddy $version ($platform)';
  }

  @override
  String get feedbackIdeaTitle => '[Idėja]: Backgammon Buddy';

  @override
  String get feedbackBugSummary => 'Trumpai aprašykite, kas nutiko.';

  @override
  String get feedbackBugReproduction =>
      'Aprašykite veiksmus, po kurių kilo problema.';

  @override
  String get feedbackBugExpected => 'Aprašykite, ko tikėjotės.';

  @override
  String get feedbackIdeaNeed => 'Aprašykite, ką norėjote padaryti ar išmokti.';

  @override
  String get feedbackIdeaSuggestion =>
      'Aprašykite, koks pakeitimas būtų naudingas.';

  @override
  String get feedbackExcerptTruncated =>
      '(sutrumpinta — visą žurnalą nukopijuokite diagnostikos ekrane pasirinkę „Kopijuoti į iškarpinę“)';

  @override
  String get boardWhiteToMoveNoRoll => 'Baltųjų ėjimas.';

  @override
  String get boardBlackToMoveNoRoll => 'Juodųjų ėjimas.';

  @override
  String get feedbackFieldVersion => 'Programėlės versija';

  @override
  String get feedbackFieldPlatform => 'Platforma';

  @override
  String get feedbackFieldSummary => 'Kas nutiko';

  @override
  String get feedbackFieldReproduction => 'Veiksmai problemai atkartoti';

  @override
  String get feedbackFieldExpected => 'Tikėtas rezultatas';

  @override
  String get feedbackFieldNeed => 'Ką norėjote padaryti';

  @override
  String get feedbackFieldIdea => 'Siūlomas pakeitimas';
}
