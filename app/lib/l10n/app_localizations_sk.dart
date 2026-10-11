// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class AppLocalizationsSk extends AppLocalizations {
  AppLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get homeTagline => 'Zlepšite svoju hru s trénerom';

  @override
  String get settings => 'Nastavenia';

  @override
  String get playVsComputer => 'Hrať proti počítaču';

  @override
  String get twoPlayers => 'Dvaja hráči';

  @override
  String get playNearby => 'Hrať nablízku';

  @override
  String get playOnline => 'Hrať online';

  @override
  String get learningPractice => 'Učenie a tréning';

  @override
  String get gamesArchive => 'Archív hier';

  @override
  String get followSystem => 'Jazyk zariadenia';

  @override
  String get white => 'Biely';

  @override
  String get black => 'Čierny';

  @override
  String get random => 'Náhodne';

  @override
  String get startMatch => 'Začať hru';

  @override
  String get tutor => 'Tréner';

  @override
  String get noMovesPass => 'Žiadne ťahy — pas';

  @override
  String get undo => 'Späť';

  @override
  String get confirm => 'Potvrdiť';

  @override
  String get roll => 'Hodiť';

  @override
  String get hint => 'Rada';

  @override
  String get tutoringStyle => 'Štýl trénera';

  @override
  String get tutorStyleCoach => 'Tréner';

  @override
  String get tutorStyleHintsOnly => 'Iba rady';

  @override
  String get tutorStyleTryFirst => 'Najprv skús';

  @override
  String get tutorCoachDescription =>
      'Upozornenia na pozície, spätná väzba k ťahom, rady a odporúčania ku kocke.';

  @override
  String get tutorHintsDescription =>
      'Zoradené ťahy na požiadanie. Upozornenia na pozície a automatická spätná väzba po ťahu zostanú vypnuté.';

  @override
  String get tutorTryFirstDescription =>
      'Najprv si priprav svoj ťah a až potom zobraz zoradené možnosti alebo známku; navigácia na šachovnici zostane zapnutá.';

  @override
  String get tutorCustomDescription =>
      'Vlastná kombinácia. Upravte ľubovoľnú z možností nižšie.';

  @override
  String get tutorBestMoveHints => 'Rady k najlepšiemu ťahu';

  @override
  String get tutorRevealRankedPlays =>
      'Zobraziť zoradené ťahy počas rozhodovania';

  @override
  String get tutorMoveExplanations => 'Vysvetlenia ťahov';

  @override
  String get tutorCompareEstimates => 'Porovnať odhady a zmeny na šachovnici';

  @override
  String get tutorGameCommentary => 'Komentár k hre';

  @override
  String get tutorPositionPrompts =>
      'Upozornenia na pozície a spätná väzba po každom ťahu';

  @override
  String get tutorCubeAdvice => 'Rady ku kocke';

  @override
  String get tutorMatchAwareCubeAdvice =>
      'Odporúčania na zdvojenie, prijatie a vzdanie s ohľadom na skóre zápasu';

  @override
  String get tutorTryMoveFirst => 'Najprv skús ťah';

  @override
  String get tutorStageBeforeHints =>
      'Priprav svoj ťah pred zobrazením rád alebo známky';

  @override
  String get tutorStaticEstimateNote =>
      'Rýchly statický odhad (0-ply, bez rolloutov); poznámky opisujú zmeny na šachovnici a možné odpovede, nie to, čo sa určite stane.';

  @override
  String get tutorWhatToWatchNext => 'Čo sledovať ďalej';

  @override
  String get tutorMoreBoardDetails => 'Viac podrobností o šachovnici';

  @override
  String get tutorEstimatesAndHowTheyWork => 'Odhady a ich fungovanie';

  @override
  String get tutorEstimateLimitations =>
      'Hĺbka: statické neurónové vyhodnotenie každého legálneho ťahu (0-ply), bez rolloutov alebo hľadania budúcich odpovedí. MWC zohľadňujúca skóre váži odhady výsledkov podľa skóre zápasu a aktuálnej kocky; nemodeluje budúce akcie s kockou. Equity bez kocky predstavuje očakávané body pri kocke 1, keď skóre nie je dostupné. Pozorovania šachovnice opisujú ťah, nie vnútorné uvažovanie neurónového enginu. Takmer rovnaké odhady neznamenajú istotu; kalibrovaný interval spoľahlivosti sa neposkytuje.';

  @override
  String get tutorPointNumberNote =>
      'Čísla polí v učebných poznámkach sa počítajú od domácej dosky hráča, ktorý je na ťahu.';

  @override
  String get tutorHittingRollNote =>
      'Počet hodov umožňujúcich zásah zahŕňa všetkých 36 usporiadaných výsledkov kociek a legálne priame aj nepriame zásahy; ide o príležitosti, nie predpoveď súperovej voľby.';

  @override
  String get tutorNoEvaluatedAlternatives =>
      'Pre tento ťah nie sú k dispozícii vyhodnotené alternatívy.';

  @override
  String get tutorForcedPassNoDecision =>
      'Pri vynútenom pase sa nerozhoduje o ťahu kameňmi.';
}
