// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get homeTagline => 'Kehitä peliäsi valmentajan avulla';

  @override
  String get settings => 'Asetukset';

  @override
  String get playVsComputer => 'Pelaa tietokonetta vastaan';

  @override
  String get twoPlayers => 'Kaksi pelaajaa';

  @override
  String get playNearby => 'Pelaa lähistöllä';

  @override
  String get playOnline => 'Pelaa verkossa';

  @override
  String get learningPractice => 'Opi ja harjoittele';

  @override
  String get gamesArchive => 'Peliarkisto';

  @override
  String get followSystem => 'Käytä laitteen kieltä';

  @override
  String get white => 'Valkoinen';

  @override
  String get black => 'Musta';

  @override
  String get random => 'Satunnainen';

  @override
  String get startMatch => 'Aloita peli';

  @override
  String get tutor => 'Valmentaja';

  @override
  String get noMovesPass => 'Ei siirtoja — ohita';

  @override
  String get undo => 'Kumoa';

  @override
  String get confirm => 'Vahvista';

  @override
  String get roll => 'Heitä';

  @override
  String get hint => 'Vihje';

  @override
  String get tutoringStyle => 'Opetustyyli';

  @override
  String get tutorStyleCoach => 'Valmentaja';

  @override
  String get tutorStyleHintsOnly => 'Vain vinkkejä';

  @override
  String get tutorStyleTryFirst => 'Kokeile ensin';

  @override
  String get tutorCoachDescription =>
      'Peliasennon ohjeet, palautetta siirroista, vinkkejä ja tuplauskuution neuvoja.';

  @override
  String get tutorHintsDescription =>
      'Parhaat siirrot näytetään pyydettäessä. Reaaliaikaiset peliasento-ohjeet ja automaattinen siirtopalaute ovat pois käytöstä.';

  @override
  String get tutorTryFirstDescription =>
      'Tee oma siirtosi ennen kuin näet järjestetyt vinkit tai arvion; peliasennon ohjeet pysyvät käytössä.';

  @override
  String get tutorCustomDescription =>
      'Mukautettu yhdistelmä. Muuta mitä tahansa alla olevaa asetusta.';

  @override
  String get tutorBestMoveHints => 'Vinkit parhaaseen siirtoon';

  @override
  String get tutorRevealRankedPlays =>
      'Näytä järjestetyt siirrot päätöksen tueksi';

  @override
  String get tutorMoveExplanations => 'Siirtojen selitykset';

  @override
  String get tutorCompareEstimates => 'Vertaa arvioita ja pelilaudan muutoksia';

  @override
  String get tutorGameCommentary => 'Pelikommentointi';

  @override
  String get tutorPositionPrompts =>
      'Peliasento-ohjeita ja palautetta jokaisen siirron jälkeen';

  @override
  String get tutorCubeAdvice => 'Kuutioneuvot';

  @override
  String get tutorMatchAwareCubeAdvice =>
      'Ottelutilanteen huomioivat tuplaus-, otto- ja passausneuvot';

  @override
  String get tutorTryMoveFirst => 'Kokeile siirtoa ensin';

  @override
  String get tutorStageBeforeHints =>
      'Tee nykyinen siirtosi ennen vinkkien tai arvion näyttämistä';

  @override
  String get tutorStaticEstimateNote =>
      'Nopea staattinen arvio (0 siirtoa eteenpäin, ei simulaatioita); huomautukset kuvaavat laudan muutoksia ja mahdollisia vastauksia, eivät lupaa tulevasta.';

  @override
  String get tutorWhatToWatchNext => 'Mitä kannattaa seurata seuraavaksi';

  @override
  String get tutorMoreBoardDetails => 'Lisää tietoja laudasta';

  @override
  String get tutorEstimatesAndHowTheyWork => 'Arviot ja niiden toiminta';

  @override
  String get tutorEstimateLimitations =>
      'Syvyys: staattinen neuroverkon arvio jokaisen laillisen siirron jälkeen (0 siirtoa eteenpäin), ilman simulaatioita tai tulevien vastausten hakua. MWC huomioi tulosarvioissa ottelutilanteen ja nykyisen kuution, mutta ei mallinna tulevia kuutiopäätöksiä. Jos tulosta ei ole saatavilla, kuutioton equity tarkoittaa odotettuja pisteitä kuutiolla 1. Pelilaudan havainnot kuvaavat siirtoa, eivät neuroverkon sisäistä päättelyä. Lähes tasaiset arviot eivät tarkoita varmuutta; kalibroitua luottamusväliä ei ole.';

  @override
  String get tutorPointNumberNote =>
      'Opetusmuistiinpanojen pisteet lasketaan vuorossa olevan pelaajan kotilaudasta.';

  @override
  String get tutorHittingRollNote =>
      'Lyöntimahdollisuuksien määrä sisältää kaikki 36 järjestettyä noppatulosta ja lailliset suorat tai epäsuorat lyönnit; kyse on mahdollisuuksista, ei ennusteesta vastustajan valinnasta.';

  @override
  String get tutorNoEvaluatedAlternatives =>
      'Tälle siirrolle ei ole arvioituja vaihtoehtoja.';

  @override
  String get tutorForcedPassNoDecision =>
      'Pakotettu ohitus ei sisällä nappuloiden siirtopäätöstä.';
}
