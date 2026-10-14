// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Estonian (`et`).
class AppLocalizationsEt extends AppLocalizations {
  AppLocalizationsEt([String locale = 'et']) : super(locale);

  @override
  String get homeTagline => 'Arenda oma mängu juhendajaga';

  @override
  String get settings => 'Seaded';

  @override
  String get playVsComputer => 'Mängi arvuti vastu';

  @override
  String get twoPlayers => 'Kaks mängijat';

  @override
  String get playNearby => 'Mängi läheduses';

  @override
  String get playOnline => 'Mängi võrgus';

  @override
  String get learningPractice => 'Õpi ja harjuta';

  @override
  String get gamesArchive => 'Mängude arhiiv';

  @override
  String get followSystem => 'Kasuta seadme keelt';

  @override
  String get white => 'Valge';

  @override
  String get black => 'Must';

  @override
  String get random => 'Juhuslik';

  @override
  String get startMatch => 'Alusta mängu';

  @override
  String get tutor => 'Juhendaja';

  @override
  String get noMovesPass => 'Käike pole — jäta vahele';

  @override
  String get undo => 'Võta tagasi';

  @override
  String get confirm => 'Kinnita';

  @override
  String get roll => 'Viska';

  @override
  String get hint => 'Vihje';

  @override
  String get tutoringStyle => 'Õpetamisstiil';

  @override
  String get tutorStyleCoach => 'Treener';

  @override
  String get tutorStyleHintsOnly => 'Ainult vihjed';

  @override
  String get tutorStyleTryFirst => 'Proovi kõigepealt';

  @override
  String get tutorCoachDescription =>
      'Positsioonijuhised, tagasiside käikude kohta, vihjed ja kahekordistamiskuubi nõuanded.';

  @override
  String get tutorHintsDescription =>
      'Käikude järjestus kuvatakse soovi korral. Reaalajas positsioonijuhised ja automaatne tagasiside käikude kohta on väljas.';

  @override
  String get tutorTryFirstDescription =>
      'Tee oma käik enne, kui näed järjestatud vihjeid või hinnangut; positsioonijuhised jäävad sisse.';

  @override
  String get tutorCustomDescription =>
      'Kohandatud segu. Muuda allpool mis tahes valikut.';

  @override
  String get tutorBestMoveHints => 'Parima käigu vihjed';

  @override
  String get tutorRevealRankedPlays => 'Näita valimise ajal järjestatud käike';

  @override
  String get tutorMoveExplanations => 'Käikude selgitused';

  @override
  String get tutorCompareEstimates =>
      'Võrdle hinnanguid ja laual toimunud muutusi';

  @override
  String get tutorGameCommentary => 'Mängukommentaar';

  @override
  String get tutorPositionPrompts =>
      'Positsioonijuhised ja tagasiside pärast iga käiku';

  @override
  String get tutorCubeAdvice => 'Kuubi nõuanded';

  @override
  String get tutorMatchAwareCubeAdvice =>
      'Mänguseisu arvestavad soovitused kahekordistamiseks, võtmiseks ja loobumiseks';

  @override
  String get tutorTryMoveFirst => 'Proovi enne käiku';

  @override
  String get tutorStageBeforeHints =>
      'Tee praegune käik enne vihjete või hinnangu näitamist';

  @override
  String get tutorStaticEstimateNote =>
      'Kiire staatiline hinnang (0 käiku ette, ilma simulatsioonideta); märkused kirjeldavad laual toimunud muutusi ja võimalikke vastuseid, mitte ei luba, mis järgmisena juhtub.';

  @override
  String get tutorWhatToWatchNext => 'Mida järgmisena jälgida';

  @override
  String get tutorMoreBoardDetails => 'Rohkem infot laua kohta';

  @override
  String get tutorEstimatesAndHowTheyWork => 'Hinnangud ja nende toimimine';

  @override
  String get tutorEstimateLimitations =>
      'Sügavus: staatiline närvivõrgu hinnang pärast iga lubatud käiku (0 käiku ette), ilma simulatsioonide või tulevaste vastuste otsinguta. MWC arvestab tulemuse hinnangute kaalumisel matši seisu ja praegust kuupi, kuid ei modelleeri tulevasi kuubiotsuseid. Kui skoor pole saadaval, on kuubita equity eeldatav punktisumma kuubiga 1. Laua tähelepanekud kirjeldavad käiku, mitte närvivõrgu sisemist arutluskäiku. Peaaegu võrdsed hinnangud ei tähenda kindlust; kalibreeritud usaldusvahemikku ei ole.';

  @override
  String get tutorPointNumberNote =>
      'Õppemärkmete punktinumbreid loetakse käigul oleva mängija kodulaua poolt.';

  @override
  String get tutorHittingRollNote =>
      'Löögivõimaluste arv hõlmab kõiki 36 järjestatud täringutulemust ning lubatud otseseid ja kaudseid lööke; need on võimalused, mitte vastase valiku ennustus.';

  @override
  String get tutorNoEvaluatedAlternatives =>
      'Selle käigu kohta pole hinnatud alternatiive.';

  @override
  String get tutorForcedPassNoDecision =>
      'Sunnitud pass ei hõlma nuppude käiguvalikut.';

  @override
  String get settingsReset => 'Lähtesta';

  @override
  String get settingsAppLanguage => 'Rakenduse keel';

  @override
  String get settingsTheme => 'Välimus';

  @override
  String get settingsThemeSystem => 'Süsteemi järgi';

  @override
  String get settingsThemeLight => 'Hele';

  @override
  String get settingsThemeDark => 'Tume';

  @override
  String get settingsAnimationSpeed => 'Animatsiooni kiirus';

  @override
  String get settingsAnimationNone => 'Puudub';

  @override
  String get settingsAnimationNormal => 'Tavaline';

  @override
  String get settingsAnimationFast => 'Kiire';

  @override
  String get settingsDiceRollAnimation => 'Täringuviske animatsioon';

  @override
  String get settingsDiceRollAnimationHelp =>
      'Täringud veerevad enne iga viset';

  @override
  String get settingsDefaultMatchLength => 'Matši vaikepikkus';

  @override
  String get settingsDefaultDifficulty => 'Vaikeraskus';

  @override
  String get settingsDifficultyEasy => 'Kerge';

  @override
  String get settingsDifficultyMedium => 'Keskmine';

  @override
  String get settingsDifficultyHard => 'Raske';

  @override
  String get settingsDifficultyExpert => 'Ekspert';

  @override
  String get settingsTutorModeDefault => 'Juhendaja vaikeseade';

  @override
  String get settingsTutorAuto => 'Automaatne';

  @override
  String get settingsTutorOn => 'Sees';

  @override
  String get settingsTutorOff => 'Väljas';

  @override
  String get settingsTutorModeHelp =>
      'Automaatne lülitab juhendaja sisse igal arvuti raskusastmel. Sees ja väljas määravad kohalike matšide algse valiku. Läheduses ja võrgus mängides abi ei anta; salvestatud mänge saab hiljem üle vaadata. Õpetamiseelistused salvestatakse selles seadmes.';

  @override
  String get settingsTutorPreferences => 'Juhendaja eelistused';

  @override
  String get settingsTutorPreferencesSubtitle =>
      'Vaikesätted tulevaste matšide jaoks';

  @override
  String get settingsTutorSaveError =>
      'Juhendaja eelistusi ei saanud salvestada.';

  @override
  String get settingsGameplay => 'Mängimine';

  @override
  String get settingsMoveHighlights => 'Käigu esiletõstmine';

  @override
  String get settingsMoveHighlightsHelp =>
      'Ümbritse valitavad nupud ja tõsta sihtkohad esile';

  @override
  String get settingsDragToMove => 'Lohista liigutamiseks';

  @override
  String get settingsDragToMoveHelp =>
      'Lohista nupp sihtkohta (puudutamine töötab alati)';

  @override
  String get settingsCombinedMoves => 'Ühendatud käigud';

  @override
  String get settingsCombinedMovesHelp =>
      'Ühe puudutusega liigub nupp mõlema täringu järgi';

  @override
  String get settingsRotateBoard => 'Pööra lauda käikude vahel';

  @override
  String get settingsRotateBoardHelp =>
      'Mitmekesi ühel seadmel: pööra vaade aktiivse mängija järgi';

  @override
  String get settingsPassDevice => 'Anna seade edasi';

  @override
  String get settingsPassDeviceHelp =>
      'Peida laud kordamööda mängijate vahetumisel';

  @override
  String get settingsShowScore => 'Näita skoori';

  @override
  String get settingsShowScoreHelp => 'Kuva päises matši jooksev skoor';

  @override
  String get settingsBuddyMode => 'Buddy kõneviis';

  @override
  String get settingsBuddyTerse => 'Lühike';

  @override
  String get settingsBuddyFriendly => 'Sõbralik';

  @override
  String get settingsBuddyTerseHelp =>
      'Kuidas Buddy käiku ette loeb: „13/8, 24/22” – märgistus, mida mängijad laua taga kasutavad.';

  @override
  String get settingsBuddyFriendlyHelp =>
      'Kuidas Buddy käiku ette loeb: „Liiguta üks nupp 13-lt 8-le ja teine 24-lt 22-le.”';

  @override
  String get settingsListenForDice => 'Kuula täringuid';

  @override
  String get settingsListenForDiceHelp =>
      'Buddy reageerib lauale kiiremini, kui kuuleb viset. Väljalülitamine ei muuda muud.';

  @override
  String get settingsDiagnostics => 'Diagnostika';

  @override
  String get settingsErrorLog => 'Tõrkelogi';

  @override
  String get settingsErrorLogHelp =>
      'Hiljutised tõrked, mida saab veateatesse kopeerida';

  @override
  String get settingsReportBug => 'Teata veast';

  @override
  String get settingsReportBugHelp => 'Ava GitHubis juhendatud veateade';

  @override
  String get settingsSuggestIdea => 'Paku ideed';

  @override
  String get settingsSuggestIdeaHelp =>
      'Aita meil juhendajat ja mängu paremaks teha';

  @override
  String get settingsAbout => 'Teave';

  @override
  String get settingsOpenSourceLicenses => 'Avatud lähtekoodi litsentsid';

  @override
  String settingsAppVersion(Object version) {
    return 'Backgammon Buddy $version';
  }

  @override
  String get tutorPhraseGameFinished => 'Mäng on läbi.';

  @override
  String get tutorPhraseReviewFinishedGame =>
      'Vaata käigud üle ja leia harjutamist vääriv otsus.';

  @override
  String get tutorPhraseCubeOffered => 'Kahekordistamiskuup on pakutud.';

  @override
  String get tutorPhraseCubeDecisionPrompt =>
      'Otsusta, kas võtta või loobuda, enne kui kavandad nuppude käiku.';

  @override
  String get tutorPhraseCubeScoreContext =>
      'Matši skoor muudab lisapanuse väärtust.';

  @override
  String get tutorPhraseResignationOffered => 'Loobumist on pakutud.';

  @override
  String get tutorPhraseResignationDecisionPrompt =>
      'Võrdle pakutud punkte seisuga, enne kui loobumise vastu võtad või jätkad.';

  @override
  String get tutorPhraseNoLegalPlay => 'Selle viskega pole lubatud käiku.';

  @override
  String get tutorPhraseForcedPassPrompt =>
      'Sunnitud pass pole viga; oota järgmist viset.';

  @override
  String get tutorPhraseOnlyOneResult => 'Ainult üks lubatud lõppseis.';

  @override
  String get tutorPhraseForcedTurnPrompt =>
      'Tee sunnitud käik. Selle viske eest pole valikut hinnata.';

  @override
  String get tutorPhrasePipCountsLevel => 'Pipide arv on võrdne.';

  @override
  String tutorPhrasePipCountsAhead(int count) {
    return 'Sul on $count pipi edumaa.';
  }

  @override
  String tutorPhrasePipCountsBehind(int count) {
    return 'Jääd maha $count pipiga.';
  }

  @override
  String tutorPhrasePlayerHasCheckersOnBar(int count) {
    return 'Laual on $count nuppu: kõigepealt tuleb need sisse tuua.';
  }

  @override
  String get tutorPhraseEnterBeforeMoving =>
      'Too nupp enne teisi käike sisse ja otsi siis turvalist maandumiskohta.';

  @override
  String tutorPhraseOpponentHomePoints(int count) {
    return 'Vastasel on kodulaual $count suletud punkti.';
  }

  @override
  String get tutorPhraseBearOffRace => 'Mahavõtmise võidujooks.';

  @override
  String get tutorPhrasePureRace => 'Puhas võidujooks.';

  @override
  String get tutorPhraseBearOffSpread =>
      'Vii nuppe maha, jättes järgmise viske jaoks kasuliku jaotuse.';

  @override
  String get tutorPhraseBringRearCheckersHome =>
      'Too tagumised nupud koju, kuhjamata neid liigselt ühele punktile.';

