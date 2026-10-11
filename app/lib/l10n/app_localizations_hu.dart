// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppLocalizationsHu extends AppLocalizations {
  AppLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get homeTagline => 'Fejleszd a játékod egy edzővel';

  @override
  String get settings => 'Beállítások';

  @override
  String get playVsComputer => 'Játék a számítógép ellen';

  @override
  String get twoPlayers => 'Két játékos';

  @override
  String get playNearby => 'Játék a közelben';

  @override
  String get playOnline => 'Online játék';

  @override
  String get learningPractice => 'Tanulás és gyakorlás';

  @override
  String get gamesArchive => 'Játékarchívum';

  @override
  String get followSystem => 'Eszköz nyelve';

  @override
  String get white => 'Fehér';

  @override
  String get black => 'Fekete';

  @override
  String get random => 'Véletlenszerű';

  @override
  String get startMatch => 'Játék indítása';

  @override
  String get tutor => 'Edző';

  @override
  String get noMovesPass => 'Nincs lépés — passz';

  @override
  String get undo => 'Visszavonás';

  @override
  String get confirm => 'Megerősítés';

  @override
  String get roll => 'Dobás';

  @override
  String get hint => 'Tipp';

  @override
  String get tutoringStyle => 'Oktatási stílus';

  @override
  String get tutorStyleCoach => 'Edző';

  @override
  String get tutorStyleHintsOnly => 'Csak tippek';

  @override
  String get tutorStyleTryFirst => 'Előbb próbáld meg';

  @override
  String get tutorCoachDescription =>
      'Állásra vonatkozó tippek, lépésértékelés, súgók és tanácsok a duplázókockához.';

  @override
  String get tutorHintsDescription =>
      'Kérésre rangsorolt lépések. Az élő állástippek és az automatikus lépésértékelés kikapcsolva marad.';

  @override
  String get tutorTryFirstDescription =>
      'Próbáld ki a lépésedet, mielőtt megnéznéd a rangsort vagy az értékelést; az állásra vonatkozó útmutatás bekapcsolva marad.';

  @override
  String get tutorCustomDescription =>
      'Egyéni összeállítás. Az alábbi beállításokat külön-külön módosíthatod.';

  @override
  String get tutorBestMoveHints => 'Tippek a legjobb lépéshez';

  @override
  String get tutorRevealRankedPlays =>
      'Rangsorolt lépések megjelenítése gondolkodás közben';

  @override
  String get tutorMoveExplanations => 'Lépések magyarázata';

  @override
  String get tutorCompareEstimates =>
      'Becslések és táblán látható változások összehasonlítása';

  @override
  String get tutorGameCommentary => 'Játékmenet kommentálása';

  @override
  String get tutorPositionPrompts =>
      'Állástippek és visszajelzés minden lépés után';

  @override
  String get tutorCubeAdvice => 'Tanácsok a duplázókockához';

  @override
  String get tutorMatchAwareCubeAdvice =>
      'A mérkőzés állását figyelembe vevő duplázási, elfogadási és passzolási javaslatok';

  @override
  String get tutorTryMoveFirst => 'Előbb próbáld ki a lépést';

  @override
  String get tutorStageBeforeHints =>
      'Próbáld ki a lépésedet, mielőtt megjelennek a tippek vagy az értékelés';

  @override
  String get tutorStaticEstimateNote =>
      'Gyors, statikus becslés (0-ply, rollout nélkül); a megjegyzések a táblán történő változásokat és lehetséges válaszokat írják le, nem biztos jövőbeli kimenetelt.';

  @override
  String get tutorWhatToWatchNext => 'Mire figyelj a következő lépésben';

  @override
  String get tutorMoreBoardDetails => 'További részletek a tábláról';

  @override
  String get tutorEstimatesAndHowTheyWork => 'A becslések működése';

  @override
  String get tutorEstimateLimitations =>
      'Mélység: minden szabályos lépés utáni statikus neurális értékelés (0-ply), rollout és a jövőbeli válaszlépések keresése nélkül. Az eredménybecsléseket a mérkőzés állásához és az aktuális duplázókockához igazító MWC nem modellezi a későbbi kockadöntéseket. Ha az állás nem ismert, a kocka nélküli equity az 1-es kockával várható pontszámot jelenti. A táblára vonatkozó megfigyelések a lépést írják le, nem a neurális motor belső gondolatmenetét. A közeli eredmények nem jelentenek bizonyosságot; nincs kalibrált konfidenciaintervallum.';

  @override
  String get tutorPointNumberNote =>
      'A tanulási megjegyzések pontszámai a lépő játékos saját alapvonala felől értendők.';

  @override
  String get tutorHittingRollNote =>
      'A visszaütési esélyek mind a 36 rendezett dobást és a szabályos közvetlen vagy közvetett ütéseket tartalmazzák; lehetőségeket jeleznek, nem az ellenfél választását jósolják meg.';

  @override
  String get tutorNoEvaluatedAlternatives =>
      'Ehhez a lépéshez nincs kiértékelt alternatíva.';

  @override
  String get tutorForcedPassNoDecision =>
      'Kényszerű passznál nincs döntés a koronglépésről.';
}
