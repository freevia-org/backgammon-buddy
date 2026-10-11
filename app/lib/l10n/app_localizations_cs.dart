// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsCs extends AppLocalizations {
  AppLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get homeTagline => 'Zlepšete svou hru s trenérem';

  @override
  String get settings => 'Nastavení';

  @override
  String get playVsComputer => 'Hrát proti počítači';

  @override
  String get twoPlayers => 'Dva hráči';

  @override
  String get playNearby => 'Hrát poblíž';

  @override
  String get playOnline => 'Hrát online';

  @override
  String get learningPractice => 'Učení a trénink';

  @override
  String get gamesArchive => 'Archiv her';

  @override
  String get followSystem => 'Jazyk zařízení';

  @override
  String get white => 'Bílý';

  @override
  String get black => 'Černý';

  @override
  String get random => 'Náhodně';

  @override
  String get startMatch => 'Začít hru';

  @override
  String get tutor => 'Trenér';

  @override
  String get noMovesPass => 'Žádné tahy — pas';

  @override
  String get undo => 'Zpět';

  @override
  String get confirm => 'Potvrdit';

  @override
  String get roll => 'Házet';

  @override
  String get hint => 'Nápověda';

  @override
  String get tutoringStyle => 'Výukový styl';

  @override
  String get tutorStyleCoach => 'Trenér';

  @override
  String get tutorStyleHintsOnly => 'Pouze nápovědy';

  @override
  String get tutorStyleTryFirst => 'Nejdřív zkusit';

  @override
  String get tutorCoachDescription =>
      'Nápovědy k pozici, zpětná vazba k tahům, tipy a rady ke zdvojovací kostce.';

  @override
  String get tutorHintsDescription =>
      'Pořadí tahů zobrazit na vyžádání. Průběžné nápovědy k pozici a automatická zpětná vazba jsou vypnuté.';

  @override
  String get tutorTryFirstDescription =>
      'Nejprve zahrajte svůj tah a teprve potom zobrazte nápovědy nebo jeho hodnocení; rady k pozici zůstávají zapnuté.';

  @override
  String get tutorCustomDescription =>
      'Vlastní kombinace. Upravte kteroukoli z možností níže.';

  @override
  String get tutorBestMoveHints => 'Nápovědy k nejlepšímu tahu';

  @override
  String get tutorRevealRankedPlays =>
      'Při rozhodování zobrazovat seřazené tahy';

  @override
  String get tutorMoveExplanations => 'Vysvětlení tahů';

  @override
  String get tutorCompareEstimates => 'Porovnejte odhady a změny na desce';

  @override
  String get tutorGameCommentary => 'Komentář ke hře';

  @override
  String get tutorPositionPrompts =>
      'Nápovědy k pozici a zpětná vazba po každém tahu';

  @override
  String get tutorCubeAdvice => 'Rady ke kostce';

  @override
  String get tutorMatchAwareCubeAdvice =>
      'Doporučení ke zdvojení, přijetí či odmítnutí podle skóre zápasu';

  @override
  String get tutorTryMoveFirst => 'Nejprve tah vyzkoušet';

  @override
  String get tutorStageBeforeHints =>
      'Zahrajte svůj aktuální tah před zobrazením nápověd nebo jeho hodnocení';

  @override
  String get tutorStaticEstimateNote =>
      'Rychlý statický odhad (0 tahů dopředu, bez simulací); poznámky popisují změny na desce a možné odpovědi, nejde o záruku dalšího vývoje.';

  @override
  String get tutorWhatToWatchNext => 'Na co se zaměřit dál';

  @override
  String get tutorMoreBoardDetails => 'Další podrobnosti o desce';

  @override
  String get tutorEstimatesAndHowTheyWork => 'Odhady a jejich fungování';

  @override
  String get tutorEstimateLimitations =>
      'Hloubka: statické neuronové vyhodnocení po každém legálním tahu (0 tahů dopředu), bez simulací a hledání budoucích odpovědí. MWC při vážení odhadů výsledků zohledňuje skóre zápasu a aktuální kostku, ale nemodeluje budoucí rozhodnutí o kostce. Pokud skóre není dostupné, equity bez kostky jsou očekávané body při kostce na 1. Pozorování popisují tah, nikoli vnitřní uvažování neuronové sítě. Téměř shodné výsledky neznamenají jistotu; interval spolehlivosti není kalibrován.';

  @override
  String get tutorPointNumberNote =>
      'Čísla bodů v učebních poznámkách se počítají od domácí desky hráče na tahu.';

  @override
  String get tutorHittingRollNote =>
      'Počet možností zásahu zahrnuje všech 36 uspořádaných výsledků hodu a legální přímé i nepřímé zásahy; jde o příležitosti, nikoli předpověď soupeřovy volby.';

  @override
  String get tutorNoEvaluatedAlternatives =>
      'Pro tento tah nejsou k dispozici vyhodnocené alternativy.';

  @override
  String get tutorForcedPassNoDecision =>
      'Vynucený pas neobsahuje rozhodnutí o tahu dámami.';
}