  @override
  String get tutorPhraseArmiesHavePassed =>
      'Mängijad on teineteisest möödunud; rohkem lüüa ei saa.';

  @override
  String tutorPhraseContactStillMatters(Object part) {
    return '$part Kontakt on endiselt oluline.';
  }

  @override
  String tutorPhraseOpponentHasCheckersOnBar(int count) {
    return 'Vastasel on $count nuppu laual.';
  }

  @override
  String get tutorPhraseKeepBoardClosed =>
      'Hoia laud suletuna, tuues ülejäänud nupud koju.';

  @override
  String get tutorPhraseBuildOrPreserveHomeBoard =>
      'Ehita või hoia kodulaud suletuna, kuni vastane püüab siseneda.';

  @override
  String tutorPhraseHomePointsCloseEntries(int count) {
    return 'Sul on kodulaual $count punkti; igaüks neist sulgeb ühe sisenemiskoha.';
  }

  @override
  String tutorPhrasePrimeContact(int count) {
    return 'Kontakt $count-punktise tõkkega.';
  }

  @override
  String get tutorPhraseExtendPrimeOrKeepSpares =>
      'Võrdle tõkke pikendamist varunuppude hoidmisega, et seda säilitada.';

  @override
  String tutorPhraseSpareCheckersCanMove(int count) {
    return '$count varunuppu saavad liikuda oma punkti kohe avamata.';
  }

  @override
  String tutorPhraseAnchorContact(Object points) {
    return 'Kontakt tugipunktiga punktidel $points.';
  }

  @override
  String get tutorPhraseCompareAnchorProgressAhead =>
      'Võrdle taganuppe koju toomist turvalise tugipunkti hoidmisega.';

  @override
  String get tutorPhraseCompareAnchorProgressBehind =>
      'Pea turvalist tugipunkti meeles, otsides lööki või võimalust lauda parandada.';

  @override
  String get tutorPhrasePreserveAnchorFoothold =>
      'Tugipunkti ei saa lüüa, kuid nendel nuppudel on veel pikk tee koju.';

  @override
  String get tutorPhraseContactThreats =>
      'Kontakt: mõlemad pooled võivad endiselt lüüa.';

  @override
  String get tutorPhraseLookForPointsAndSafety =>
      'Otsi kasulikke punkte ja võrdle siis üksikute nuppude paljastamise riski.';

  @override
  String tutorPhraseHomePointsAndBlots(int count, int otherCount) {
    return 'Sul on kodulaual $count punkti ning laual $otherCount üksikut nuppu.';
  }

  @override
  String get tutorPhraseChooseCheckerPrompt =>
      'Vali nupp, millega käiku alustada.';

  @override
  String get tutorPhraseLegalPlayPrompt =>
      'Kommentaari nägemiseks alusta lubatud käiku.';

  @override
  String tutorPhraseStagedHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'nuppu',
      one: 'nupu',
    );
    return 'Lõid vastase $count $_temp0.';
  }

  @override
  String tutorPhraseStagedEnter(int count) {
    return 'Tõid laualt sisse $count nuppu.';
  }

  @override
  String tutorPhraseStagedBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'nuppu',
      one: 'nupu',
    );
    return 'Võtsid maha $count $_temp0.';
  }

  @override
  String tutorPhraseStagedMakePoints(Object points) {
    return 'Tegid punktid $points.';
  }

  @override
  String tutorPhraseStagedBlot(int point) {
    return 'Sinu $point. punktis olev nupp on praegu löögile avatud.';
  }

  @override
  String tutorPhraseStagedSpare(int point) {
    return 'Sinu $point. punkti varunuppu saab hiljem liigutada punkti avamata.';
  }

  @override
  String tutorPhraseStagedPartialPrompt(Object part) {
    return '$part Kasuta ülejäänud kasutatavad täringud enne, kui kogu käiku hinnatakse.';
  }

  @override
  String get tutorPhraseStagedAllCheckersOff =>
      'Kõik 15 nuppu on maas: mäng on võidetud.';

  @override
  String get tutorPhraseStagedHitShortPlan =>
      'Löök võidab aega, kuni vastane üritab laualt siseneda.';

  @override
  String get tutorPhraseStagedEfficientBearOffPlan =>
      'Tõhus mahavõtmine eemaldab nuppe ja jätab järgmise viske jaoks kasulikud arvud.';

  @override
  String get tutorPhraseStagedRaceHomePlan =>
      'Võidujooksus too tagumised nupud koju ja jäta neile head mahavõtmiskohad.';

  @override
  String get tutorPhraseStagedBearOffContactPlan =>
      'Mahavõtmine viib edasi, kuid allesjäänud kontakt jätab löögiohu.';

  @override
  String get tutorPhraseStagedReentryPlan =>
      'Sisenemine toob nupu tagasi mängu; järgmiseks otsi sellele turvalist kohta.';

  @override
  String get tutorPhraseStagedHomeBoardPlan =>
      'Uus kodulauapunkt sulgeb pärast võimalikku lööki ühe sisenemisnumbri.';

  @override
  String get tutorPhraseStagedPrimePlan =>
      'Pikem tõke sulgeb rohkem maandumiskohti; varunupud aitavad seda hoida.';

  @override
  String get tutorPhraseStagedLeaveAnchorPlan =>
      'Tugipunktist lahkumine viib edasi, kuid loobub turvalisest jalgealusest.';

  @override
  String get tutorPhraseStagedNewAnchorPlan =>
      'Uus tugipunkt annab taganupule turvalise koha.';

  @override
  String get tutorPhraseStagedCoverBlotPlan =>
      'Üksiku nupu katmine eemaldab vastase sihtmärgi.';

  @override
  String get tutorPhraseStagedSafetyTradeoffPlan =>
      'Valik on arendamise ja ohutuse vahel: ehitajad on ka võimalikud sihtmärgid.';

  @override
  String tutorPhraseStagedCompletePrompt(Object part) {
    return '$part Kogu käik on koostatud; selle kinnitamiseks vajuta Kinnita.';
  }

  @override
  String get tutorMoveForcedVerdict =>
      'Selle viskega ei saa nuppude käiku valida; seda otsusena ei hinnata.';

  @override
  String get tutorMoveTopVerdict => 'Selle seisu üks parimaid valikuid.';

  @override
  String get tutorMoveAlternativeVerdict => 'Mootor eelistab siin teist käiku.';

  @override
  String tutorMoveEstimateDifference(Object loss) {
    return 'Erinevus parimast käigust: $loss.';
  }

  @override
  String tutorMoveEstimateOutcomes(
    Object winPercent,
    Object winGammonPercent,
    Object loseGammonPercent,
  ) {
    return 'Pärast seda käiku: võidutõenäosus $winPercent%, marsi või parem võit $winGammonPercent%, marsi või hullem kaotus $loseGammonPercent%. Hinnang on käija vaatenurgast.';
  }

  @override
  String tutorMoveEstimateMatchChance(Object percent) {
    return 'Matši võidu hinnanguline tõenäosus: $percent%.';
  }

  @override
  String get tutorMovePlanAllCheckersOff =>
      'Kõik 15 nuppu on maha võetud: mäng on võidetud.';

  @override
  String tutorMovePlanHit(Object homeBoardAdvice) {
    return 'Kasuta lööki aja võitmiseks, kuni vastane siseneb. $homeBoardAdvice';
  }

  @override
  String get tutorMovePlanHitClosed =>
      'Hoia kodulaua punktid suletuna, et sisenemine oleks raskem.';

  @override
  String get tutorMovePlanHitBuild =>
      'Tee kodulaual veel punkte, et vastasel oleks raskem pärast lööki taastuda.';

  @override
  String get tutorMovePlanRaceBearOff =>
      'Püüa nuppe tõhusalt maha võtta, jättes järgmise viske jaoks kasulikud arvud.';

  @override
  String get tutorMovePlanRaceHome =>
      'Too tagumised nupud koju ja jaota need kasulikele mahavõtmiskohtadele.';

  @override
  String get tutorMovePlanContactBearOff =>
      'Võta nuppe maha, kuid jälgi vastase taganuppe: kontaktis võib hooletu nupp saada sihtmärgiks.';

  @override
  String get tutorMovePlanReentry =>
      'Too nupp mängu tagasi ning otsi sisenenud nupule turvalist punkti.';

  @override
  String get tutorMovePlanHomeBoard =>
      'Tugevda kodulauda. Uus suletud punkt võtab vastaselt ühe sisenemisnumbri ja muudab tulevase löögi mõjusamaks.';

  @override
  String get tutorMovePlanPrime =>
      'Hoia suletud punktide rida koos. Säilita varunupud, et hilisem vise ei sunniks seda avama.';

  @override
  String get tutorMovePlanLeaveAnchor =>
      'Tugipunktist lahkumine toob taganupud edasi, kuid kaotad turvalise jalgealuse. Jälgi nende ohustatust teel koju.';

  @override
  String get tutorMovePlanNewAnchor =>
      'Kasuta uut tugipunkti turvalise alusena, parandades samal ajal muud seisu.';

  @override
  String get tutorMovePlanCoverBlot =>
      'Koonda nupud. Üksiku katmine eemaldab sihtmärgi ja jätab alles kasulikud maandumiskohad.';

  @override
  String get tutorMovePlanSafety =>
      'Tasakaalusta edenemist ohutusega: too ehitajad heade punktide suunas ja kontrolli, milliseid üksikuid nuppe saab lüüa.';

  @override
  String get tutorMoveObservationNoLegalPlay =>
      'Ükski nupukäik pole lubatud: käik tuleb vahele jätta.';

  @override
  String tutorMoveObservationHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'nuppu',
      one: 'nupu',
    );
    return 'Lööd vastase $count $_temp0; vastane peab need enne teiste liigutamist laualt sisse tooma.';
  }

  @override
  String tutorMoveObservationEntry(int count) {
    return 'Too laualt sisse $count nuppu.';
  }

  @override
  String tutorMoveObservationBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'nuppu',
      one: 'nupu',
    );
    return 'Võta maha $count $_temp0.';
  }

  @override
  String tutorMoveObservationMadePoints(Object points) {
    return 'Moodustad punktid $points. Vähemalt kaks nuppu hoiavad punkti ja takistavad vastasel sinna maanduda.';
  }

  @override
  String tutorMoveObservationBrokenPoints(Object pointLabel, Object points) {
    return 'Loobud suletud punktidest $pointLabel $points. Need ei takista enam vastase liikumist.';
  }

  @override
  String tutorMoveObservationNoBlots(int previousCount) {
    return 'Üksikuid ohustatud nuppe ei jää (enne $previousCount). Midagi pole üksikult lüüa.';
  }

  @override
  String tutorMoveObservationBlots(int count, int previousCount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'nuppu',
      one: 'nuppu',
    );
    return 'Jätad $count paljastatud üksikut $_temp0 (enne $previousCount). Enne ohutuse eelistamist kontrolli, kas vastane ulatub nendeni.';
  }

  @override
  String tutorMoveObservationPrimeRun(
    int count,
    int previousCount,
    Object primeAdvice,
  ) {
    return 'Pikim suletud punktide rida: $count (enne $previousCount). $primeAdvice';
  }

  @override
  String get tutorMoveObservationPrimeSix =>
      'Kuue punkti pikkust tõket ei saa ületada, kuni see on suletud.';

  @override
  String get tutorMoveObservationPrimeBuild =>
      'Hoia ehitajad lähedal, kui soovid seda rida pikendada või säilitada.';

  @override
  String tutorMoveObservationPrimeSpares(int count) {
    return 'Suletud punktidel on üle kahe nupu $count varunuppu. Varunupu liigutamine võib punkti säilitada; kahe viimase liigutamine avab selle.';
  }

  @override
  String tutorMoveObservationAnchors(Object points, Object previousPoints) {
    return 'Tugipunktid vastase kodulaual: $points (enne $previousPoints). Tugipunkt kaitseb nuppe löökide eest; sellest lahkumine vahetab turvalise toe võidujooksus edenemise vastu.';
  }

  @override
  String get tutorMoveObservationPureRace =>
      'Puhas võidujooks: pooled on teineteisest möödunud ja kummalgi pole nuppu laual. Enam lüüa ei saa; loeb tõhus mahavõtmine.';

  @override
  String get tutorMoveObservationNoReplyHit =>
      'Vastane ei saa selle seisu ühegi lubatud järgmise viskega nuppu lüüa. Kontakt on siiski alles ja hilisemad käigud võivad uusi võimalusi luua.';

  @override
  String tutorMoveObservationReplyHit(
    int count,
    int total,
    int dieOne,
    int dieTwo,
    int point,
  ) {
    return 'Vastane saab lüüa $count viskega $total-st. Näiteks $dieOne–$dieTwo võimaldab sinu $point. punkti lüüa. Löömisvõimalus ei tähenda, et vastane selle valib.';
  }

  @override
  String tutorMoveObservationOpponentBarHome(
    int closedPoints,
    Object entryAdvice,
  ) {
    return 'Sinu kodulaual on suletud $closedPoints punkti. $entryAdvice';
  }

  @override
  String get tutorMoveObservationAllEntriesClosed =>
      'Vastane ei saa siseneda enne, kui mõni punkt avaneb.';

  @override
  String get tutorMoveObservationOpenEntry =>
      'Avatud sisenemispunkti kasutav vise võimaldab laual oleva nupu tagasi tuua.';

  @override
  String tutorMoveComparisonDetail(
    Object factors,
    Object delta,
    Object direction,
    Object scoreContext,
  ) {
    return '$factors Parima käigu hinnanguline võiduvõimalus on $delta protsendipunkti võrra $direction.$scoreContext';
  }

  @override
  String get tutorMoveComparisonHigher => 'suurem';

  @override
  String get tutorMoveComparisonLower => 'väiksem';

  @override
  String tutorMoveComparisonScoreContext(Object scoreContext) {
    return ' See võib siiski olla kõrgemal kohal, sest marsi ja tagamarsi väärtus sõltub praegusest $scoreContext.';
  }

  @override
  String get tutorMoveComparisonStake => 'panus';

  @override
  String get tutorMoveComparisonMatchScore => 'matši skoor';

  @override
  String tutorMoveComparisonFactorBar(int bestCount, int playedCount) {
    return 'Parim käik jätab lauale $bestCount vastase nuppu, sinu käik $playedCount. Laual olev nupp peab enne teiste liigutamist sisenema.';
  }

  @override
  String tutorMoveComparisonFactorHomeBoard(
    int bestCount,
    int playedCount,
    Object entryDifference,
  ) {
    return 'Parim käik hoiab kodulaual $bestCount punkti, sinu käik $playedCount; pärast lööki on $entryDifference sisenemispunkti.';
  }

  @override
  String get tutorMoveComparisonClosingMore => 'sulgeb rohkem';

  @override
  String get tutorMoveComparisonLeavingMore => 'jätab rohkem avatuks';

  @override
  String tutorMoveComparisonFactorShots(
    int bestCount,
    int playedCount,
    Object riskDifference,
  ) {
    return 'Parim käik lubab vastusel lüüa $bestCount viskega 36-st, sinu käik $playedCount-ga. $riskDifference';
  }

  @override
  String get tutorMoveComparisonReducesRisk =>
      'See vähendab kohest tagasilöömise ohtu.';

  @override
  String get tutorMoveComparisonExtraExposure =>
      'Võrdle lisariski sellega, mida käik mujal saavutab.';

  @override
  String tutorMoveComparisonFactorPrime(int bestCount, int playedCount) {
    return 'Parima käigu pikim suletud punktide rida on $bestCount, sinu käigul $playedCount; võrdle tõket selle hoidmiseks saadaolevate nuppudega.';
  }

  @override
  String tutorMoveComparisonFactorAnchors(
    Object bestPoints,
    Object playedPoints,
  ) {
    return 'Parimal käigul on tugipunktid $bestPoints, sinu käigul $playedPoints. Tugipunkt jätab ohutu maandumiskoha; sellest lahkumine toob nupud koju lähemale.';
  }

  @override
  String tutorMoveComparisonFactorBearOff(int bestCount, int playedCount) {
    return 'Parim käik on maha võtnud $bestCount nuppu, sinu käik $playedCount. Iga maas nupp on üks vähem, mida hiljem eemaldada.';
  }

  @override
  String get tutorMoveComparisonFactorSimilarRisks =>
      'Mõlemad käigud jätavad samasuguse löögiohu, kodulaua, tugipunktid ja maas olevate nuppude arvu. Võrdle maandumiskohti: järgmisel viskel saab neid nuppe kasutada erinevalt.';

  @override
  String get tutorMoveComparisonSummaryBar =>
      'Parim käik saadab rohkem vastase nuppe lauale ja viivitab tema teiste käikudega.';

  @override
  String get tutorMoveComparisonSummaryHomeBoard =>
      'Parim käik sulgeb rohkem kodulaua punkte, raskendades pärast lööki sisenemist.';

  @override
  String get tutorMoveComparisonSummaryShots =>
      'Parim käik lubab vähem koheseid lööke ja vähendab tagasilöömise ohtu.';

  @override
  String get tutorMoveComparisonSummaryPrime =>
      'Parim käik säilitab pikema suletud punktide rea.';

  @override
  String get tutorMoveComparisonSummaryAnchors =>
      'Parim käik hoiab vastase kodulaual rohkem turvalisi tugipunkte.';

  @override
  String get tutorMoveComparisonSummaryBearOff =>
      'Parim käik võtab rohkem nuppe maha ja jätab hilisemaks vähem tööd.';

  @override
  String tutorMoveComparisonSummaryBlots(int playedCount, int bestCount) {
    return 'See käik jätab $playedCount üksikut nuppu; parim käik jätab $bestCount.';
  }

  @override
  String tutorMoveComparisonSummarySafeAnchor(int point) {
    return 'Parim käik hoiab punktis $point turvalist tugipunkti.';
  }

  @override
  String get tutorMoveComparisonSummaryEntry =>
      'Parim käik sulgeb rohkem sisenemispunkte juhuks, kui sinu nupp lüüakse.';

  @override
  String get tutorMoveComparisonSummarySimilarRisks =>
      'Käikudel on sarnane kohene risk; võrdle, millised maandumiskohad jäävad järgmisel viskel kasulikuks.';

  @override
  String tutorMoveAssessmentEquityLoss(Object value) {
    return '$value equity';
  }

  @override
  String tutorMoveAssessmentMwcLoss(Object value) {
    return '$value protsendipunkti MWC';
  }

  @override
  String get tutorMovePointSingular => 'punkt';

  @override
  String get tutorMovePointPlural => 'punkti';

  @override
  String get tutorMoveNoPoints => 'puudub';

  @override
  String get gameTutorCommentaryOff => 'Mängukommentaarid on väljas.';

  @override
  String get gameTutorToolsAvailable =>
      'Ava juhendaja, et kasutada lubatud tööriistu.';

  @override
  String get gameTutorNextRoll => 'Viska järgmisena.';

  @override
  String get gameTutorNoEvaluatedReview =>
      'Selle salvestatud käigu kohta pole hinnatud selgitust.';

  @override
  String get gameTutorAnalysisUnavailable => 'analüüs pole saadaval';

  @override
  String get gameTutorReviewing => 'vaatab üle…';

  @override
  String get gameTutorTryYourPlayFirst => 'Proovi kõigepealt ise käia.';

  @override
  String get gameTutorKeepBuilding => 'Jätka käigu koostamist.';

  @override
  String get gameTutorStageCompleteBeforeCoaching =>
      'Koosta täielik lubatud käik, enne kui näed juhiseid või vihjeid.';

  @override
  String get gameTutorReadyToConfirm => 'Valmis kinnitamiseks';

  @override
  String get gameTutorPlayTakingShape => 'Sinu käik on kujunemas.';

  @override
  String get gameTutorConfirmOrUndo =>
      'Käigu tegemiseks kinnita või mõtle ümber ja võta tagasi.';

  @override
  String get gameTutorFinishDiceOrUndo =>
      'Kasuta ülejäänud täringut või võta käik tagasi.';

  @override
  String get gameTutorComputerConsidering => 'Arvuti mõtleb oma käigu üle.';

  @override
  String get gameTutorComputerPlayReviewed =>
      'Valminud käik vaadatakse siin üle.';

  @override
  String get gameTutorYourPlay => 'Sinu käik';

  @override
  String get gameTutorComputer => 'Arvuti';

  @override
  String gameTutorPlayQuality(Object quality) {
    return 'Sinu käik: $quality';
  }

  @override
  String get gameTutorForcedPlay => 'sunnitud käik';

  @override
  String get gameTutorTopChoice => 'parim valik';

  @override
  String get gameTutorSoundPlay => 'hea käik';

  @override
  String get gameTutorAnotherPlayMayFitBetter =>
      'mõni teine käik võib sobida paremini';

  @override
  String get gameTutorAnotherPlayFitsBetter =>
      'mõni teine käik sobib sellesse seisu paremini';

  @override
  String get gameTutorStrongerPlayAvailable =>
      'saadaval oli selgelt parem käik';

  @override
  String gameTutorPositionEdge(Object side) {
    return 'Seis annab hinnanguliselt eelise poolele $side.';
  }

  @override
  String get gameTutorPositionEven => 'Seis on ligikaudu võrdne.';

  @override
  String tutorPlayedMove(Object move) {
    return 'Käidud: $move';
  }

  @override
  String tutorBestMove(Object move) {
    return 'Parim käik: $move';
  }

  @override
  String get tutorShowRankedPlays => 'Näita järjestatud käike';

  @override
  String get tutorReviewRecordedMove =>
      'Puuduta logis lõpetatud käiku, et vaadata siin selle otsuse analüüsi.';

  @override
  String get tutorTopPlays => 'Parimad käigud';

  @override
  String get tutorNoHintsAvailable => 'Vihjeid pole saadaval.';

  @override
  String get tutorPreviewThenConfirm =>
      'Puuduta käiku, et seda laual eelvaadata, seejärel kinnita.';

  @override
  String get tutorTopChoiceForPosition => 'Selle seisu parim valik';

  @override
  String get tutorAlternativePlay => 'Alternatiivne käik';

  @override
  String get tutorEngineEstimates => 'Mootori hinnangud';

  @override
  String get tutorEstimateScope =>
      '0-ply hinnang · praegune tulemus ja panus · tulevasi kahekordistamisi ei arvestata';

  @override
  String get tutorEquity => 'Oodatav punktisaak';

  @override
  String get tutorMwcPercent => 'Matši võidutõenäosus %';

  @override
  String get tutorNearTiesNote =>
      'Väga lähedased hinnangud võivad põhjalikuma analüüsi käigus muutuda.';

  @override
  String get tutorWhyThisPlay => 'Miks see käik?';

  @override
  String get tutorCompareAlternative => 'Võrdle seda varianti';

  @override
  String get gameTutorCubeTake => 'Tutor: võta vastu';

  @override
  String get gameTutorCubePass => 'Tutor: loobu';

  @override
  String get practiceScreenTitle => 'Harjuta otsust';

  @override
  String get practiceUnavailable => 'See harjutusseis pole enam saadaval.';

  @override
  String get practiceSubmitError =>
      'Seda katset ei saanud hinnata ega salvestada. Edenemine ei muutunud. Proovi uuesti.';

  @override
  String practiceTurnLabel(Object side, Object dice) {
    return '$side käib · $dice';
  }

  @override
  String get practiceHistoricalScoreUnavailable =>
      'Ajalooline skoor pole saadaval; hinnang põhineb kuubikuta punktisaagil.';

  @override
  String practiceScoreLine(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return 'Skoor: $whiteLabel $whiteScore – $blackLabel $blackScore, matšini $matchLength';
  }

  @override
  String get practiceCrawfordGame => ' · Crawfordi partii';

  @override
  String get practiceNoDoublingCube => 'Kahekordistamiskuubik puudub.';

  @override
  String practiceCubeValue(int value) {
    return 'Kuubik $value.';
  }

  @override
  String get practiceHistoricalCubeUnknown =>
      'Ajaloolised kuubikureeglid pole teada.';

  @override
  String get practiceAfterBestPosition => 'Seis pärast parimat käiku';

  @override
  String get practiceAfterYourAnswerPosition => 'Seis pärast sinu vastust';

  @override
  String get practiceFindYourPlayPrompt =>
      'Leia laual oma käik ja kontrolli siis vastust. Vihjeid ei näidata.';

  @override
  String get practiceUndo => 'Võta tagasi';

  @override
  String get practiceCheckAnswer => 'Kontrolli vastust';

  @override
  String get practiceRevealNoCredit => 'Näita vastust (punkte ei saa)';

  @override
  String get practiceAnswerRevealedNoCredit =>
      'Vastus avati — meenutamise eest punkte ei saa.';

  @override
  String practiceGradeLine(Object verdict, Object loss) {
    return '$verdict · $loss';
  }

  @override
  String practiceBestMoveLine(Object move) {
    return 'Parim: $move';
  }

  @override
  String practiceOriginalGameLine(Object move, Object loss) {
    return 'Algne partii: $move · $loss';
  }

  @override
  String practiceYourAnswerLine(Object move) {
    return 'Sinu vastus: $move';
  }

  @override
  String get practiceYourAnswerChip => 'Sinu vastus';

  @override
  String get practiceBestPlayChip => 'Parim käik';

  @override
  String practiceNextReview(Object date) {
    return 'Järgmine kordus: $date.';
  }

  @override
  String get practiceRecallCredit =>
      'Parimad ja head vastused loetakse edukaks meenutamiseks. Enneaegne kordamine ajakava edasi ei vii.';

  @override
  String get practiceBackToLearning => 'Tagasi õppimise juurde';

  @override
  String get practiceMarkBest => 'Parim';

  @override
  String get practiceMarkGood => 'Hea';

  @override
  String get practiceMarkDubious => 'Kahtlane';

  @override
  String get practiceMarkError => 'Viga';

  @override
  String get practiceMarkBlunder => 'Jäme viga';

  @override
  String get practiceMarkForced => 'Sunnitud';

  @override
  String get newMatchYourSide => 'Sinu pool';

  @override
  String get newMatchTutorMode => 'Tutori režiim';

  @override
  String get newMatchTutorDescription =>
      'Õpi vihjete, selgituste ja mängukommentaaride abil';

  @override
  String get newMatchTutoringOptions => 'Õpetamise valikud';

  @override
  String get newMatchTutoringOptionsDescription =>
      'Selle matši jaoks; muudetav ka mängu ajal';

  @override
  String get setupMatchLength => 'Matši pikkus';

  @override
  String get setupDifficulty => 'Raskusaste';

  @override
  String get setupDifficultyEasy => 'Lihtne';

  @override
  String get setupDifficultyMedium => 'Keskmine';

  @override
  String get setupDifficultyHard => 'Raske';

  @override
  String get setupDifficultyExpert => 'Ekspert';

  @override
  String get setupPlayWithoutCube => 'Mängi ilma kuubikuta';

  @override
  String get setupNoCubeThisMatch =>
      'Selles matšis pole kahekordistamiskuubikut';

  @override
  String get analysisTitle => 'Analüüs';

  @override
  String get gameMatchSummary => 'Matši kokkuvõte';

  @override
  String get gameAnalyzeGame => 'Analüüsi partiid';

  @override
  String get analysisMetricsTooltip => 'Mida need arvud tähendavad?';

  @override
  String analysisError(Object error) {
    return 'Mängu analüüsimine ebaõnnestus: $error';
  }

  @override
  String get analysisNoPositions => 'Selles mängus pole kuvatavaid seise.';

  @override
  String get analysisInProgress => 'Mängu analüüs…';

  @override
  String analysisPercent(int percent) {
    return '$percent%';
  }

  @override
  String get analysisPlayed => 'Mängitud';

  @override
  String get analysisBest => 'Parim';

  @override
  String get analysisPrevious => 'Eelmine';

  @override
  String get analysisNext => 'Järgmine';

  @override
  String get analysisPositionBeforeCube => 'Seis enne kuubikuotsust';

  @override
  String get analysisPositionAtPoint => 'Seis selles mängu punktis';

  @override
  String get analysisShowingBestBefore => 'Kuvatakse parimat käiku enne käiku';

  @override
  String get analysisShowingBefore => 'Kuvatakse seis enne käiku';

  @override
  String analysisVerdictLine(Object side, Object verdict, Object loss) {
    return '$side: $verdict$loss';
  }

  @override
  String analysisMoveLoss(Object loss) {
    return '  −$loss';
  }

  @override
  String get analysisExcludedFromAverages => ' · ei arvestata keskmisesse';

  @override
  String get analysisNoPlay => '(käik puudub)';

  @override
  String analysisBestMoveLine(Object move) {
    return 'Parim: $move';
  }

  @override
  String get analysisExplain => 'Selgita';

  @override
  String get analysisSaveForPractice => 'Salvesta harjutamiseks';

  @override
  String get analysisSaveError =>
      'Seda otsust ei saanud salvestada. Proovi uuesti.';

  @override
  String analysisCubeInfo(
    Object side,
    Object action,
    Object mark,
    Object loss,
  ) {
    return '$side: $action · $mark · kaotus $loss';
  }

  @override
  String get analysisCubeDecision => 'Kuubikuotsus';

  @override
  String analysisCubePlayed(Object action, Object percent) {
    return 'Mängitud: $action ($percent% matši võidutõenäosus).';
  }

  @override
  String analysisCubeBest(Object action, Object percent) {
    return 'Parim: $action ($percent% matši võidutõenäosus).';
  }

  @override
  String get analysisCubeEstimate =>
      '0-ply hinnang käigu tegija vaatenurgast. Eeldab optimaalset vastust võtmise või loobumise kohta. Kahekordistamise vastuvõtmisel kasutatakse kuubiku eluea ligikaudset tegurit 0,7; tulevaste ümberkahekordistamiste täielikku otsingut ei tehta. Põhjalikum analüüs võib tulemust muuta.';

  @override
  String get analysisClose => 'Sulge';

  @override
  String get analysisMoves => 'Käigud';

  @override
  String get analysisForced => 'Sunnitud';

  @override
  String get analysisMarkBest => 'Parim';

  @override
  String get analysisMarkGood => 'Hea';

  @override
  String get analysisMarkDubious => 'Kahtlane';

  @override
  String get analysisMarkError => 'Viga';

  @override
  String get analysisMarkBlunder => 'Jäme viga';

  @override
  String analysisSummaryMeanLoss(Object loss) {
    return 'Keskmine kaotus $loss';
  }

  @override
  String analysisSummaryCheckerDecisions(int count) {
    return '$count nupukäiguotsust';
  }

  @override
  String analysisSummaryBlunders(int count) {
    return 'Jämedaid vigu $count';
  }

  @override
  String analysisSummaryCubeLoss(Object loss) {
    return 'Kuubikukaotus $loss';
  }

  @override
  String analysisRollWithoutDoubling(Object side) {
    return '$side veeretab kahekordistamata';
  }

  @override
  String get metricExplainerTitle => 'Mõõdikute mõistmine';

  @override
  String get metricExplainerTooltip => 'Mida need arvud tähendavad?';

  @override
  String get metricExplainerMwcTitle => 'Matši võidutõenäosus (MWC)';

  @override
  String get metricExplainerMwcBody =>
      'Kui skoor on teada, reastatakse nupukäigud hinnangulise matši võidutõenäosuse järgi. Kaotus on protsendipunktides (pp): 1 pp tähendab langust 51%-lt 50%-le. Arvesse lähevad praegune kuubiku panus ning gammoni ja backgammoni tulemused. Sunnitud passid ja veeretused, mille järel on ainult üks seaduslik seis, jäetakse keskmisest välja.';

  @override
  String get metricExplainerSearchTitle => 'Otsing ja ebakindlus';

  @override
  String get metricExplainerSearchBody =>
      'Nupukäikude järjestus põhineb staatilisel 0-ply hinnangul pärast käiku, mitte rolloutidel. Matši väärtused kasutavad matši võrdustabelit ega arvesta tulevaste kuubikukäikudega. Kuubiku ülevaates kasutatakse vastuvõetud duublil osalist 0,7 kuubiku eluea lähendit. Kumbki pole täielik kuubikuga otsing. Üle 25 punkti taga olevate skooride puhul kasutatakse tabeli 25-punkti piiri. Lähedased tulemused võivad põhjalikuma analüüsiga muutuda; kalibreeritud usaldusvahemikku ei ole.';

  @override
  String get metricExplainerEquityTitle => 'Oodatav punktisaak';

  @override
  String get metricExplainerEquityBody =>
      'Kui skoor pole teada, näitab kuubikuta oodatav punktisaak, mitu punkti seis keskmiselt väärt on — eeldatav tulemus kuubikuga väärtusel 1. +1,0 tähendab, et eeldad ühe punkti võitu; −0,5 tähendab poole punkti kaotust.';

  @override
  String get metricExplainerEquityLossTitle => 'Punktisaagi kaotus (nt −0,016)';

  @override
  String get metricExplainerEquityLossBody =>
      'Iga käigu puhul võrdleme sinu käiku mootori parima käiguga. Punktisaagi kaotus näitab, kui palju oodatavat väärtust käik kaotas. −0,016 tähendab, et käik oli parimast vaid 0,016 punkti võrra halvem — väike eksimus. 0,000 tähendab, et leidsid parima käigu.';

  @override
  String get metricExplainerErrorRateTitle => 'Vigade määr';

  @override
  String get metricExplainerErrorRateBody =>
      'Keskmine kaotus arvutab kuvatud ühikus hinnatud nupukäikude keskmise. Kuubikuotsuseid arvestatakse eraldi. Väiksem väärtus tähendab, et käigud olid mootori hinnangutele lähemal; see pole kalibreeritud mängijareiting.';

  @override
  String get metricExplainerMoveMarksTitle => 'Käikude hinnangud';

  @override
  String get metricExplainerMoveMarksBody =>
      'MWC õppepiirid: parim < 0,05 pp, hea < 0,5 pp, kahtlane < 1,5 pp, viga < 3 pp, jäme viga ≥ 3 pp. Need on õppepiirid, mitte kalibreeritud kindlus ega turniirireiting.\n\nKuubikuta oodatava punktisaagi piirid:';

  @override
  String get metricExplainerThresholdBest => 'kaotus < 0,001';

  @override
  String get metricExplainerThresholdGood => 'kaotus < 0,020';

  @override
  String get metricExplainerThresholdDubious => 'kaotus < 0,050';

  @override
  String get metricExplainerThresholdError => 'kaotus < 0,110';

  @override
  String get metricExplainerThresholdBlunder => 'kaotus ≥ 0,110';

  @override
  String get metricExplainerGotIt => 'Selge';

  @override
  String get historyTitle => 'Matšide ajalugu';

  @override
  String historyLoadFailed(Object error) {
    return 'Ajaloo laadimine ebaõnnestus:\n$error';
  }

  @override
  String get historyEmpty => 'Matše pole veel mängitud.';

  @override
  String get historyDeleteConfirmTitle => 'Kas kustutada see matš?';

  @override
  String historyDeleteConfirmBody(Object scoreLine) {
    return '$scoreLine\n\nMatš ja kõik sellesse salvestatud partiid kustutatakse jäädavalt. Seda ei saa tagasi võtta.';
  }

  @override
  String get actionCancel => 'Tühista';

  @override
  String get actionDelete => 'Kustuta';

  @override
  String get historyDeleteFailed => 'Matši kustutamine ebaõnnestus.';

  @override
  String get historyComplete => 'Lõppenud';

  @override
  String historyWinner(Object side) {
    return '$side võitis';
  }

  @override
  String get historyUnfinished => 'Pooleli';

  @override
  String get historyMatchTitle => 'Matš';

  @override
  String historyMatchLoadFailed(Object error) {
    return 'Matši laadimine ebaõnnestus:\n$error';
  }

  @override
  String historyGamesLoadFailed(Object error) {
    return 'Partiide laadimine ebaõnnestus:\n$error';
  }

  @override
  String get historyNoGames => 'Partiisid pole veel salvestatud.';

  @override
  String historyGameTitle(int number) {
    return 'Partii $number';
  }

  @override
  String get historyCrawford => 'Crawford';

  @override
  String historyScoreLine(int whiteScore, int blackScore, int matchLength) {
    return 'Valge $whiteScore — $blackScore Must (matšini $matchLength)';
  }

  @override
  String get historyModeComputer => 'arvuti vastu';

  @override
  String get historyModeTwoPlayers => 'Kaks mängijat';

  @override
  String get historyModeOnline => 'Võrgus';

  @override
  String get historyModeNearby => 'Mängi läheduses';

  @override
  String get historyModeBuddy => 'Buddy';

  @override
  String get historyGameInProgress => 'Käib';

  @override
  String historyGameResult(Object side, int points, Object outcome) {
    return '$side võidab $points punktiga ($outcome)';
  }

  @override
  String get historyOutcomeSingle => 'üksik';

  @override
  String get historyOutcomeGammon => 'gammon';

  @override
  String get historyOutcomeBackgammon => 'backgammon';

  @override
  String get learningRefreshTooltip => 'Värskenda õppetulemusi';

  @override
  String get learningOptions => 'Õppimise valikud';

  @override
  String get learningResetMenu => 'Lähtesta harjutuste edenemine';

  @override
  String get learningLoadFailed => 'Õppimise edenemist ei saanud laadida.';

  @override
  String get actionRetry => 'Proovi uuesti';

  @override
  String get learningHeading => 'Õpi oma otsustest';

  @override
  String get learningIntro =>
      'Edenemine salvestatakse selles seadmes. Vaata korduvaid teemasid ja proovi salvestatud seise uuesti ilma vastust nägemata. Valget ja musta poolt saab vaadata eraldi.';

  @override
  String get learningBothSides => 'Mõlemad pooled';

  @override
  String get learningHumansOnly => 'Ainult inimeste otsused';

  @override
  String get learningHumanOnlyHelp =>
      'Lülita välja, et kaasata arvuti ja kaugmängija otsused';

  @override
  String learningDecisionSummary(int decisions, int mistakes, int blunders) {
    return '$decisions otsust · $mistakes vajavad parandamist · $blunders jämedat viga';
  }

  @override
  String learningAverageLoss(int decisions, Object loss) {
    return 'Keskmine kaotus ($decisions otsust): $loss';
  }

  @override
  String get learningForcedDisclaimer =>
      'Sunnitud käike ei arvestata. Need on mootori hinnangud, mitte turniirireiting.';

  @override
  String learningGamesNeedingAnalysis(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '# salvestatud partiid vajavad analüüsi või uut analüüsi.',
      one: 'Üks salvestatud partii vajab analüüsi või uut analüüsi.',
    );
    return '$_temp0';
  }

  @override
  String get learningAnalyseSavedGames => 'Analüüsi salvestatud partiid';

  @override
  String get learningEmptyProfile =>
      'Õppeprofiili loomiseks mängi ja lõpeta partii. Üksikuid otsuseid saab salvestada ka mängu kordusesitusest.';

  @override
  String get learningOpenHistory => 'Ava matšide ajalugu';

  @override
  String get learningRecurringThemes => 'Korduvad teemad';

  @override
  String get learningNoThemes =>
      'Selles valikus pole veel korduvaid veateemasid.';

  @override
  String learningThemeDecisions(int count) {
    return '$count otsust tasub uuesti vaadata. Ühes seisus võib olla mitu teemat.';
  }

  @override
  String get learningSaveMistakes => 'Salvesta vead harjutamiseks';

  @override
  String learningSavedMistakes(int count) {
    return '$count otsust on harjutuste loendis. Olemasolevad salvestused jäetakse alles.';
  }

  @override
  String get learningSaveMistakesFailed =>
      'Mõnda otsust ei saanud salvestada. Valmis salvestused jäid alles; proovi uuesti.';

  @override
  String get learningSpacedPractice => 'Jaotatud kordamine';

  @override
  String learningPracticeCounts(
    int due,
    int saved,
    int attempts,
    int successes,
  ) {
    return '$due nüüd ootel · $saved salvestatud · $attempts katset · $successes edukat meenutamist';
  }

  @override
  String get learningIntervalsHelp =>
      'Edukalt läbitud kordused ilmuvad uuesti 1, 3, 7, 14 ja 30 päeva pärast. Vigade või avatud vastustega harjutused tulevad tagasi 10 minuti pärast. Varajased kordused intervalli ei pikenda.';

  @override
  String get learningAnswerContext =>
      'Harjutuse tulemus kajastab sinu siin antud vastuseid ka siis, kui algne seis kuulus vastasele.';

  @override
  String get learningNoSavedPositions =>
      'Salvesta kordusesitusest mõni otsus või kasuta ülal olevat vigade nuppu.';

  @override
  String learningPositionTitle(Object side, int gameId) {
    return '$side otsus · partii $gameId';
  }

  @override
  String learningReviewDue(Object date) {
    return 'Vaata üle $date';
  }

  @override
  String get learningReadyToReview => 'Ülevaatuseks valmis';

  @override
  String learningSuccessStreak(int count) {
    return '$count edukat kordust õigel ajal';
  }

  @override
  String get learningRemoveTooltip => 'Eemalda salvestatud otsus';

  @override
  String get learningRecentPractice => 'Hiljutised harjutused';

  @override
  String get learningAnswerRevealed => 'Vastus avati';

  @override
  String get learningSuccessfulRecall => 'Edukas meenutamine';

  @override
  String get learningTryAgain => 'Proovi seda otsust uuesti';

  @override
  String learningAttemptSubtitle(Object date, int positionId) {
    return '$date · salvestatud seis $positionId';
  }

  @override
  String get learningRemoveTitle => 'Kas eemaldada see harjutus?';

  @override
  String get learningRemoveBody =>
      'Selle harjutuse katsed eemaldatakse. Algne partii jääb ajalukku.';

  @override
  String get actionRemove => 'Eemalda';

  @override
  String get learningRemoveFailed => 'Seda harjutust ei saanud eemaldada.';

  @override
  String get learningResetTitle => 'Kas lähtestada harjutuste edenemine?';

  @override
  String get learningResetBody =>
      'Kõik harjutuskatsed ja ülevaatuste intervallid eemaldatakse. Salvestatud harjutused ja matšide ajalugu jäävad alles; kõik harjutused muutuvad kohe ootel harjutusteks.';

  @override
  String get learningResetAction => 'Lähtesta edenemine';

  @override
  String get learningResetFailed =>
      'Harjutuste edenemist ei saanud lähtestada.';

  @override
  String learningAnalysisProgress(int completed, int failed) {
    return 'Analüüsitud $completed partiid · $failed pole saadaval.';
  }

  @override
  String learningAnalysisComplete(int completed) {
    return 'Analüüsitud $completed partiid.';
  }

  @override
  String learningAnalysisCompleteWithErrors(int completed, int failed) {
    return 'Analüüsitud $completed partiid; $failed analüüs ebaõnnestus. Proovi uuesti, kui mootor on valmis.';
  }

  @override
  String get learningThemeHitting => 'Löömine ja tempo';

  @override
  String get learningThemeSafety => 'Üksikud nupud ja kaitse';

  @override
  String get learningThemePointMaking => 'Punktide sulgemine';

  @override
  String get learningThemePrime => 'Prime’id ja tõkked';

  @override
  String get learningThemeAnchor => 'Ankrud ja põgenemine';

  @override
  String get learningThemeRace => 'Võidujooksu tõhusus';

  @override
  String get learningThemeBearOff => 'Nuppude ärakorjamine';

  @override
  String get learningThemeBarEntry => 'Laualt sisenemine';

  @override
  String get learningThemeCube => 'Kuubikuotsused';

  @override
  String get analysisCubeNoDouble => 'Ära kahekordista';

  @override
  String get analysisCubeDouble => 'Kahekordista';

  @override
  String get analysisCubeTake => 'Võta vastu';

  @override
  String get analysisCubePass => 'Loobu';

  @override
  String get learningAnalysisStarting => 'Salvestatud partiide analüüsimine…';

  @override
  String get tutorCubelessEstimateScope =>
      '0-ply hinnang ilma kuubikuta · skoor pole saadaval';

  @override
  String get tutorLossPp => 'Kaotus protsendipunktides';

  @override
  String get tutorLoss => 'Kaotus';

  @override
  String get scoreSheetNoMoves => 'Käike veel pole';

  @override
  String get tutorOptions => 'Tutori seaded';

  @override
  String get tutorCollapseTooltip => 'Ahenda tutor';

  @override
  String get tutorExpandTooltip => 'Laienda tutor';

  @override
  String get onlineTitle => 'Mängi võrgus';

  @override
  String get onlineUnassistedNote =>
      'Võrgumängudes tutor ei aita. Vaata käigud üle ja harjuta vigu pärast matši.';

  @override
  String get onlineNotConfiguredTitle =>
      'Võrgumäng pole selles versioonis seadistatud';

  @override
  String get onlineNotConfiguredBody =>
      'Sellel versioonil pole Firebase’i taustateenust, seega matši loomine ega sellega liitumine pole võimalik.';

  @override
  String get onlineErrorNoMatch =>
      'Selle koodiga matši ei leitud. Kontrolli koodi ja proovi uuesti.';

  @override
  String get onlineErrorSeatTaken =>
      'See matš pole enam avatud — koht on hõivatud.';

  @override
  String get onlineErrorPermission => 'Sul pole sellele matšile ligipääsu.';

  @override
  String get onlineErrorGeneric => 'Midagi läks valesti. Proovi uuesti.';

  @override
  String get onlineMatchFinished =>
      'See matš on lõppenud — sellega ei saa enam liituda.';

  @override
  String get onlineEnterCodeError => 'Sisesta matši kood.';

  @override
  String get onlineOpponentShort => 'Vast.';

  @override
  String get onlineMatchInProgress => 'Matš käib';

  @override
  String onlineResumePrompt(Object code) {
    return 'Mängisid matšis $code.';
  }

  @override
  String get onlineRejoin => 'Liitu uuesti';

  @override
  String get onlineForgetMatch => 'Unusta see matš';

  @override
  String get onlineCreateTitle => 'Loo matš';

  @override
  String get onlineMatchLength => 'Matši pikkus';

  @override
  String get onlineNoCubeTitle => 'Mängi kuubikuta';

  @override
  String get onlineNoCubeSubtitle =>
      'Selles matšis pole kahekordistamiskuubikut';

  @override
  String get onlineCreate => 'Loo';

  @override
  String get onlineWaitingOpponent => 'Ootan vastast…';

  @override
  String get onlineShareCode => 'Jaga seda koodi';

  @override
  String get onlineCopyCode => 'Kopeeri kood';

  @override
  String get onlineCodeCopied => 'Kood kopeeritud';

  @override
  String get onlineJoinTitle => 'Liitu matšiga';

  @override
  String get onlineRoomCode => 'Matši kood';

  @override
  String get onlineJoin => 'Liitu';

  @override
  String get lanTitle => 'Mängi läheduses';

  @override
  String get lanTabHost => 'Majutaja';

  @override
  String get lanTabJoin => 'Liitu';

  @override
  String get lanUnassistedNote =>
      'Läheduses mängitavad mängud on ilma abita. Vaata käigud üle ja harjuta vigu pärast matši.';

  @override
  String get lanGameStartFailed =>
      'Mängu ei saanud alustada. Teine seade võib uuesti liituda proovida.';

  @override
  String get lanHostPortInUse =>
      'Hostimist ei saanud alustada — port on juba kasutusel. Sulge Backgammon Buddy teine koopia.';

  @override
  String get lanHostStartFailed =>
      'Hostimist ei saanud alustada. Kontrolli Wi-Fi ühendust.';

  @override
  String get lanHostTitle => 'Hosti mäng';

  @override
  String get lanStartHosting => 'Alusta hostimist';

  @override
  String get lanHostHelp =>
      'Mõlemad seadmed peavad olema samas Wi-Fi võrgus. See seade veeretab täringuid ja hoiab skoori.';

  @override
  String get lanWaitingPlayerTitle => 'Ootan mängijat';

  @override
  String get lanRoomCodeInfo =>
      'Anna see kood teisele mängijale. See lubab tal liituda — rakendus ei saada koodi võrku.';

  @override
  String get lanWaitingPlayer => 'Ootan mängijat…';

  @override
  String get lanStopHosting => 'Lõpeta hostimine';

  @override
  String lanFindNearbyPort(int port) {
    return 'Palu teisel seadmel läheduses mänge otsida. Kuulan pordil $port.';
  }

  @override
  String get lanOnNetwork => 'Selles võrgus';

  @override
  String get lanCopyAddress => 'Kopeeri aadress';

  @override
  String get lanAddressCopied => 'Aadress kopeeritud';

  @override
  String get lanScanHostTitle => 'Skanni hosti';

  @override
  String get lanScanHostHelp =>
      'Teine seade näitab oma Host-ekraanil QR-koodi. Skannimine täidab aadressi ja ruumi koodi.';

  @override
  String get lanScanQr => 'Skanni QR-kood';

  @override
  String get lanScannerUnavailable =>
      'Kaamera või selle luba pole saadaval. Sisesta aadress ja ruumi kood allpool.';

  @override
  String get lanInvalidQr =>
      'See QR-kood pole Backgammon Buddy mängu jaoks. Skanni teise seadme Host-ekraanil olevat koodi.';

  @override
  String get lanScannerFailed =>
      'Skannerit ei saanud avada. Sisesta selle asemel aadress ja kood.';

  @override
  String get lanNearbyGames => 'Läheduses mängud';

  @override
  String get lanSearching => 'Otsin läheduses mänge…';

  @override
  String get lanNoGamesFound =>
      'Mänge pole veel leitud. Veendu, et teine seade hostib ja mõlemad on samas Wi-Fi võrgus — või sisesta selle aadress.';

  @override
  String get lanStillSearching => 'Otsin ikka…';

  @override
  String get lanEnterAddress => 'Sisesta aadress';

  @override
  String get lanEnterAddressHelp =>
      'Automaatne avastamine ei tööta kõigis võrkudes (iOS võib selle täielikult blokeerida). Hosti ekraan näitab, mida sisestada.';

  @override
  String get lanIpAddress => 'IP-aadress';

  @override
  String get lanPort => 'Port';

  @override
  String get lanInvalidPort => 'Sisesta port vahemikus 1–65535.';

  @override
  String get lanEnterAddressError => 'Sisesta teises seadmes kuvatud aadress.';

  @override
  String get lanEnterRoomCodeError =>
      'Sisesta teisest seadmest saadud 4-kohaline kood.';

  @override
  String get lanJoinWrongCode =>
      'Vale ruumi kood. Kontrolli teises seadmes nelja numbrit.';

  @override
  String get lanJoinVersionMismatch =>
      'Teises seadmes töötab Backgammon Buddy teine versioon.';

  @override
  String get lanJoinHandshakeFailed =>
      'Seade ei vastanud nagu Backgammon Buddy. Kontrolli aadressi ja porti.';

  @override
  String get lanJoinFailed =>
      'Liitumine ei õnnestunud. Kontrolli aadressi ja ruumi koodi ning proovi uuesti.';

  @override
  String lanJoinTarget(Object name) {
    return 'Liitu mänguga $name';
  }

  @override
  String get lanJoinTargetHelp =>
      'Sisesta teises seadmes näidatud 4-kohaline kood.';

  @override
  String lanJoiningTarget(Object name) {
    return 'Liitun mänguga $name';
  }

  @override
  String get lanConnect => 'Ühenda';

  @override
  String get lanBack => 'Tagasi';

  @override
  String get lanTryAgain => 'Proovi uuesti';

  @override
  String get lanStatusBusy => 'Ruum on kasutusel — ootan…';

  @override
  String get lanStatusReconnecting => 'Ühendus katkes — proovin uuesti…';

  @override
  String get lanStatusConnected => 'Ühendatud — matš algab…';

  @override
  String get lanStatusFailed => 'Liitumine ebaõnnestus.';

  @override
  String get lanStatusConnecting => 'Ühendan…';

  @override
  String get diagnosticsCopySuccess => 'Diagnostika kopeeriti lõikelauale';

  @override
  String get diagnosticsReviewTitle => 'Diagnostikaaruande ülevaade';

  @override
  String get diagnosticsPrivacyNotice =>
      'Mustandi avamisel saadetakse allolevad üksikasjad GitHubi, sh rakenduse versioon, platvorm ja veateave. Avalikku probleemi ei postitata enne, kui selle ise esitad. Kui andmed sisaldavad isiklikku teavet, tühista ja kasuta kopeerimist, et aruanne ise ette valmistada.';

  @override
  String get diagnosticsCancel => 'Tühista';

  @override
  String get diagnosticsOpenGitHub => 'Ava GitHub';

  @override
  String get diagnosticsTitle => 'Diagnostika';

  @override
  String get diagnosticsReportTooltip => 'Teata probleemist GitHubis';

  @override
  String get diagnosticsCopyTooltip => 'Kopeeri lõikelauale';

  @override
  String get diagnosticsClearTooltip => 'Tühjenda logi';

  @override
  String get diagnosticsEmpty =>
      'Vigu pole salvestatud.\n\nKui midagi läheb valesti, salvestatakse see siia. Tule tagasi ja kopeeri üksikasjad veateatesse.';

  @override
  String gameHudNeutralScore(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore–$blackScore $blackLabel · $matchLength punktini';
  }

  @override
  String gameHudPlayerScore(
    Object you,
    int mine,
    int theirs,
    Object opponent,
    int matchLength,
  ) {
    return '$you $mine–$theirs $opponent · $matchLength punktini';
  }

  @override
  String get gameHudYou => 'Sina';

  @override
  String get gameHudAi => 'Arvuti';

  @override
  String gameHudGameNumber(int number) {
    return 'Partii $number';
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
    return '$whiteLabel vs $blackLabel · $pipsLabel $whitePips–$blackPips';
  }

  @override
  String gameHudOpponentDetail(
    Object opponent,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'vs $opponent · $pipsLabel $mine–$theirs';
  }

  @override
  String gameHudOpponentDetailWithLevel(
    Object opponent,
    Object level,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'vs $opponent · $level · $pipsLabel $mine–$theirs';
  }

  @override
  String get gameHudPips => 'Pipsid';

  @override
  String get gameHudCrawford => 'Crawford';

  @override
  String get gameHudDouble => 'Kahekordista';

  @override
  String get gameHudMoreActions => 'Veel toiminguid';

  @override
  String get gameHudSurrender => 'Loobu…';

  @override
  String get gameHudThinking => 'Mõtleb';

  @override
  String get gameHudDoubleBeforeRoll =>
      'Kahekordistada saab ainult enne veeretamist ja enda käigu ajal.';

  @override
  String get gameHudNoDoubleCrawford =>
      'Crawfordi partiis ei saa kahekordistada — see üks partii otsustab matši.';

  @override
  String get gameHudOnlyCubeOwner =>
      'Kahekordistada saab ainult kuubiku omanik, kelleks on praegu vastane.';

  @override
  String get gameHudDoubleUnavailable => 'Praegu ei saa kahekordistada.';

  @override
  String gameDialogScoreLine(
    Object whiteLabel,
    int whiteScore,
    int blackScore,
    Object blackLabel,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore — $blackScore $blackLabel (matšini $matchLength punktini)';
  }

  @override
  String gameDialogPlayerWon(Object winner, Object points) {
    return '$winner võidab selle partii ($points).';
  }

  @override
  String gameDialogPlayerWonGammon(Object winner, Object points) {
    return '$winner võidab selle partii ($points, gammon).';
  }

  @override
  String gameDialogPlayerWonBackgammon(Object winner, Object points) {
    return '$winner võidab selle partii ($points, backgammon).';
  }

  @override
  String gameDialogPlayerWonDrop(Object winner, Object points, Object loser) {
    return '$winner võidab selle partii ($points) — $loser keeldus kahekordistamisest.';
  }

  @override
  String gameDialogPlayerWonResignation(
    Object winner,
    Object points,
    Object loser,
  ) {
    return '$winner võidab selle partii ($points) — $loser loobus.';
  }

  @override
  String get gameDialogPassDeviceTitle => 'Anna seade edasi';

  @override
  String gameDialogPlayersTurn(Object name) {
    return '$name käik';
  }

  @override
  String get gameDialogTapToContinue => 'Jätkamiseks puuduta';

  @override
  String get gameDialogCubeOfferedTitle => 'Pakuti kahekordistamist';

  @override
  String gameDialogCubeOfferMessage(
    Object doubler,
    int value,
    Object tutorLine,
  ) {
    return '$doubler pakub kahekordistamist väärtuseni $value. Kas võtad vastu või loobud?$tutorLine';
  }

  @override
  String get gameDialogPass => 'Loobu';

  @override
  String get gameDialogTake => 'Võta vastu';

  @override
  String get gameDialogResignationTitle => 'Pakuti loobumist';

  @override
  String gameDialogResignationMessage(Object resigner, Object value) {
    return '$resigner pakub loobumist väärtuse $value eest. Kas nõustud?';
  }

  @override
  String get gameDialogResignSingle => 'üksik partii';

  @override
  String get gameDialogResignGammon => 'gammon';

  @override
  String get gameDialogResignBackgammon => 'backgammon';

  @override
  String get gameDialogDecline => 'Keeldu';

  @override
  String get gameDialogAccept => 'Nõustu';

  @override
  String get gameDialogGameOverTitle => 'Partii läbi';

  @override
  String get gameDialogNextGame => 'Järgmine partii';

  @override
  String get gameDialogMatchOverTitle => 'Matš läbi';

  @override
  String get gameDialogNobody => 'Mitte keegi';

  @override
  String gameDialogMatchWinner(Object winner) {
    return '$winner võidab matši.';
  }

  @override
  String get gameDialogSavedToHistory => 'Salvestatud ajalukku';

  @override
  String get gameDialogDone => 'Valmis';

  @override
  String get gameTapNoLegalMove =>
      'Selle nupuga ei saa ülejäänud täringutega käia';

  @override
  String get gameTapNoLegalMoveUndo =>
      'Selle nupuga ei saa ülejäänud täringutega käia — proovi käik tagasi võtta';

  @override
  String get gameDragHint =>
      'Nõuanne: lohista nuppe või puuduta neid — muuda seda seadetes';

  @override
  String get commonGotIt => 'Selge';

  @override
  String get gameHintStageBeforeHint =>
      'Tee kõigepealt täielik seaduslik käik ja küsi siis vihjet.';

  @override
  String get surrenderTitle => 'Loobu';

  @override
  String surrenderNamedConcedes(String player) {
    return '$player loobub käimasolevast partiist.';
  }

  @override
  String get surrenderConcedes => 'Loobud käimasolevast partiist.';

  @override
  String surrenderAvailableAtNamedTurn(String player) {
    return 'Saadaval $player käigu alguses';
  }

  @override
  String get surrenderAvailableAtYourTurn => 'Saadaval sinu käigu alguses';

  @override
  String get commonCancel => 'Tühista';

  @override
  String get surrenderSingle => 'Üksik (1)';

  @override
  String get surrenderGammon => 'Gammon (2)';

  @override
  String get surrenderBackgammon => 'Backgammon (3)';

  @override
  String get surrenderChoosePlayer => 'Kes sellest partiist loobub?';

  @override
  String get commonDone => 'Valmis';

  @override
  String get cubeDouble => 'Kahekordista';

  @override
  String get cubeBlockedOtherPlayersTurn => 'Praegu on teise mängija käik.';

  @override
  String get cubeBlockedCrawford =>
      'Crawfordi partiis ei saa kahekordistamiskuubikut kasutada.';

  @override
  String get cubeBlockedOwnedByOther =>
      'Kahekordistada saab ainult kuubiku omanik, kelleks on praegu vastane.';

  @override
  String get cubeBlockedUnavailable => 'Praegu ei saa kahekordistada.';

  @override
  String get gameStatusRolling => 'Veeretab…';

  @override
  String get gameStatusThinking => 'Mõtleb…';

  @override
  String gameStatusPlayersTurn(String player) {
    return '$player käik';
  }

  @override
  String get cubeAdviceOpponentTake => 'Kahekordista — vastane peaks võtma';

  @override
  String get cubeAdviceOpponentPass => 'Kahekordista — vastane peaks loobuma';

  @override
  String gameErrorBannerLabel(Object error) {
    return 'Viga: $error';
  }

  @override
  String get privacyTitle => 'Privaatsus ja andmed';

  @override
  String get privacyAppTitle => 'Freevia Backgammon Buddy';

  @override
  String get privacyIntro =>
      'Sellel lehel kirjeldatakse, kuidas rakendus sinu andmeid kasutab.';

  @override
  String get privacyLocalTitle => 'Mängud ja juhendamine sinu seadmes';

  @override
  String get privacyLocalBody =>
      'Kohalikud mängud, seaded, analüüsid ja harjutamise edenemine salvestatakse sellesse seadmesse. Backgammoni mängumootor ja juhendaja selgitused töötavad siin. Kustuta salvestatud mäng mängude arhiivist, et eemaldada ka selle salvestatud harjutused ja katsed. Kustuta õppimises üksikuid harjutusi või lähtesta harjutamise edenemine; kustuta kohalikud veaaruanded menüüs Seaded → Diagnostika. Seadme varundusseaded võivad kehtida ka mänguajaloole. Veebis sisselogimise andmeid hoitakse seadme kaitstud salvestusruumis.';

  @override
  String get privacyOnlineTitle => 'Võrgus ja läheduses mängimine';

  @override
  String get privacyOnlineBody =>
      'Võrgumäng saadab Google Firebase’i anonüümse mängijatunnuse, mängu seaded, käigud ja täringute sünkroonimise kirjed, et mõlemad mängijad saaksid sama mängu mängida. Selle seadme ajaloo kustutamine ei kustuta võrgukirjeid. Majutatud mängud aeguvad 30 päeva pärast loomist; ajastatud puhastus eemaldab nende pilvelogid. Mängukirjeid hoitakse EL-is; Firebase Authentication töötleb sisselogimisandmeid Ameerika Ühendriikides. Google’i ühendused on edastuse ajal krüptitud. Läheduses mängides vahetatakse teise seadmega mänguinfot krüptimata kohaliku ühenduse kaudu; kasuta usaldatud Wi-Fi-võrku.';

  @override
  String get privacyDiagnosticsTitle =>
      'Valikuline kasutus- ja krahhidiagnostika';

  @override
  String get privacyDiagnosticsBody =>
      'Andmete jagamine on välja lülitatud, kuni selle seadetes sisse lülitad. Sisselülitamisel saab Google Firebase kasutussündmusi, rakenduse ja seadme teavet, jõudlusmõõdikuid ning krahhiaruandeid, et rakendust paremaks muuta. Uue valikulise andmekogumise peatamiseks saad jagamise igal ajal välja lülitada. See ei kustuta juba saadetud andmeid. Kohalik diagnostika ja võrgumängud toimivad sellest valikust sõltumatult.';

  @override
  String get privacyCameraTitle => 'Kaamera läheduses olevate QR-koodide jaoks';

  @override
  String get privacyCameraBody =>
      'Valikuline kaamera skannib läheduses olevate mängude QR-koode. Pilte töödeldakse sinu seadmes ning neid ei salvestata ega laadita üles. Võid kaamerale juurdepääsu keelata ja sisestada korraldaja aadressi käsitsi. See versioon ei kasuta mikrofoni ega võimalda mängida füüsilise lauaga.';

  @override
  String get privacyFeedbackTitle => 'Tagasiside, mille otsustad saata';

  @override
  String get privacyFeedbackBody =>
      'Tagasiside avab ülevaatamiseks GitHubi probleemi mustandi. Mustandi avamisel saadetakse GitHubi rakenduse versioon ja platvorm; Diagnostikast saadetud tagasiside võib sisaldada ka vea üksikasju. Probleemi ei avaldata enne, kui selle esitad. Probleemid võivad olla avalikud, seega eemalda enne saatmist isiklik teave.';

  @override
  String get privacyContactTitle => 'Privaatsuse kontakt';

  @override
  String get privacyReadPolicy => 'Loe privaatsuspoliitikat';

  @override
  String get privacyPolicyOpenFailed => 'Privaatsuspoliitikat ei saanud avada.';

  @override
  String get privacySupportTitle => 'Abi ja tugi';

  @override
  String get privacySupportOpenFailed =>
      'Tuge ei saanud avada. Võta ühendust aadressil support@freevia.org.';

  @override
  String get privacyDeleteConfirmTitle =>
      'Kas kustutada veebitunnus ja andmed?';

  @override
  String get privacyDeleteConfirmBody =>
      'See lõpetab kohe mõlema mängija juurdepääsu selle tunnuse pilvemängudele ning esitab taotluse tunnuse ja jagatud võrgumängude logide kustutamiseks 30 päeva jooksul. Google’il võib pärast konto kustutamist kuluda kuni 180 päeva, et eemaldada Authenticationi andmed aktiivsetest süsteemidest ja varukoopiatest. Kohalik ajalugu ja harjutused jäävad sellesse seadmesse. Varem saadetud valikuline diagnostika on eraldi; küsi selle kohta aadressilt privacy@freevia.org. Seda taotlust ei saa tagasi võtta.';

  @override
  String get privacyRequestDeletion => 'Taotle kustutamist';

  @override
  String get privacyDeleteSectionTitle => 'Kustuta võrguandmed';

  @override
  String get privacyDeleteInstructions =>
      'Omandi kinnitamiseks kasuta sellesse seadmesse salvestatud sisselogimist. Mängijatunnus või kutsekood üksi ei tõesta omandiõigust. Ainult kohapeal mängijad ei vaja võrgukontot.';

  @override
  String get privacySendingRequest => 'Taotlust saadetakse…';

  @override
  String get privacyDeleteAction => 'Kustuta veebitunnus ja andmed';

  @override
  String get privacyDeleteRequested =>
      'Kustutamistaotlus on esitatud. Sellest veebitunnusest on välja logitud. Selle pilveandmed kustutatakse 30 päeva jooksul. Veebis uuesti mängimise alustamisel luuakse uus tunnus. Google’il võib Authenticationi andmete eemaldamiseks kuluda kuni 180 päeva. Abi saamiseks kirjuta aadressile privacy@freevia.org.';

  @override
  String get privacyDeleteRequestedSignOutFailed =>
      'Kustutamistaotlus on esitatud. Pilveandmed kustutatakse 30 päeva jooksul. Seade ei saanud salvestatud sisselogimist kustutada, kuid veebitunnus on edasistele mängudele juurdepääsuks blokeeritud. Google’il võib Authenticationi andmete eemaldamiseks kuluda kuni 180 päeva. Abi saamiseks kirjuta aadressile privacy@freevia.org.';

  @override
  String get privacyDeleteNoIdentity =>
      'Sellesse seadmesse pole salvestatud kasutatavat veebitunnust. Uut kontot ei loodud. Kui oled varem võrgus mänginud, kirjuta abi saamiseks aadressile privacy@freevia.org; majutatud mängud aeguvad 30 päeva pärast.';

  @override
  String get privacyDeleteRequestFailed =>
      'Kustutamistaotlust ei õnnestunud kinnitada. Kontrolli ühendust ja proovi uuesti või võta ühendust aadressil privacy@freevia.org.';

  @override
  String get privacyConsentTitle => 'Kas jagada kasutus- ja krahhiandmeid?';

  @override
  String get privacyConsentBody =>
      'See saadab Google Firebase’ile kasutussündmusi, rakenduse ja seadme teavet, krahhiaruandeid ning jõudlusmõõdikuid. Jagamine on vabatahtlik. Mängud ja juhendamine toimivad ka ilma selleta ning saad jagamise seadetes uuesti välja lülitada.';

  @override
  String get privacyKeepOff => 'Hoia väljas';

  @override
  String get privacyShareDiagnostics => 'Jaga diagnostikat';

  @override
  String get privacySaveFailed =>
      'Privaatsusvalikut ei saanud salvestada. Proovi uuesti.';

  @override
  String get privacySettingsSubtitle =>
      'Mis jääb sinu seadmesse ja mida jagatakse';

  @override
  String get privacyDiagnosticsSettingTitle =>
      'Jaga kasutus- ja krahhidiagnostikat';

  @override
  String get privacyDiagnosticsSettingSubtitle =>
      'Valikuline · vaikimisi väljas';

  @override
  String get lanScanToJoin => 'Liitumiseks skanni';

  @override
  String get lanScanHostCode => 'Skanni korraldaja koodi';

  @override
  String get lanEnterAddressInstead => 'Sisesta selle asemel aadress';

  @override
  String get lanQrAccessibilityLabel => 'QR-kood selle mänguga liitumiseks';

  @override
  String get lanJoinInstruction =>
      'Ava teises seadmes „Mängi läheduses“, vali „Liitu“ ja skanni see QR-kood.';

  @override
  String get lanTorch => 'Taskulamp';

  @override
  String get lanCameraPermissionDenied =>
      'Backgammon Buddy ei saa kaamerat kasutada. Luba kaamerale juurdepääs seadme seadetes või sisesta teises seadmes kuvatud aadress käsitsi.';

  @override
  String get lanCameraUnsupported =>
      'See seade ei saa QR-koode skannida. Sisesta teises seadmes kuvatud aadress käsitsi.';

  @override
  String get lanCameraStartFailed =>
      'Kaamerat ei saanud käivitada. Sisesta teises seadmes kuvatud aadress käsitsi.';

  @override
  String get lanPointCameraAtQr => 'Suuna kaamera teise seadme QR-koodile.';

  @override
  String get physicalBuddyUnavailableTitle => 'Backgammon Buddy';

  @override
  String get physicalBuddyUnavailableBody =>
      'Selles versioonis ei saa mängida füüsilise lauaga. Ekraanil mängimine, juhendamine ja harjutamine on avalehel saadaval.';

  @override
  String get homePlayWithBuddy => 'Mängi Buddyga';

  @override
  String get homeBuddyShort => 'Buddy';

  @override
  String boardSemanticsLabel(Object status) {
    return 'Backgammoni laud. $status';
  }

  @override
  String get boardWhiteToRoll => 'Valge kord: veereta täringuid.';

  @override
  String get boardBlackToRoll => 'Musta kord: veereta täringuid.';

  @override
  String boardWhiteToMove(Object die1, Object die2) {
    return 'Valge käik, veereta $die1 ja $die2.';
  }

  @override
  String boardBlackToMove(Object die1, Object die2) {
    return 'Musta käik, veereta $die1 ja $die2.';
  }

  @override
  String get boardDoubleOffered => 'Pakuti kahekordistamist.';

  @override
  String get boardResignationOffered => 'Pakuti alistumist.';

  @override
  String get boardGameOver => 'Mäng on läbi.';

  @override
  String feedbackBugTitle(Object version, Object platform) {
    return '[Viga]: Backgammon Buddy $version ($platform)';
  }

  @override
  String get feedbackIdeaTitle => '[Idee]: Backgammon Buddy';

  @override
  String get feedbackBugSummary => 'Asenda see juhtunu lühikese kirjeldusega.';

  @override
  String get feedbackBugReproduction =>
      'Asenda see probleemi põhjustanud sammudega.';

  @override
  String get feedbackBugExpected => 'Asenda see oodatud tulemuse kirjeldusega.';

  @override
  String get feedbackIdeaNeed =>
      'Asenda see kirjeldusega, mida soovisid teha või õppida.';

  @override
  String get feedbackIdeaSuggestion =>
      'Asenda see muudatusega, millest oleks sinu arvates abi.';

  @override
  String get feedbackExcerptTruncated =>
      '(lühendatud — täieliku logi saamiseks kasuta diagnostikakuval valikut „Kopeeri lõikelauale“)';

  @override
  String get boardWhiteToMoveNoRoll => 'Valge käik.';

  @override
  String get boardBlackToMoveNoRoll => 'Musta käik.';

  @override
  String get feedbackFieldVersion => 'Rakenduse versioon';

  @override
  String get feedbackFieldPlatform => 'Platvorm';

  @override
  String get feedbackFieldSummary => 'Mis juhtus';

  @override
  String get feedbackFieldReproduction => 'Taasesitamise sammud';

  @override
  String get feedbackFieldExpected => 'Oodatud tulemus';

  @override
  String get feedbackFieldNeed => 'Mida soovisid teha';

  @override
  String get feedbackFieldIdea => 'Soovitatud muudatus';

  @override
  String get buddySetupTitle => 'Mängige Buddy-iga';

  @override
  String get buddySetupSideLabel => 'Buddy mängib';

  @override
  String get buddySetupSeatLabel => 'Sinu istekoht';

  @override
  String get buddySetupSeatNear => 'Telefoni järgi';

  @override
  String get buddySetupSeatFar => 'Vastupidi';

  @override
  String get buddySetupSeatHelp =>
      'Kummal pool tahvlit olete. See on see, kuidas Buddy nummerdab punkte ja eristab teie avamisvormi omast.';

  @override
  String get buddySetupVoiceLabel => 'Kuidas Buddy räägib';

  @override
  String get buddySetupVoiceTerse => 'Lühidalt';

  @override
  String get buddySetupVoiceFriendly => 'Sõbralik';

  @override
  String get buddySetupVoiceTerseHelp =>
      '“13/8, 24/22” – märge, viis, kuidas kaks mängijat lauas tegelikult räägivad.';

  @override
  String get buddySetupVoiceFriendlyHelp =>
      '\"Viige üks kabe 13-lt 8-le ja üks 24-lt 22-le.\"';

  @override
  String get buddySetupTutorHelp =>
      'Õpetaja kommentaarid ja liigutuste selgitused järgivad teie salvestatud juhendaja eelistusi jaotises Seaded. Buddy annab aeg-ajalt tagasisidet pärast teie näidendeid; trükitud täringud ja käsitsi liigutused töötavad samamoodi.';

  @override
  String get buddySetupCalibrate => 'Kalibreerige tahvel';

  @override
  String get buddyFixAim => 'Kinnitage eesmärk';

  @override
  String get buddyWaitingForOpening => 'Buddy ootab viset, mis matši alustab.';

  @override
  String get buddyPromptLostBoard =>
      'Buddy kaotas tahvli. Kinnitage siht ja matš jätkub sealt, kus see peatus.';

  @override
  String get buddyPromptWaitingPicture =>
      'Ootan pilti. Buddy oskab lugeda. Midagi pole kadunud.';

  @override
  String get buddyPromptTypeDice =>
      'Buddy ei leia täringut. Tippige selle asemel rull.';

  @override
  String get buddyPromptPlay =>
      'Mängige oma mängu laual. Puudutage seda siin, kui Buddy seda ei näe.';

  @override
  String get buddyPromptWhichPlay => 'Mis näidend see oli?';

  @override
  String get buddyPromptCube =>
      'Buddy pakub kahekordistamist. Kas võtad vastu või loobud?';

  @override
  String get buddyPromptMakeMove =>
      'Tehke Buddyi käik laual, siis jätkab Buddy.';

  @override
  String get buddyPromptThinking => 'Buddy mõtleb.';

  @override
  String get buddyPromptWaitingCalibration => 'Ootab kalibreerimist.';

  @override
  String get buddyPromptMirrorNoDetail =>
      'Buddy ei näe endiselt oma liikumist. Allpool olev tahvel on positsioon, mida see hoiab.';

  @override
  String get buddyPromptNotLegal => 'See pole juriidiline mäng.';

  @override
  String buddyPromptNotLegalReason(String reason) {
    return 'See pole juriidiline mäng. $reason';
  }

  @override
  String get buddyThrowOpening =>
      'Veeretage avavisked — üks täring kummalegi. Suurema silmade arvuga mängija alustab.';

  @override
  String get buddyThrowUser => 'Veereta oma täringuid.';

  @override
  String get buddyThrowBuddy => 'Veereta Buddy täringuid.';

  @override
  String get buddyMatchOver => 'Matš on läbi.';

  @override
  String get buddyYouWin => 'Sa võidad matši.';

  @override
  String get buddyBuddyWins => 'Buddy võidab matši.';

  @override
  String get buddyDoubleNoGame =>
      'Duubeldamiseks pole veel mängu – avavise tuleb enne.';

  @override
  String get buddyDoubleBeforeRoll =>
      'Enne veeremist saate kahekordistada ainult oma käigul.';

  @override
  String get buddyDoubleCrawford =>
      'Crawfordi mängus ei kahelda – see üksikmäng otsustab matši.';

  @override
  String get buddyDoubleNotOwner =>
      'Ainult kuubiku omanik saab kahekordistada ja praegu kuulub see teisele poolele.';

  @override
  String get buddyDoubleUnavailable => 'Kahekordistamine pole praegu saadaval.';

  @override
  String get buddyLookingAtBoard => 'Buddy vaatab tahvlit.';

  @override
  String get buddyCameraPlayFallback =>
      'Saate siiski matši mängida: tippige täringuplokile iga veeretamine ja koputage oma mänge alloleval laual.';

  @override
  String get buddySkipCheck => 'Jäta see kontroll vahele';

  @override
  String get buddyFixedIt => 'Olen selle parandanud';

  @override
  String get buddyDrop => 'Langetage';

  @override
  String get buddyTake => 'Võtke';

  @override
  String get buddyDone => 'Valmis';

  @override
  String get buddyTranscriptLabel => 'Mida Buddy ütles';

  @override
  String get buddyUndo => 'Võta tagasi';

  @override
  String get buddyConfirm => 'Kinnita';

  @override
  String get buddyDice => 'Täringud';

  @override
  String get buddyDouble => 'Kahekordne';

  @override
  String get buddyDicePadTitle => 'Mida täringud näitasid?';

  @override
  String get buddyEnterRoll => 'Sisesta rulli';

  @override
  String get buddyContextBeforeGame => 'Mängige Buddy-iga';

  @override
  String buddyContextMatchScore(
    String you,
    String buddy,
    String length,
    String number,
  ) {
    return 'Teie $you–$buddy Buddy · kuni $length · Mäng $number';
  }

  @override
  String get buddyCameraUnavailable =>
      'Kaamerat ei saanud käivitada. Kontrollige õigusi ja proovige uuesti.';

  @override
  String get buddyCameraPermission =>
      'Backgammon Buddy ei oma luba kaamera kasutamiseks. Lubage oma seadme seadetes kaamerale juurdepääs ja proovige uuesti.';

  @override
  String get buddyCalibrationTitle => 'Näidake tahvlit Buddy';

  @override
  String get buddyCalibrationCornersFold =>
      'Lohistage neli välimist käepidet vildi nurkadele, mitte puitveljele, ja neli väikest käepidet õmblustele, kus hing puutub kokku kaugema ja lähima servaga.';

  @override
  String get buddyCalibrationCornersFlat =>
      'Lohistage iga käepide vildi nurgale - mängupinnale, mitte seda ümbritsevale puidust servale.';

  @override
  String get buddyCalibrationCheckLines =>
      'Seejärel kontrollige mõlemat poolt kaksteist rida allapoole: igaüks peaks kulgema mööda teie tahvli punkti. Joon, mis oma punktist mööda ei näe, on käepide, mis vajab torkimist.';

  @override
  String get buddyCalibrationSeatQuestion => 'Milline pool on teie kodulaud?';

  @override
  String get buddyCalibrationSeatHelp =>
      'Pildi allservale lähim pool. See fikseerib punktide numbrid, nii et ülaltoodud jooned liiguvad sellega kaasa.';

  @override
  String get buddyCalibrationCaptureWait =>
      'Hoidke telefoni paigal. Buddy ootab, kuni pilt settib, enne kui ta selle tahvli ära õpib.';

  @override
  String get buddyCalibrationConfirmQuestion => 'Kas see on teie tahvel?';

  @override
  String get buddyCalibrationConfirmFallback =>
      'Buddy vaatab äsja õpitud tahvlit.';

  @override
  String get buddyCalibrationConfirmHelp =>
      'Pildile joonistatud mehed on Buddyi arvates tahvlil. Kui mõni neist on vales kohas, alusta otsast – see maksab praegu sekundeid ja mäng hiljem.';

  @override
  String get buddyCalibrationNext => 'Edasi';

  @override
  String get buddyCalibrationBack => 'Tagasi';

  @override
  String get buddyCalibrationCapture => 'Jäädvusta';

  @override
  String get buddyCalibrationStartOver => 'Alusta otsast';

  @override
  String get buddyCalibrationLooksRight => 'Näeb õige välja';

  @override
  String get buddyCalibrationCornersInvalid =>
      'Need neli käepidet ei piirdu tahvliga – üks neist on teise risti ristunud. Lohistage need tagasi vildi nurkadesse.';

  @override
  String get buddyCalibrationPrepTitle => 'Esiteks kolm asja';

  @override
  String get buddyCalibrationRemoveDiceTitle => 'Eemalda täringud laualt.';

  @override
  String get buddyCalibrationRemoveDiceBody =>
      'Buddy õpib nüüd tühja lauda. Kui täring jääb lauale, õpib Buddy selle laua osana selgeks ega näe selles mängukorras enam täringuid.';

  @override
  String get buddyCalibrationSetupCheckersTitle =>
      'Seadke mehed mängu alguseks valmis.';

  @override
  String get buddyCalibrationSetupCheckersBody =>
      'Kolmkümmend kabet tuntud kohtades on see, kuidas Buddy õpib selle laua kaks värvi selgeks, ilma et talle öeldaks, mis need on.';

  @override
  String get buddyCalibrationFitBoardTitle =>
      'Sobitage pildile kogu mänguväli.';

  @override
  String get buddyCalibrationFitBoardBody =>
      'Seejärel jätke telefon sinna, kus see on. Kui see liigub, ütleb Buddy seda ja saate nurki tagasi lükata.';

  @override
  String get buddyCalibrationBoardKind => 'Mis tahvliga on tegu?';

  @override
  String get buddyCalibrationFlatBoard => 'Lamelaud';

  @override
  String get buddyCalibrationFoldingBoard => 'Kokkupandav korpus';

  @override
  String get buddyCalibrationBoardKindHelp =>
      'Kokkupandav laud vajab hingeõmblustel nelja lisakäepidet.';

  @override
  String get buddyCalibrationNoCameraBody =>
      'Buddy-režiim jälgib tõelist tahvlit, nii et see ei saa käivituda ilma kaamerata. Kõik muu rakenduses sisalduv ei muutu.';

  @override
  String buddyHandleHingeSeam(int number) {
    return 'Hingeõmblus $number 4-st';
  }

  @override
  String buddyHandleCorner(int number) {
    return 'Laua nurk $number 4-st';
  }

  @override
  String get buddyNudgeLeft => 'Nihutage vasakule';

  @override
  String get buddyNudgeRight => 'Nihutage paremale';

  @override
  String get buddyNudgeUp => 'Tõstke üles';

  @override
  String get buddyNudgeDown => 'Nihutage alla';

  @override
  String get buddyCalibrationProblemCorners =>
      'Need neli nurka ei piirdu tahvliga. Lohistage iga käepide mänguvälja nurka ja proovige uuesti.';

  @override
  String get buddyCalibrationProblemFoldCorners =>
      'Need kaheksa punkti ei kirjelda voltimislauda. Asetage neli mänguvälja nurkadele ja neli hingeõmblustele, seejärel proovige uuesti.';

  @override
  String get buddyCalibrationProblemUnreadable =>
      'Tahvlit endast ei saa aru – kõik selle osad on kaetud või kadunud varju või sära. Tühjendage tahvel, lisage veidi valgust ja proovige uuesti.';

  @override
  String buddyCalibrationProblemRegionUnreadable(String region) {
    return 'Ma ei saa $region-i teha – sellel võib midagi toetuda või see tahvli nurk on lugemiseks liiga tume. Tühjendage see või lisage veidi valgust ja proovige uuesti.';
  }

  @override
  String get buddyCalibrationProblemColours =>
      'Kaks kabekomplekti näevad siit liiga sarnased välja. Tavaliselt parandab seda rohkem valgust või nurk, kus tahvlil on vähem pimestamist.';

  @override
  String buddyCalibrationProblemWrongChecker(int number) {
    return 'Kabe ei ole lähteasendis — punkt $number hoiab valet värvi. Seadistage laud mängu alustamiseks ja seejärel kalibreerige uuesti.';
  }

  @override
  String get buddyCalibrationProblemOverexposed =>
      'Tahvlil on nii palju valgust, et selle värvid uhuvad üksteise sisse. Hämardage valgust või liigutage telefoni nii, et lamp sellele otse tagasi ei paistaks.';

  @override
  String get buddyCalibrationProblemReadBack =>
      'Ma võin seda tahvlit lugeda, kuid mitte kui algavat mängu. Seadistage mehed mängu alguseks, seejärel kalibreerige uuesti.';

  @override
  String get buddyCalibrationProblemStacks =>
      'Ma võin seda tahvlit lugeda, kuid ma ei saa aru, kui kaugel üks kabe teisest taga istub - nii et ma saaksin numbreid valesti. Natuke rohkem valgust lähipunktides või veidi kõrgem kaameranurk parandab selle tavaliselt.';

  @override
  String get buddyCalibrationProblemNotVisible =>
      'Ma ei näe kogu tahvlit. Liigutage telefon tagasi või lohistage nurgad mänguväljale.';

  @override
  String buddyConfirmBoardOutOfFrame(String region) {
    return 'Ma ei näe enam tervet tahvlit - $region on väljaspool pilti. Joondage kaamera uuesti või kontrollige nurki uuesti.';
  }

  @override
  String get buddyConfirmStartingPosition =>
      'See näeb välja nagu lähtepositsioon.';

  @override
  String get buddyConfirmNoCheckers =>
      'Ma ei näe kabe kõikjal, kus mäng algab. Seadke mehed mängu alguseks valmis ja proovige uuesti.';

  @override
  String buddyConfirmWrongPosition(String details, String more) {
    return 'Laud ei ole mängu alustamiseks seadistatud: $details$more.';
  }

  @override
  String buddyConfirmRegionEmpty(String region, String side) {
    return '$region tundub tühi, kuid mäng algab seal $side-iga';
  }

  @override
  String buddyConfirmRegionUnexpected(String region, String side) {
    return '$region-l on peal $side, kuid mäng algab tühjaga';
  }

  @override
  String buddyConfirmRegionWrongSide(
    String region,
    String observed,
    String expected,
  ) {
    return '$region-l on $observed, kus mäng algab numbriga $expected';
  }

  @override
  String get buddyReadabilityMotion =>
      'Hoidke hetk paigal – kaotan tahvli, kui telefon liigub.';

  @override
  String get buddyReadabilityWrongFrame =>
      'Pilt, mis mulle antakse, ei ole see, millele see tahvel oli üles seatud, nii et ma ei saa sellele midagi ritta seada. Seadke laud siit uuesti üles.';

  @override
  String get buddyReadabilityBlur =>
      'Pilt on tahvli lugemiseks liiga pehme. Andke kaamerale hetk teravustamiseks.';

  @override
  String get buddyReadabilityCalibrationStale =>
      'Tahvel pole seal, kus see oli, kui ma seda õppisin. Joondage nurgad uuesti ja ma valin mängu otse üles.';

  @override
  String get buddyReadabilityOccluded =>
      'Midagi katab osa tahvlist. Ma jätkan niipea, kui see on selge.';

  @override
  String get buddyReadabilityClear => 'Ma näen tahvlit.';

  @override
  String get buddyReadabilityColorChanged =>
      'Tahvli tuli on muutnud värvi, nii et tahvel ei näe enam välja selline, nagu õppisin. Joondage nurgad uuesti selle valguse alla ja ma valin mängu otse üles.';

  @override
  String get buddyReadabilityTooDark =>
      'Tahvli lugemiseks on liiga pime. Natuke veel valgust ja jätkan seal, kus olime.';

  @override
  String get buddyReadabilityTooBright =>
      'Tahvlil on nii palju valgust, et selle värvid jooksevad üksteisega kokku. Hämardage seda või liigutage telefoni nii, et lamp ei paistaks otse tagasi.';

  @override
  String buddyPromptBeliefMirror(String reason) {
    return 'Buddy ei näe endiselt oma liikumist - $reason.';
  }

  @override
  String buddyCameraUnavailablePlay(String cameraMessage) {
    return '$cameraMessage\n\nSaate siiski matši mängida: tippige täringuplokile iga veeretamine ja koputage oma mänge alloleval laual.';
  }

  @override
  String get buddyCameraGenericError =>
      'Kaamerat ei saanud käivitada. Kontrollige õigusi ja proovige uuesti.';

  @override
  String buddyRegionPoint(int number) {
    return '$number-punkt';
  }

  @override
  String get buddyRegionBar => 'baar';

  @override
  String get buddyRegionWhiteTray => 'Valge kandepind';

  @override
  String get buddyRegionBlackTray => 'Musta kandepind';

  @override
  String get buddyRegionDiceZone => 'tahvli keskel';

  @override
  String get buddyCalibrationProblemVisible =>
      'Ma ei näe kogu tahvlit. Liigutage telefon tagasi või lohistage nurgad mänguväljale.';

  @override
  String buddyConfirmMore(int number) {
    return '(ja veel $number)';
  }

  @override
  String get buddyDiceOpeningCaption =>
      'Kumbki viskab ühe täringu. Suurema silmade arvuga mängija alustab.';

  @override
  String get buddyDiceOpeningFirst => 'Valge täring';

  @override
  String get buddyDiceOpeningSecond => 'Musta täring';

  @override
  String get buddyDiceRegularCaption =>
      'Kaks nägu laual, kummaski järjekorras.';

  @override
  String get buddyDiceRegularFirst => 'Üks täring';

  @override
  String get buddyDiceRegularSecond => 'Teine';
}
