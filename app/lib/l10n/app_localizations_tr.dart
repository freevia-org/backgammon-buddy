// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get homeTagline => 'Bir eğitmenle oyununuzu geliştirin';

  @override
  String get settings => 'Ayarlar';

  @override
  String get playVsComputer => 'Bilgisayara karşı oyna';

  @override
  String get twoPlayers => 'İki oyuncu';

  @override
  String get playNearby => 'Yakındaki oyuncularla oyna';

  @override
  String get playOnline => 'Çevrimiçi oyna';

  @override
  String get learningPractice => 'Öğren ve pratik yap';

  @override
  String get gamesArchive => 'Oyun arşivi';

  @override
  String get followSystem => 'Cihaz dilini kullan';

  @override
  String get white => 'Beyaz';

  @override
  String get black => 'Siyah';

  @override
  String get random => 'Rastgele';

  @override
  String get startMatch => 'Oyunu başlat';

  @override
  String get tutor => 'Eğitmen';

  @override
  String get noMovesPass => 'Hamle yok — pas geç';

  @override
  String get undo => 'Geri al';

  @override
  String get confirm => 'Onayla';

  @override
  String get roll => 'Zar at';

  @override
  String get hint => 'İpucu';

  @override
  String get tutoringStyle => 'Eğitim tarzı';

  @override
  String get tutorStyleCoach => 'Koç';

  @override
  String get tutorStyleHintsOnly => 'Yalnızca ipuçları';

  @override
  String get tutorStyleTryFirst => 'Önce dene';

  @override
  String get tutorCoachDescription =>
      'Pozisyon ipuçları, hamle geri bildirimi, öneriler ve küp tavsiyeleri.';

  @override
  String get tutorHintsDescription =>
      'İstek üzerine sıralanmış hamleler. Canlı pozisyon ipuçları ve her hamleden sonra otomatik geri bildirim kapalı kalır.';

  @override
  String get tutorTryFirstDescription =>
      'Sıralanmış hamleleri veya notunu görmeden önce hamleni hazırla; tahta yönlendirmesi açık kalır.';

  @override
  String get tutorCustomDescription =>
      'Özel karışım. Aşağıdaki seçeneklerden istediğini ayarla.';

  @override
  String get tutorBestMoveHints => 'En iyi hamle ipuçları';

  @override
  String get tutorRevealRankedPlays => 'Karar verirken sıralı hamleleri göster';

  @override
  String get tutorMoveExplanations => 'Hamle açıklamaları';

  @override
  String get tutorCompareEstimates =>
      'Tahminleri ve tahtadaki değişiklikleri karşılaştır';

  @override
  String get tutorGameCommentary => 'Oyun yorumları';

  @override
  String get tutorPositionPrompts =>
      'Pozisyon ipuçları ve her hamleden sonra geri bildirim';

  @override
  String get tutorCubeAdvice => 'Küp tavsiyeleri';

  @override
  String get tutorMatchAwareCubeAdvice =>
      'Maç skoruna göre ikiye katlama, kabul etme ve pas önerileri';

  @override
  String get tutorTryMoveFirst => 'Önce bir hamle dene';

  @override
  String get tutorStageBeforeHints =>
      'İpuçlarını veya notunu göstermeden önce hamleni hazırla';

  @override
  String get tutorStaticEstimateNote =>
      'Hızlı statik tahmin (0-ply, rollout olmadan); notlar tahtadaki değişiklikleri ve olası yanıtları açıklar, sonrasında ne olacağını garanti etmez.';

  @override
  String get tutorWhatToWatchNext => 'Sırada nelere dikkat etmeli';

  @override
  String get tutorMoreBoardDetails => 'Tahta hakkında daha fazla ayrıntı';

  @override
  String get tutorEstimatesAndHowTheyWork => 'Tahminler ve çalışma biçimleri';

  @override
  String get tutorEstimateLimitations =>
      'Derinlik: her yasal hamleden sonra statik sinir ağı değerlendirmesi (0-ply); rollout veya gelecekteki yanıtları arama yoktur. Skoru dikkate alan MWC, bu sonuç tahminlerini maç skoruna ve mevcut küpe göre ağırlıklandırır; gelecekteki küp hamlelerini modellemez. Skor mevcut değilse küpsüz equity, 1 değerindeki küple beklenen puanları ifade eder. Tahta gözlemleri hamleyi açıklar, sinir ağının iç muhakemesini değil. Birbirine yakın tahminler kesinlik anlamına gelmez; kalibre edilmiş bir güven aralığı yoktur.';

  @override
  String get tutorPointNumberNote =>
      'Öğretici notlardaki nokta numaraları, hamle sırası gelen oyuncunun kendi iç tahtasından sayılır.';

  @override
  String get tutorHittingRollNote =>
      'Vurma fırsatı veren zar sonuçlarının sayısı, sıralı 36 zar sonucunun tümünü ve yasal doğrudan ya da dolaylı vuruşları kapsar; bunlar fırsattır, rakibin tercihi hakkında tahmin değildir.';

  @override
  String get tutorNoEvaluatedAlternatives =>
      'Bu hamle için değerlendirilmiş alternatif yok.';

  @override
  String get tutorForcedPassNoDecision =>
      'Zorunlu pas, pul oynama kararı içermez.';

  @override
  String get settingsReset => 'Sıfırla';

  @override
  String get settingsAppLanguage => 'Uygulama dili';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get settingsThemeSystem => 'Sistem ayarı';

  @override
  String get settingsThemeLight => 'Açık';

  @override
  String get settingsThemeDark => 'Koyu';

  @override
  String get settingsAnimationSpeed => 'Animasyon hızı';

  @override
  String get settingsAnimationNone => 'Kapalı';

  @override
  String get settingsAnimationNormal => 'Normal';

  @override
  String get settingsAnimationFast => 'Hızlı';

  @override
  String get settingsDiceRollAnimation => 'Zar atma animasyonu';

  @override
  String get settingsDiceRollAnimationHelp =>
      'Her atıştan önce zarları yuvarla';

  @override
  String get settingsDefaultMatchLength => 'Varsayılan maç uzunluğu';

  @override
  String get settingsDefaultDifficulty => 'Varsayılan zorluk';

  @override
  String get settingsDifficultyEasy => 'Kolay';

  @override
  String get settingsDifficultyMedium => 'Orta';

  @override
  String get settingsDifficultyHard => 'Zor';

  @override
  String get settingsDifficultyExpert => 'Uzman';

  @override
  String get settingsTutorModeDefault => 'Varsayılan eğitmen modu';

  @override
  String get settingsTutorAuto => 'Otomatik';

  @override
  String get settingsTutorOn => 'Açık';

  @override
  String get settingsTutorOff => 'Kapalı';

  @override
  String get settingsTutorModeHelp =>
      'Otomatik, eğitmeni tüm bilgisayar zorluklarında etkinleştirir. Açık ve Kapalı, yerel maçların başlangıç tercihini belirler. Yakındaki ve çevrimiçi maçlarda yardım verilmez; kaydedilen oyunlar daha sonra incelenebilir. Öğretim tercihleri bu cihaza kaydedilir.';

  @override
  String get settingsTutorPreferences => 'Eğitmen tercihleri';

  @override
  String get settingsTutorPreferencesSubtitle =>
      'Gelecek maçlar için kaydedilen varsayılanlar';

  @override
  String get settingsTutorSaveError => 'Eğitmen tercihleri kaydedilemedi.';

  @override
  String get settingsGameplay => 'Oynanış';

  @override
  String get settingsMoveHighlights => 'Hamle vurguları';

  @override
  String get settingsMoveHighlightsHelp =>
      'Seçilebilir pulları daire içine al ve hedef noktaları vurgula';

  @override
  String get settingsDragToMove => 'Sürükleyerek taşı';

  @override
  String get settingsDragToMoveHelp =>
      'Bir pulu hedef noktasına sürükle (dokunma her zaman çalışır)';

  @override
  String get settingsCombinedMoves => 'Birleşik hamleler';

  @override
  String get settingsCombinedMovesHelp =>
      'Tek dokunuş, bir pulu iki zarın toplamıyla ilerletir';

  @override
  String get settingsRotateBoard => 'Turlar arasında tahtayı döndür';

  @override
  String get settingsRotateBoardHelp =>
      'Aynı cihazda oynarken görünümü sıradaki oyuncuya çevir';

  @override
  String get settingsPassDevice => 'Cihazı devretme ekranı';

  @override
  String get settingsPassDeviceHelp =>
      'Cihazı sıradaki oyuncuya verirken tahtayı gizle';

  @override
  String get settingsShowScore => 'Skoru göster';

  @override
  String get settingsShowScoreHelp => 'Maçın güncel skorunu başlıkta göster';

  @override
  String get settingsBuddyMode => 'Buddy konuşma tarzı';

  @override
  String get settingsBuddyTerse => 'Kısa';

  @override
  String get settingsBuddyFriendly => 'Samimi';

  @override
  String get settingsBuddyTerseHelp =>
      'Buddy hamleyi böyle seslendirir: “13/8, 24/22” — oyuncuların tahta başında kullandığı gösterim.';

  @override
  String get settingsBuddyFriendlyHelp =>
      'Buddy hamleyi şöyle seslendirir: “Bir pulu 13’ten 8’e, diğerini 24’ten 22’ye taşı.”';

  @override
  String get settingsListenForDice => 'Zarları dinle';

  @override
  String get settingsListenForDiceHelp =>
      'Buddy zar sesini duyunca tahtaya daha erken bakar. Kapalı olması başka bir şeyi değiştirmez.';

  @override
  String get settingsDiagnostics => 'Tanılama';

  @override
  String get settingsErrorLog => 'Hata kaydı';

  @override
  String get settingsErrorLogHelp =>
      'Hata bildirimine kopyalanmaya hazır son hatalar';

  @override
  String get settingsReportBug => 'Hata bildir';

  @override
  String get settingsReportBugHelp =>
      'GitHub’da yönlendirmeli bir hata bildirimi aç';

  @override
  String get settingsSuggestIdea => 'Fikir öner';

  @override
  String get settingsSuggestIdeaHelp =>
      'Eğitmeni ve oyunu geliştirmemize yardım et';

  @override
  String get settingsAbout => 'Hakkında';

  @override
  String get settingsOpenSourceLicenses => 'Açık kaynak lisansları';

  @override
  String settingsAppVersion(Object version) {
    return 'Backgammon Buddy $version';
  }

  @override
  String get tutorPhraseGameFinished => 'Oyun bitti.';

  @override
  String get tutorPhraseReviewFinishedGame =>
      'Çalışmak için bir karar bulmak üzere hamleleri gözden geçir.';

  @override
  String get tutorPhraseCubeOffered => 'Katlama küpü teklif edildi.';

  @override
  String get tutorPhraseCubeDecisionPrompt =>
      'Pul hamlesini planlamadan önce alıp almayacağına karar ver.';

  @override
  String get tutorPhraseCubeScoreContext =>
      'Maç skoru, ek bahsin değerini değiştirir.';

  @override
  String get tutorPhraseResignationOffered => 'Pes teklifi yapıldı.';

  @override
  String get tutorPhraseResignationDecisionPrompt =>
      'Kabul etmeden veya devam etmeden önce teklif edilen puanları konumla karşılaştır.';

  @override
  String get tutorPhraseNoLegalPlay => 'Bu zarla yasal bir hamle yok.';

  @override
  String get tutorPhraseForcedPassPrompt =>
      'Zorunlu pas bir hata değildir; sonraki zarı bekle.';

  @override
  String get tutorPhraseOnlyOneResult => 'Yalnızca bir yasal sonuç konumu var.';

  @override
  String get tutorPhraseForcedTurnPrompt =>
      'Zorunlu hamleyi yap. Bu zarda değerlendirilecek bir seçim yok.';

  @override
  String get tutorPhrasePipCountsLevel => 'Pip sayıları eşit.';

  @override
  String tutorPhrasePipCountsAhead(int count) {
    return '$count pip öndesin.';
  }

  @override
  String tutorPhrasePipCountsBehind(int count) {
    return '$count pip geridesin.';
  }

  @override
  String tutorPhrasePlayerHasCheckersOnBar(int count) {
    return 'Barda $count pulun var: önce yeniden giriş yapmalısın.';
  }

  @override
  String get tutorPhraseEnterBeforeMoving =>
      'Başka bir pulu hareket ettirmeden önce giriş yap; sonra güvenli bir iniş noktası ara.';

  @override
  String tutorPhraseOpponentHomePoints(int count) {
    return 'Rakibin ev tahtasında $count kapalı nokta var.';
  }

  @override
  String get tutorPhraseBearOffRace => 'Pulları toplama yarışı.';

  @override
  String get tutorPhrasePureRace => 'Saf bir yarış.';

  @override
  String get tutorPhraseBearOffSpread =>
      'Pulları toplarken sonraki zar için kullanışlı bir dağılım bırak.';

  @override
  String get tutorPhraseBringRearCheckersHome =>
      'Arkadaki pulları tek bir noktada fazla yığmadan eve getir.';

  @override
  String get tutorPhraseArmiesHavePassed =>
      'Taraflar birbirini geçti; artık vurma mümkün değil.';

  @override
  String tutorPhraseContactStillMatters(Object part) {
    return '$part Temas hâlâ önemli.';
  }

  @override
  String tutorPhraseOpponentHasCheckersOnBar(int count) {
    return 'Rakibin barda $count pulu var.';
  }

  @override
  String get tutorPhraseKeepBoardClosed =>
      'Kalan pulları eve getirirken tahtanı kapalı tut.';

  @override
  String get tutorPhraseBuildOrPreserveHomeBoard =>
      'Rakip girmeye çalışırken ev tahtanı kur veya koru.';

  @override
  String tutorPhraseHomePointsCloseEntries(int count) {
    return 'Ev tahtanda $count nokta tutuyorsun; her biri bir giriş numarasını kapatır.';
  }

  @override
  String tutorPhrasePrimeContact(int count) {
    return '$count noktalı bir kapalı seriyle temas.';
  }

  @override
  String get tutorPhraseExtendPrimeOrKeepSpares =>
      'Seriyi uzatmakla onu korumak için yedek pulları tutmayı karşılaştır.';

  @override
  String tutorPhraseSpareCheckersCanMove(int count) {
    return '$count yedek pul, bulunduğu noktayı hemen açmadan hareket edebilir.';
  }

  @override
  String tutorPhraseAnchorContact(Object points) {
    return '$points noktalarında bir tutunma noktasıyla temas.';
  }

  @override
  String get tutorPhraseCompareAnchorProgressAhead =>
      'Arkadaki pulları eve getirmeyi, güvenli tutunma noktanı korumayla karşılaştır.';

  @override
  String get tutorPhraseCompareAnchorProgressBehind =>
      'Vurma fırsatı ararken veya tahtanı geliştirirken güvenli dayanağı aklında tut.';

  @override
  String get tutorPhrasePreserveAnchorFoothold =>
      'Tutunma noktası vurulamaz, ancak o pulların eve gitmesi hâlâ uzun sürer.';

  @override
  String get tutorPhraseContactThreats =>
      'Temas var: iki taraf da hâlâ vurma tehdidi oluşturabilir.';

  @override
  String get tutorPhraseLookForPointsAndSafety =>
      'Kullanışlı noktalar ara, ardından açıkta tek pul bırakma riskini değerlendir.';

  @override
  String tutorPhraseHomePointsAndBlots(int count, int otherCount) {
    return 'Ev tahtanda $count nokta tutuyor ve $otherCount açıkta tek pul bırakıyorsun.';
  }

  @override
  String get tutorPhraseChooseCheckerPrompt =>
      'Hamleye başlamak için bir pul seç.';

  @override
  String get tutorPhraseLegalPlayPrompt =>
      'Yorumları görmek için yasal bir hamle başlat.';

  @override
  String tutorPhraseStagedHit(int count) {
    return 'Rakibin $count pulunu vurdun.';
  }

  @override
  String tutorPhraseStagedEnter(int count) {
    return 'Bardan $count pul soktun.';
  }

  @override
  String tutorPhraseStagedBearOff(int count) {
    return '$count pulu topladın.';
  }

  @override
  String tutorPhraseStagedMakePoints(Object points) {
    return '$points noktalarını yaptın.';
  }

  @override
  String tutorPhraseStagedBlot(int point) {
    return '$point. noktadaki pulun şu anda açıkta.';
  }

  @override
  String tutorPhraseStagedSpare(int point) {
    return '$point. noktadaki yedek pul, noktayı açmadan daha sonra hareket edebilir.';
  }

  @override
  String tutorPhraseStagedPartialPrompt(Object part) {
    return '$part Tüm hamle değerlendirilmeden önce oynanabilir kalan zarları kullan.';
  }

  @override
  String get tutorPhraseStagedAllCheckersOff =>
      '15 pulun tamamı toplandı: oyunu kazandın.';

  @override
  String get tutorPhraseStagedHitShortPlan =>
      'Rakip yeniden giriş yapmaya çalışırken vurmak sana zaman kazandırır.';

  @override
  String get tutorPhraseStagedEfficientBearOffPlan =>
      'Verimli pul toplama, pulları kaldırır ve sonraki zar için kullanışlı sayılar bırakır.';

  @override
  String get tutorPhraseStagedRaceHomePlan =>
      'Arkadaki pulları eve getir ve toplama için uygun iniş noktalarına yay.';

  @override
  String get tutorPhraseStagedBearOffContactPlan =>
      'Pul toplamak ilerleme sağlar, ancak kalan temas vurulma riski doğurur.';

  @override
  String get tutorPhraseStagedReentryPlan =>
      'Yeniden giriş pulu oyuna döndürür; sonra ona güvenli bir nokta bul.';

  @override
  String get tutorPhraseStagedHomeBoardPlan =>
      'Yeni ev tahtası noktası, ileride vurulma olursa bir giriş sayısını kapatır.';

  @override
  String get tutorPhraseStagedPrimePlan =>
      'Daha uzun seri daha fazla iniş noktasını kapatır; yedek pullar seriyi korumaya yardım eder.';

  @override
  String get tutorPhraseStagedLeaveAnchorPlan =>
      'Tutunma noktasını bırakmak ilerleme sağlar ama güvenli dayanağından vazgeçersin.';

  @override
  String get tutorPhraseStagedNewAnchorPlan =>
      'Yeni tutunma noktası arkadaki pullara güvenli bir dayanak sağlar.';

  @override
  String get tutorPhraseStagedCoverBlotPlan =>
      'Açıkta tek pulu kapatmak rakibin hedefini ortadan kaldırır.';

  @override
  String get tutorPhraseStagedSafetyTradeoffPlan =>
      'Denge gelişim ve güvenlik arasında: kurucu pullar aynı zamanda hedef olabilir.';

  @override
  String tutorPhraseStagedCompletePrompt(Object part) {
    return '$part Hamlen tamamlandı; oynamak için Onayla’ya dokun.';
  }

  @override
  String get tutorMoveForcedVerdict =>
      'Bu zar, pul oynama seçeneği bırakmıyor; karar olarak notlandırılmaz.';

  @override
  String get tutorMoveTopVerdict => 'Bu konum için en iyi seçeneklerden biri.';

  @override
  String get tutorMoveAlternativeVerdict =>
      'Motor burada başka bir hamleyi tercih ediyor.';

  @override
  String tutorMoveEstimateDifference(Object loss) {
    return 'En iyi hamleden farkı: $loss.';
  }

  @override
  String tutorMoveEstimateOutcomes(
    Object winPercent,
    Object winGammonPercent,
    Object loseGammonPercent,
  ) {
    return 'Bu hamleden sonra: kazanma olasılığı $winPercent%, gammon veya daha iyi kazanma $winGammonPercent%, gammon veya daha kötü kaybetme $loseGammonPercent%. Bunlar hamleyi yapan oyuncunun bakış açısından tahminlerdir.';
  }

  @override
  String tutorMoveEstimateMatchChance(Object percent) {
    return 'Maçı kazanma tahmini: $percent%.';
  }

  @override
  String get tutorMovePlanAllCheckersOff =>
      '15 pulun tamamı toplandı: oyunu kazandın.';

  @override
  String tutorMovePlanHit(Object homeBoardAdvice) {
    return 'Rakip yeniden giriş yaparken zaman kazanmak için vur. $homeBoardAdvice';
  }

  @override
  String get tutorMovePlanHitClosed =>
      'Girişi zorlaştırmak için ev tahtandaki noktaları kapalı tut.';

  @override
  String get tutorMovePlanHitBuild =>
      'İleride vurulmanın etkisini azaltmak için ev tahtanda daha fazla nokta kur.';

  @override
  String get tutorMovePlanRaceBearOff =>
      'Pulları verimli biçimde toplamaya çalış: pulları kaldır ve sonraki zar için kullanışlı sayılar bırak.';

  @override
  String get tutorMovePlanRaceHome =>
      'Arkadaki pulları eve getir ve toplama için uygun noktalara dağıt.';

  @override
  String get tutorMovePlanContactBearOff =>
      'Pulları topla ama rakibin arkadaki pullarını izle: temas sürerken açıkta kalan bir toplama pulu hedef olabilir.';

  @override
  String get tutorMovePlanReentry =>
      'Oyuna yeniden gir, ardından giren pul için güvenli bir nokta bul.';

  @override
  String get tutorMovePlanHomeBoard =>
      'Ev tahtanı güçlendir. Yeni kapalı nokta bir giriş sayısını kapatarak ilerideki vuruşu güçlendirir.';

  @override
  String get tutorMovePlanPrime =>
      'Kapalı noktalar serisini birlikte çalışır halde tut. Sonraki zarların seriyi açmaya zorlamaması için yedek pulları koru.';

  @override
  String get tutorMovePlanLeaveAnchor =>
      'Tutunma noktasını bırakmak arkadaki pullarını ilerletir ama güvenli dayanağını kaybedersin. Eve dönerken açıkta kalmalarına dikkat et.';

  @override
  String get tutorMovePlanNewAnchor =>
      'Konumunun geri kalanını geliştirirken yeni tutunma noktasını güvenli bir dayanak olarak kullan.';

  @override
  String get tutorMovePlanCoverBlot =>
      'Pullarını toparla. Açıkta tek pulu kapatmak hedefi ortadan kaldırırken ileride kullanışlı iniş noktalarını korur.';

  @override
  String get tutorMovePlanSafety =>
      'Gelişimle güvenliği dengele: kurucu pulları kullanışlı noktalara yaklaştır ve hangi tek pulların vurulabileceğini kontrol et.';

  @override
  String get tutorMoveObservationNoLegalPlay =>
      'Yasal pul hamlesi yok: sıra geçilmeli.';

  @override
  String tutorMoveObservationHit(int count) {
    return 'Rakibin $count pulunu vurursun; rakip diğer pulları hareket ettirmeden önce bardan yeniden giriş yapmalıdır.';
  }

  @override
  String tutorMoveObservationEntry(int count) {
    return 'Bardan $count pul sokarsın.';
  }

  @override
  String tutorMoveObservationBearOff(int count) {
    return '$count pul toplarsın.';
  }

  @override
  String tutorMoveObservationMadePoints(Object points) {
    return '$points noktalarını yaparsın. İki veya daha fazla pul güvenli bir noktayı tutar ve rakibin oraya inmesini engeller.';
  }

  @override
  String tutorMoveObservationBrokenPoints(Object pointLabel, Object points) {
    return 'Kapalı $pointLabel $points noktalarından vazgeçersin. Bu noktalar artık rakibi engellemez.';
  }

  @override
  String tutorMoveObservationNoBlots(int previousCount) {
    return 'Açıkta tek pul bırakmazsın (önceden $previousCount). Vurulacak tek pul yok.';
  }

  @override
  String tutorMoveObservationBlots(int count, int previousCount) {
    return '$count açıkta tek pul bırakırsın (önceden $previousCount). Başka bir kazanç yerine güvenliği seçmeden önce rakibin bunlara ulaşıp ulaşamayacağını kontrol et.';
  }

  @override
  String tutorMoveObservationPrimeRun(
    int count,
    int previousCount,
    Object primeAdvice,
  ) {
    return 'En uzun kapalı nokta serisi: $count (önceden $previousCount). $primeAdvice';
  }

  @override
  String get tutorMoveObservationPrimeSix =>
      'Altı noktalı kapalı seri, kapalı kaldığı sürece geçilemez.';

  @override
  String get tutorMoveObservationPrimeBuild =>
      'Bu seriyi uzatmak veya korumak istiyorsan kurucu pulları yakınında tut.';

  @override
  String tutorMoveObservationPrimeSpares(int count) {
    return 'Kapalı noktalarda ikinin üzerinde $count yedek pul var. Bir yedeği taşımak noktayı koruyabilir; son iki puldan birini taşımak noktayı açar.';
  }

  @override
  String tutorMoveObservationAnchors(Object points, Object previousPoints) {
    return 'Rakibin ev tahtasındaki tutunma noktaları: $points (önceden $previousPoints). Tutunma noktası pulları vuruştan korur; bırakmak güvenli dayanağı yarışta ilerlemeyle değiştirir.';
  }

  @override
  String get tutorMoveObservationPureRace =>
      'Saf yarış: taraflar birbirini geçti ve hiçbir tarafta barda pul yok. Artık vurma mümkün değil; pulları verimli toplamak önem kazanır.';

  @override
  String get tutorMoveObservationNoReplyHit =>
      'Rakip bu konumda yasal sonraki zarların hiçbirinde pul vuramaz. Temas sürdüğü için sonraki hamleler yeni fırsatlar yaratabilir.';

  @override
  String tutorMoveObservationReplyHit(
    int count,
    int total,
    int dieOne,
    int dieTwo,
    int point,
  ) {
    return 'Rakip $total zar sonucunun $count tanesinde vurabilir. Örneğin $dieOne–$dieTwo, $point. noktan üzerindeki pula yasal vuruş sağlar. Vuruş mümkündür, ancak rakibin bunu seçeceği garanti değildir.';
  }

  @override
  String tutorMoveObservationOpponentBarHome(
    int closedPoints,
    Object entryAdvice,
  ) {
    return 'Ev tahtandaki $closedPoints nokta kapalı. $entryAdvice';
  }

  @override
  String get tutorMoveObservationAllEntriesClosed =>
      'Bir nokta açılana kadar rakip yeniden giriş yapamaz.';

  @override
  String get tutorMoveObservationOpenEntry =>
      'Açık bir giriş noktasını kullanan zar, bardaki pulu oyuna döndürebilir.';

  @override
  String tutorMoveComparisonDetail(
    Object factors,
    Object delta,
    Object direction,
    Object scoreContext,
  ) {
    return '$factors En iyi hamlenin tahmini kazanma şansı $delta yüzde puan $direction.$scoreContext';
  }

  @override
  String get tutorMoveComparisonHigher => 'daha yüksek';

  @override
  String get tutorMoveComparisonLower => 'daha düşük';

  @override
  String tutorMoveComparisonScoreContext(Object scoreContext) {
    return ' Yine de daha üst sırada olabilir; çünkü gammon ve backgammon değerleri mevcut $scoreContext durumuna göre değişir.';
  }

  @override
  String get tutorMoveComparisonStake => 'bahis';

  @override
  String get tutorMoveComparisonMatchScore => 'maç skoru';

  @override
  String tutorMoveComparisonFactorBar(int bestCount, int playedCount) {
    return 'En iyi hamle $playedCount yerine rakibin $bestCount pulunu barda bırakır. Barda olan pul, diğerleri hareket etmeden önce oyuna girmelidir.';
  }

  @override
  String tutorMoveComparisonFactorHomeBoard(
    int bestCount,
    int playedCount,
    Object entryDifference,
  ) {
    return 'En iyi hamle $playedCount yerine ev tahtanda $bestCount noktayı kapalı tutar; vurulma sonrası $entryDifference giriş noktası kalır.';
  }

  @override
  String get tutorMoveComparisonClosingMore => 'daha fazlasını kapatıyor';

  @override
  String get tutorMoveComparisonLeavingMore => 'daha fazlasını açık bırakıyor';

  @override
  String tutorMoveComparisonFactorShots(
    int bestCount,
    int playedCount,
    Object riskDifference,
  ) {
    return 'En iyi hamle, $playedCount yerine 36 zar sonucunun $bestCount tanesinde karşı vuruşa izin verir. $riskDifference';
  }

  @override
  String get tutorMoveComparisonReducesRisk =>
      'Bu, hemen geri vurulma riskini azaltır.';

  @override
  String get tutorMoveComparisonExtraExposure =>
      'Bu ek açıklığı, hamlenin başka yerde sağladığı kazançla karşılaştır.';

  @override
  String tutorMoveComparisonFactorPrime(int bestCount, int playedCount) {
    return 'En iyi hamlenin en uzun kapalı nokta serisi $playedCount yerine $bestCount; bu duvarı onu koruyabilecek pullarla karşılaştır.';
  }

  @override
  String tutorMoveComparisonFactorAnchors(
    Object bestPoints,
    Object playedPoints,
  ) {
    return 'En iyi hamlenin tutunma noktaları $bestPoints, senin hamleninki $playedPoints. Tutunma noktası güvenli bir iniş yeri sağlar; bırakmak pulları eve yaklaştırır.';
  }

  @override
  String tutorMoveComparisonFactorBearOff(int bestCount, int playedCount) {
    return 'En iyi hamlede $playedCount yerine $bestCount pul toplanmış. Her toplanan pul, daha sonra toplanacak bir pulun eksilmesi demektir.';
  }

  @override
  String get tutorMoveComparisonFactorSimilarRisks =>
      'İki hamle de aynı anlık vurulma riskini, ev tahtası noktalarını, tutunma noktalarını ve toplanan pul sayısını bırakır. İniş noktalarını karşılaştır: sonraki zar pulları farklı kullanabilir.';

  @override
  String get tutorMoveComparisonSummaryBar =>
      'En iyi hamle rakibin daha fazla pulunu bara göndererek diğer hamlelerini geciktirir.';

  @override
  String get tutorMoveComparisonSummaryHomeBoard =>
      'En iyi hamle daha fazla ev tahtası noktasını kapatarak vurulma sonrası girişi zorlaştırır.';

  @override
  String get tutorMoveComparisonSummaryShots =>
      'En iyi hamle daha az anlık vuruş zarı verir ve geri vurulma riskini azaltır.';

  @override
  String get tutorMoveComparisonSummaryPrime =>
      'En iyi hamle daha uzun kapalı nokta serisini korur.';

  @override
  String get tutorMoveComparisonSummaryAnchors =>
      'En iyi hamle rakibin ev tahtasında daha fazla güvenli tutunma noktası tutar.';

  @override
  String get tutorMoveComparisonSummaryBearOff =>
      'En iyi hamle daha fazla pul toplar; daha sonra kaldırılacak pul sayısı azalır.';

  @override
  String tutorMoveComparisonSummaryBlots(int playedCount, int bestCount) {
    return 'Bu hamle $playedCount tek pul bırakır; en iyi hamle $bestCount bırakır.';
  }

  @override
  String tutorMoveComparisonSummarySafeAnchor(int point) {
    return 'En iyi hamle $point. noktada güvenli bir tutunma noktası korur.';
  }

  @override
  String get tutorMoveComparisonSummaryEntry =>
      'En iyi hamle, pullarından biri vurulursa diye daha fazla giriş noktasını kapatır.';

  @override
  String get tutorMoveComparisonSummarySimilarRisks =>
      'Hamlelerin anlık riskleri benzer; sonraki zarda hangi iniş noktalarının işe yarayacağını karşılaştır.';

  @override
  String tutorMoveAssessmentEquityLoss(Object value) {
    return '$value equity';
  }

  @override
  String tutorMoveAssessmentMwcLoss(Object value) {
    return '$value MWC yüzde puanı';
  }

  @override
  String get tutorMovePointSingular => 'nokta';

  @override
  String get tutorMovePointPlural => 'nokta';

  @override
  String get tutorMoveNoPoints => 'yok';

  @override
  String get gameTutorCommentaryOff => 'Oyun yorumları kapalı.';

  @override
  String get gameTutorToolsAvailable =>
      'Etkinleştirdiğin araçlar için eğitmeni aç.';

  @override
  String get gameTutorNextRoll => 'Zarları at.';

  @override
  String get gameTutorNoEvaluatedReview =>
      'Kaydedilmiş bu hamle için değerlendirilmiş bir açıklama yok.';

  @override
  String get gameTutorAnalysisUnavailable => 'analiz kullanılamıyor';

  @override
  String get gameTutorReviewing => 'inceleniyor…';

  @override
  String get gameTutorTryYourPlayFirst => 'Önce kendi hamleni dene.';

  @override
  String get gameTutorKeepBuilding => 'Hamleni oluşturmaya devam et.';

  @override
  String get gameTutorStageCompleteBeforeCoaching =>
      'Koçluk veya ipuçlarını görmeden önce kurallara uygun tam bir hamle yap.';

  @override
  String get gameTutorReadyToConfirm => 'Onaylanmaya hazır';

  @override
  String get gameTutorPlayTakingShape => 'Hamlen şekilleniyor.';

  @override
  String get gameTutorConfirmOrUndo =>
      'Oynamak için onayla ya da geri alıp yeniden düşün.';

  @override
  String get gameTutorFinishDiceOrUndo =>
      'Kalan zarları kullan ya da hamleyi geri al.';

  @override
  String get gameTutorComputerConsidering => 'Bilgisayar hamlesini düşünüyor.';

  @override
  String get gameTutorComputerPlayReviewed =>
      'Tamamlanan hamlesi burada incelenecek.';

  @override
  String get gameTutorYourPlay => 'Hamlen';

  @override
  String get gameTutorComputer => 'Bilgisayar';

  @override
  String gameTutorPlayQuality(Object quality) {
    return 'Hamlen: $quality';
  }

  @override
  String get gameTutorForcedPlay => 'zorunlu hamle';

  @override
  String get gameTutorTopChoice => 'en iyi seçim';

  @override
  String get gameTutorSoundPlay => 'iyi hamle';

  @override
  String get gameTutorAnotherPlayMayFitBetter =>
      'başka bir hamle daha uygun olabilir';

  @override
  String get gameTutorAnotherPlayFitsBetter =>
      'bu konuma başka bir hamle daha iyi uyuyor';

  @override
  String get gameTutorStrongerPlayAvailable =>
      'belirgin biçimde daha güçlü bir hamle vardı';

  @override
  String gameTutorPositionEdge(Object side) {
    return 'Tahmine göre $side avantajlı.';
  }

  @override
  String get gameTutorPositionEven => 'Konum yaklaşık olarak dengede.';

  @override
  String tutorPlayedMove(Object move) {
    return 'Oynanan: $move';
  }

  @override
  String tutorBestMove(Object move) {
    return 'En iyi: $move';
  }

  @override
  String get tutorShowRankedPlays => 'Sıralı hamleleri göster';

  @override
  String get tutorReviewRecordedMove =>
      'Kararını burada incelemek için oyun günlüğünde tamamlanmış bir hamleye dokun.';

  @override
  String get tutorTopPlays => 'En iyi hamleler';

  @override
  String get tutorNoHintsAvailable => 'İpucu yok.';

  @override
  String get tutorPreviewThenConfirm =>
      'Tahtada önizlemek için bir hamleye dokun, ardından Onayla.';

  @override
  String get tutorTopChoiceForPosition => 'Bu konum için en iyi seçim';

  @override
  String get tutorAlternativePlay => 'Alternatif hamle';

  @override
  String get tutorEngineEstimates => 'Motor tahminleri';

  @override
  String get tutorEstimateScope =>
      '0 ply tahmini — mevcut skor ve bahis — gelecekteki küp kararları hesaba katılmaz';

  @override
  String get tutorEquity => 'Equity';

  @override
  String get tutorMwcPercent => 'Maçı kazanma olasılığı, %';

  @override
  String get tutorNearTiesNote =>
      'Daha derin analiz, birbirine yakın hamlelerin sırasını değiştirebilir.';

  @override
  String get tutorWhyThisPlay => 'Bu hamle neden iyi?';

  @override
  String get tutorCompareAlternative => 'Bu alternatifi karşılaştır';

  @override
  String get gameTutorCubeTake => 'Eğitmen: kabul et';

  @override
  String get gameTutorCubePass => 'Eğitmen: pas geç';

  @override
  String get practiceScreenTitle => 'Bir kararı çalış';

  @override
  String get practiceUnavailable =>
      'Bu çalışma pozisyonu artık kullanılamıyor.';

  @override
  String get practiceSubmitError =>
      'Bu deneme değerlendirilemedi veya kaydedilemedi. İlerlemeniz değişmedi. Yeniden deneyin.';

  @override
  String practiceTurnLabel(Object side, Object dice) {
    return 'Sıra $side oyuncusunda · $dice';
  }

  @override
  String get practiceHistoricalScoreUnavailable =>
      'Geçmiş skor bilgisi yok; hamle, küp olmadan equity üzerinden değerlendiriliyor.';

  @override
  String practiceScoreLine(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return 'Skor: $whiteLabel $whiteScore – $blackLabel $blackScore, $matchLength puana kadar';
  }

  @override
  String get practiceCrawfordGame => ' · Crawford oyunu';

  @override
  String get practiceNoDoublingCube => 'Katlama küpü olmadan.';

  @override
  String practiceCubeValue(int value) {
    return 'Küp değeri $value.';
  }

  @override
  String get practiceHistoricalCubeUnknown =>
      'Geçmiş küp kuralları bilinmiyor.';

  @override
  String get practiceAfterBestPosition => 'En iyi hamleden sonraki pozisyon';

  @override
  String get practiceAfterYourAnswerPosition => 'Cevabınızdan sonraki pozisyon';

  @override
  String get practiceFindYourPlayPrompt =>
      'Tahtada hamlenizi yapın ve ardından cevabınızı kontrol edin. İpucu gösterilmez.';

  @override
  String get practiceUndo => 'Geri al';

  @override
  String get practiceCheckAnswer => 'Cevabı kontrol et';

  @override
  String get practiceRevealNoCredit => 'Cevabı göster (puan yok)';

  @override
  String get practiceAnswerRevealedNoCredit =>
      'Cevap gösterildi — hatırlama puanı yok.';

  @override
  String practiceGradeLine(Object verdict, Object loss) {
    return '$verdict · $loss';
  }

  @override
  String practiceBestMoveLine(Object move) {
    return 'En iyi: $move';
  }

  @override
  String practiceOriginalGameLine(Object move, Object loss) {
    return 'İlk oyundaki hamle: $move · $loss';
  }

  @override
  String practiceYourAnswerLine(Object move) {
    return 'Cevabınız: $move';
  }

  @override
  String get practiceYourAnswerChip => 'Cevabınız';

  @override
  String get practiceBestPlayChip => 'En iyi hamle';

  @override
  String practiceNextReview(Object date) {
    return 'Sonraki tekrar: $date.';
  }

  @override
  String get practiceRecallCredit =>
      'İyi ve en iyi cevaplar başarılı hatırlama sayılır. Erken tekrarlar aralığı uzatmaz.';

  @override
  String get practiceBackToLearning => 'Öğrenmeye dön';

  @override
  String get practiceMarkBest => 'En iyi';

  @override
  String get practiceMarkGood => 'İyi';

  @override
  String get practiceMarkDubious => 'Şüpheli';

  @override
  String get practiceMarkError => 'Hata';

  @override
  String get practiceMarkBlunder => 'Büyük hata';

  @override
  String get practiceMarkForced => 'Zorunlu';

  @override
  String get newMatchYourSide => 'Tarafınız';

  @override
  String get newMatchTutorMode => 'Eğitmen modu';

  @override
  String get newMatchTutorDescription =>
      'İpuçları, açıklamalar ve oyun yorumlarıyla öğrenin';

  @override
  String get newMatchTutoringOptions => 'Eğitmen seçenekleri';

  @override
  String get newMatchTutoringOptionsDescription =>
      'Bu maç için; oyun sırasında değiştirilebilir';

  @override
  String get setupMatchLength => 'Maç uzunluğu';

  @override
  String get setupDifficulty => 'Zorluk';

  @override
  String get setupDifficultyEasy => 'Kolay';

  @override
  String get setupDifficultyMedium => 'Orta';

  @override
  String get setupDifficultyHard => 'Zor';

  @override
  String get setupDifficultyExpert => 'Uzman';

  @override
  String get setupPlayWithoutCube => 'Küp olmadan oyna';

  @override
  String get setupNoCubeThisMatch => 'Bu maçta katlama küpü yok';

  @override
  String get analysisTitle => 'Analiz';

  @override
  String get gameMatchSummary => 'Maç özeti';

  @override
  String get gameAnalyzeGame => 'Oyunu analiz et';

  @override
  String get analysisMetricsTooltip => 'Bu sayılar ne anlama geliyor?';

  @override
  String analysisError(Object error) {
    return 'Oyun analiz edilemedi: $error';
  }

  @override
  String get analysisNoPositions => 'Bu oyunda gösterilecek pozisyon yok.';

  @override
  String get analysisInProgress => 'Analiz ediliyor…';

  @override
  String analysisPercent(int percent) {
    return '$percent%';
  }

  @override
  String get analysisPlayed => 'Oynanan';

  @override
  String get analysisBest => 'En iyi';

  @override
  String get analysisPrevious => 'Önceki';

  @override
  String get analysisNext => 'Sonraki';

  @override
  String get analysisPositionBeforeCube => 'Küp kararından önceki pozisyon';

  @override
  String get analysisPositionAtPoint => 'Oyunun bu anındaki pozisyon';

  @override
  String get analysisShowingBestBefore =>
      'Hamleden önceki pozisyonda en iyi hamle gösteriliyor';

  @override
  String get analysisShowingBefore => 'Hamleden önceki pozisyon gösteriliyor';

  @override
  String analysisVerdictLine(Object side, Object verdict, Object loss) {
    return '$side: $verdict$loss';
  }

  @override
  String analysisMoveLoss(Object loss) {
    return ' −$loss';
  }

  @override
  String get analysisExcludedFromAverages => ' · ortalamalara dahil değil';

  @override
  String get analysisNoPlay => '(hamle yok)';

  @override
  String analysisBestMoveLine(Object move) {
    return 'En iyi: $move';
  }

  @override
  String get analysisExplain => 'Açıkla';

  @override
  String get analysisSaveForPractice => 'Antrenman için kaydet';

  @override
  String analysisSaveError(Object error) {
    return 'Bu karar kaydedilemedi: $error';
  }

  @override
  String analysisCubeInfo(
    Object side,
    Object action,
    Object mark,
    Object loss,
  ) {
    return '$side: $action · $mark · kayıp $loss';
  }

  @override
  String get analysisCubeDecision => 'Küp kararı';

  @override
  String analysisCubePlayed(Object action, Object percent) {
    return 'Oynanan: $action (maçı kazanma olasılığı %$percent).';
  }

  @override
  String analysisCubeBest(Object action, Object percent) {
    return 'En iyi: $action (maçı kazanma olasılığı %$percent).';
  }

  @override
  String get analysisCubeEstimate =>
      'Sırası gelen oyuncunun bakış açısından 0-ply tahmini. Rakibin en iyi kabul/pas yanıtını varsayar. Kabul edilen katlama dalında, gelecekteki yeniden katlamaların tam araması yerine 0,7 küp ömrü yaklaşımı kullanılır. Daha derin analiz yanıtı değiştirebilir.';

  @override
  String get analysisClose => 'Kapat';

  @override
  String get analysisMoves => 'Hamleler';

  @override
  String get analysisForced => 'Zorunlu';

  @override
  String get analysisMarkBest => 'En iyi';

  @override
  String get analysisMarkGood => 'İyi';

  @override
  String get analysisMarkDubious => 'Şüpheli';

  @override
  String get analysisMarkError => 'Hata';

  @override
  String get analysisMarkBlunder => 'Büyük hata';

  @override
  String analysisSummaryMeanLoss(Object loss) {
    return 'Ortalama kayıp $loss';
  }

  @override
  String analysisSummaryCheckerDecisions(int count) {
    return '$count pul kararı';
  }

  @override
  String analysisSummaryBlunders(int count) {
    return 'Büyük hatalar $count';
  }

  @override
  String analysisSummaryCubeLoss(Object loss) {
    return 'Küp kaybı $loss';
  }

  @override
  String analysisRollWithoutDoubling(Object side) {
    return '$side ikiye katlamadan zar atıyor';
  }

  @override
  String get metricExplainerTitle => 'Metrikleri anlama';

  @override
  String get metricExplainerTooltip => 'Bu sayılar ne anlama geliyor?';

  @override
  String get metricExplainerMwcTitle => 'Maç kazanma şansı (MWC)';

  @override
  String get metricExplainerMwcBody =>
      'Skor biliniyorsa pul hamleleri tahmini maç kazanma şansına göre sıralanır. Kayıp yüzde puan (pp) olarak verilir: 1 pp, %51’in %50’ye düşmesi demektir. Mevcut küp bahsi ile mars/backgammon sonuçları hesaba katılır. Zorunlu paslar ve tek yasal pozisyonla sonuçlanan atışlar ortalamaya katılmaz.';

  @override
  String get metricExplainerSearchTitle => 'Arama ve belirsizlik';

  @override
  String get metricExplainerSearchBody =>
      'Pul hamlesi sıralamaları simülasyon değil, hamle sonrası statik 0-ply tahminleridir. Maç değerleri maç eşitlik tablosunu kullanır ve gelecekteki küp sıralarını içermez. Küp incelemesi, kabul edilen katlamalarda kısmi 0,7 küp ömrü yaklaşımı kullanır; tam küplü arama değildir. Kalan skor 25’i aşarsa tablonun 25-away sınırı kullanılır. Derin analiz yakın sonuçları değiştirebilir; kalibre edilmiş güven aralığı yoktur.';

  @override
  String get metricExplainerEquityTitle => 'Eşitlik değeri';

  @override
  String get metricExplainerEquityBody =>
      'Skor yoksa küpsüz eşitlik, küp 1 değerindeyken pozisyonun ortalama puan değerini gösterir. +1,0 ortalama bir puan kazanmayı, −0,5 yarım puan kaybetmeyi beklediğin anlamına gelir.';

  @override
  String get metricExplainerEquityLossTitle => 'Eşitlik kaybı (örn. −0,016)';

  @override
  String get metricExplainerEquityLossBody =>
      'Oynadığın hamleyi motorun en iyi hamlesiyle karşılaştırırız. Eşitlik kaybı, hamlenin vazgeçtiği beklenen değerdir. −0,016, hamlenin en iyiden yalnızca 0,016 puan kötü olduğunu, yani ufak bir hata olduğunu gösterir. 0,000 en iyi hamleyi bulduğun anlamına gelir.';

  @override
  String get metricExplainerErrorRateTitle => 'Hata oranı';

  @override
  String get metricExplainerErrorRateBody =>
      'Ortalama kayıp, puanlanan pul kararlarının gösterilen birimdeki ortalamasıdır. Küp kararlarının ayrı ortalaması vardır. Daha düşük değer motorun en iyi tahminlerine daha yakın hamleler demektir; kalibre edilmiş oyuncu puanı değildir.';

  @override
  String get metricExplainerMoveMarksTitle => 'Hamle işaretleri';

  @override
  String get metricExplainerMoveMarksBody =>
      'MWC öğretim aralıkları: En iyi < 0,05 pp, İyi < 0,5 pp, Şüpheli < 1,5 pp, Hata < 3 pp, Büyük hata ≥ 3 pp. Bunlar kalibre edilmiş güven ya da turnuva puanı değil, eğitim aralıklarıdır.\n\nKüpsüz eşitlik öğretim aralıkları:';

  @override
  String get metricExplainerThresholdBest => 'kayıp < 0,001';

  @override
  String get metricExplainerThresholdGood => 'kayıp < 0,020';

  @override
  String get metricExplainerThresholdDubious => 'kayıp < 0,050';

  @override
  String get metricExplainerThresholdError => 'kayıp < 0,110';

  @override
  String get metricExplainerThresholdBlunder => 'kayıp ≥ 0,110';

  @override
  String get metricExplainerGotIt => 'Anladım';

  @override
  String get historyTitle => 'Maç geçmişi';

  @override
  String historyLoadFailed(Object error) {
    return 'Geçmiş yüklenemedi:\n$error';
  }

  @override
  String get historyEmpty => 'Henüz hiç maç oynanmadı.';

  @override
  String get historyDeleteConfirmTitle => 'Bu maç silinsin mi?';

  @override
  String historyDeleteConfirmBody(Object scoreLine) {
    return '$scoreLine\n\nMaç ve içindeki tüm oyun kayıtları kalıcı olarak silinir. Bu işlem geri alınamaz.';
  }

  @override
  String get actionCancel => 'İptal';

  @override
  String get actionDelete => 'Sil';

  @override
  String get historyDeleteFailed => 'Maç silinemedi.';

  @override
  String get historyComplete => 'Tamamlandı';

  @override
  String historyWinner(Object side) {
    return 'Kazanan: $side';
  }

  @override
  String get historyUnfinished => 'Tamamlanmadı';

  @override
  String get historyMatchTitle => 'Maç';

  @override
  String historyMatchLoadFailed(Object error) {
    return 'Maç yüklenemedi:\n$error';
  }

  @override
  String historyGamesLoadFailed(Object error) {
    return 'Oyunlar yüklenemedi:\n$error';
  }

  @override
  String get historyNoGames => 'Henüz kaydedilmiş oyun yok.';

  @override
  String historyGameTitle(int number) {
    return 'Oyun $number';
  }

  @override
  String get historyCrawford => 'Crawford kuralı';

  @override
  String historyScoreLine(int whiteScore, int blackScore, int matchLength) {
    return 'Beyaz $whiteScore — $blackScore Siyah  ($matchLength puana kadar)';
  }

  @override
  String get historyModeComputer => 'Bilgisayara karşı';

  @override
  String get historyModeTwoPlayers => 'İki oyuncu';

  @override
  String get historyModeOnline => 'Çevrimiçi';

  @override
  String get historyModeNearby => 'Yakındakilerle oyna';

  @override
  String get historyModeBuddy => 'Buddy';

  @override
  String get historyGameInProgress => 'Sürüyor';

  @override
  String historyGameResult(Object side, int points, Object outcome) {
    return '$side, $points kazanıyor ($outcome)';
  }

  @override
  String get historyOutcomeSingle => 'tekli';

  @override
  String get historyOutcomeGammon => 'mars';

  @override
  String get historyOutcomeBackgammon => 'backgammon';

  @override
  String get learningRefreshTooltip => 'Öğrenme ilerlemesini yenile';

  @override
  String get learningOptions => 'Öğrenme seçenekleri';

  @override
  String get learningResetMenu => 'Antrenman ilerlemesini sıfırla';

  @override
  String get learningLoadFailed => 'Öğrenme ilerlemesi yüklenemedi.';

  @override
  String get actionRetry => 'Yeniden dene';

  @override
  String get learningHeading => 'Kararlarından öğren';

  @override
  String get learningIntro =>
      'İlerleme bu cihazda saklanır. Tekrarlayan temaları gözden geçir, ardından yanıtı görmeden kayıtlı konumları yeniden dene. Beyaz ve Siyah ayrı ayrı incelenebilir.';

  @override
  String get learningBothSides => 'İki taraf';

  @override
  String get learningHumansOnly => 'Yalnızca insan kararları';

  @override
  String get learningHumanOnlyHelp =>
      'Bilgisayar ve uzaktaki oyuncuların kararlarını dahil etmek için kapat';

  @override
  String learningDecisionSummary(int decisions, int mistakes, int blunders) {
    return '$decisions karar · geliştirilecek: $mistakes · büyük hata: $blunders';
  }

  @override
  String learningAverageLoss(int decisions, Object loss) {
    return 'Ortalama kayıp ($decisions karar): $loss';
  }

  @override
  String get learningForcedDisclaimer =>
      'Zorunlu hamleler hariç tutulur. Bunlar motor tahminleridir, turnuva puanı değildir.';

  @override
  String learningGamesNeedingAnalysis(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kaydedilen # oyun analiz edilmeli veya analizi yenilenmeli.',
      one: 'Kaydedilen oyun analiz edilmeli veya analizi yenilenmeli.',
    );
    return '$_temp0';
  }

  @override
  String get learningAnalyseSavedGames => 'Kaydedilen oyunları analiz et';

  @override
  String get learningEmptyProfile =>
      'Öğrenme profilini oluşturmak için bir oyun oyna ve bitir. Oyun tekrarından tek tek kararları da kaydedebilirsin.';

  @override
  String get learningOpenHistory => 'Maç geçmişini aç';

  @override
  String get learningRecurringThemes => 'Tekrarlayan temalar';

  @override
  String get learningNoThemes =>
      'Bu seçimde henüz tekrarlayan hata teması yok.';

  @override
  String learningThemeDecisions(int count) {
    return 'Tekrar incelenecek $count karar. Bir konumun birden fazla teması olabilir.';
  }

  @override
  String get learningSaveMistakes => 'Bu hataları antrenman için kaydet';

  @override
  String learningSavedMistakes(int count) {
    return 'Antrenman listende $count karar var. Mevcut kayıtlar bir kez tutulur.';
  }

  @override
  String get learningSaveMistakesFailed =>
      'Bazı kararlar kaydedilemedi. Tamamlanan kayıtlar korunuyor; yeniden dene.';

  @override
  String get learningSpacedPractice => 'Aralıklı çalışma';

  @override
  String learningPracticeCounts(
    int due,
    int saved,
    int attempts,
    int successes,
  ) {
    return 'Şimdi zamanı gelen: $due · kayıtlı: $saved · deneme: $attempts · başarılı hatırlama: $successes';
  }

  @override
  String get learningIntervalsHelp =>
      'Başarılı incelemeler 1, 3, 7, 14 ve 30 gün sonra yeniden gelir. Hatalar veya gösterilen yanıtlar 10 dakika sonra döner. Erken tekrarlar aralığı ilerletmez.';

  @override
  String get learningAnswerContext =>
      'Antrenman sonuçları, başlangıç konumu rakibe ait olsa bile buradaki yanıtlarını yansıtır.';

  @override
  String get learningNoSavedPositions =>
      'Tekrar oynatmadan karar kaydet veya yukarıdaki hata düğmesini kullan.';

  @override
  String learningPositionTitle(Object side, int gameId) {
    return '$side kararı · oyun $gameId';
  }

  @override
  String learningReviewDue(Object date) {
    return 'İncele $date';
  }

  @override
  String get learningReadyToReview => 'İncelemeye hazır';

  @override
  String learningSuccessStreak(int count) {
    return 'Arka arkaya $count başarılı inceleme';
  }

  @override
  String get learningRemoveTooltip => 'Kayıtlı kararı kaldır';

  @override
  String get learningRecentPractice => 'Son antrenman';

  @override
  String get learningAnswerRevealed => 'Yanıt gösterildi';

  @override
  String get learningSuccessfulRecall => 'Başarılı hatırlama';

  @override
  String get learningTryAgain => 'Tekrar dene';

  @override
  String learningAttemptSubtitle(Object date, int positionId) {
    return '$date · kayıtlı konum $positionId';
  }

  @override
  String get learningRemoveTitle => 'Bu alıştırma kaldırılsın mı?';

  @override
  String get learningRemoveBody =>
      'Bu işlem alıştırmanın denemelerini kaldırır. Asıl oyun geçmişte kalır.';

  @override
  String get actionRemove => 'Kaldır';

  @override
  String get learningRemoveFailed => 'Bu alıştırma kaldırılamadı.';

  @override
  String get learningResetTitle => 'Antrenman ilerlemesi sıfırlansın mı?';

  @override
  String get learningResetBody =>
      'Tüm antrenman denemeleri ve inceleme aralıkları kaldırılır. Kayıtlı alıştırmalar ve maç geçmişi korunur; tüm alıştırmalar şimdi yeniden yapılabilir.';

  @override
  String get learningResetAction => 'İlerlemeyi sıfırla';

  @override
  String get learningResetFailed => 'Antrenman ilerlemesi sıfırlanamadı.';

  @override
  String learningAnalysisProgress(int completed, int failed) {
    return 'Analiz edilen oyun: $completed · kullanılamayan: $failed.';
  }

  @override
  String learningAnalysisComplete(int completed) {
    return 'Analiz edilen oyun: $completed.';
  }

  @override
  String learningAnalysisCompleteWithErrors(int completed, int failed) {
    return '$completed oyun analiz edildi; $failed analiz edilemedi. Motor hazır olduğunda yeniden dene.';
  }

  @override
  String get learningThemeHitting => 'Vurma ve tempo';

  @override
  String get learningThemeSafety => 'Açık pullar ve güvenlik';

  @override
  String get learningThemePointMaking => 'Nokta yapma';

  @override
  String get learningThemePrime => 'Prime ve blokajlar';

  @override
  String get learningThemeAnchor => 'Çapalar ve kaçış';

  @override
  String get learningThemeRace => 'Yarış verimliliği';

  @override
  String get learningThemeBearOff => 'Pulları toplama';

  @override
  String get learningThemeBarEntry => 'Bardan giriş';

  @override
  String get learningThemeCube => 'Küp kararları';

  @override
  String get analysisCubeNoDouble => 'Katlama';

  @override
  String get analysisCubeDouble => 'Katla';

  @override
  String get analysisCubeTake => 'Kabul et';

  @override
  String get analysisCubePass => 'Pas geç';

  @override
  String get learningAnalysisStarting => 'Kaydedilen oyunlar analiz ediliyor…';

  @override
  String get tutorCubelessEstimateScope =>
      '0-ply küpsüz tahmin · skor bilinmiyor';

  @override
  String get tutorLossPp => 'Kayıp pp';

  @override
  String get tutorLoss => 'Kayıp';

  @override
  String get scoreSheetNoMoves => 'Hamle yok';

  @override
  String get tutorOptions => 'Eğitmen seçenekleri';

  @override
  String get tutorCollapseTooltip => 'Eğitmeni daralt';

  @override
  String get tutorExpandTooltip => 'Eğitmeni genişlet';

  @override
  String get onlineTitle => 'Çevrimiçi oyun';

  @override
  String get onlineUnassistedNote => 'Çevrimiçi oyunda eğitmen kullanılamaz.';

  @override
  String get onlineNotConfiguredTitle => 'Çevrimiçi oyun yapılandırılmamış';

  @override
  String get onlineNotConfiguredBody =>
      'Bu sürümde çevrimiçi oyun kullanılamıyor.';

  @override
  String get onlineErrorNoMatch => 'Maç bulunamadı.';

  @override
  String get onlineErrorSeatTaken => 'Koltuk zaten dolu.';

  @override
  String get onlineErrorPermission => 'Bu işlem için izniniz yok.';

  @override
  String get onlineErrorGeneric => 'Çevrimiçi oyuna bağlanılamadı.';

  @override
  String get onlineMatchFinished => 'Maç bitti.';

  @override
  String get onlineEnterCodeError => 'Geçerli bir kod girin.';

  @override
  String get onlineOpponentShort => 'Rakip';

  @override
  String get onlineMatchInProgress => 'Maç sürüyor';

  @override
  String onlineResumePrompt(Object code) {
    return '$code maçını oynuyordun. Devam edilsin mi?';
  }

  @override
  String get onlineRejoin => 'Yeniden katıl';

  @override
  String get onlineForgetMatch => 'Maçı unut';

  @override
  String get onlineCreateTitle => 'Çevrimiçi maç oluştur';

  @override
  String get onlineMatchLength => 'Maç uzunluğu';

  @override
  String get onlineNoCubeTitle => 'Küpsüz oyun';

  @override
  String get onlineNoCubeSubtitle => 'Katlama küpü olmadan oyna.';

  @override
  String get onlineCreate => 'Oluştur';

  @override
  String get onlineWaitingOpponent => 'Rakip bekleniyor';

  @override
  String get onlineShareCode => 'Kodu paylaş';

  @override
  String get onlineCopyCode => 'Kodu kopyala';

  @override
  String get onlineCodeCopied => 'Kod kopyalandı';

  @override
  String get onlineJoinTitle => 'Maça katıl';

  @override
  String get onlineRoomCode => 'Oda kodu';

  @override
  String get onlineJoin => 'Katıl';

  @override
  String get lanTitle => 'Yakındakilerle oyna';

  @override
  String get lanTabHost => 'Sunucu ol';

  @override
  String get lanTabJoin => 'Katıl';

  @override
  String get lanUnassistedNote =>
      'Yakındaki oyunlar eğitmen içermez. Maçtan sonra hamlelerini inceleyip hatalarını çalış.';

  @override
  String get lanGameStartFailed =>
      'Oyun başlatılamadı. Diğer cihaz yeniden katılmayı deneyebilir.';

  @override
  String get lanHostPortInUse =>
      'Sunucu başlatılamadı — bağlantı noktası zaten kullanılıyor. Diğer Backgammon Buddy kopyalarını kapatıp yeniden dene.';

  @override
  String get lanHostStartFailed =>
      'Sunucu başlatılamadı. Wi-Fi bağlantını kontrol edip yeniden dene.';

  @override
  String get lanHostTitle => 'Oyun sunucusu ol';

  @override
  String get lanStartHosting => 'Sunucuyu başlat';

  @override
  String get lanHostHelp =>
      'İki cihaz da aynı Wi-Fi ağında olmalı. Bu cihaz zarları atar ve skoru tutar.';

  @override
  String get lanWaitingPlayerTitle => 'Oyuncu bekleniyor';

  @override
  String get lanRoomCodeInfo =>
      'Bu kodu diğer oyuncuya söyle. Erişim sağlar — uygulama kodu ağ üzerinden göndermez.';

  @override
  String get lanWaitingPlayer => 'Oyuncu bekleniyor…';

  @override
  String get lanStopHosting => 'Sunuculuğu durdur';

  @override
  String lanFindNearbyPort(int port) {
    return 'Diğer cihazdan yakındaki oyunları aramasını iste. $port bağlantı noktasında dinleniyor.';
  }

  @override
  String get lanOnNetwork => 'Bu ağda';

  @override
  String get lanCopyAddress => 'Adresi kopyala';

  @override
  String get lanAddressCopied => 'Adres kopyalandı';

  @override
  String get lanScanHostTitle => 'Sunucuyu tara';

  @override
  String get lanScanHostHelp =>
      'Diğer cihaz sunucu ekranında QR kodu gösterir. Tarama, adresi ve oda kodunu doldurur.';

  @override
  String get lanScanQr => 'QR kodunu tara';

  @override
  String get lanScannerUnavailable =>
      'Kamera veya kamera izni kullanılamıyor. Bunun yerine adresi ve oda kodunu aşağıya gir.';

  @override
  String get lanInvalidQr =>
      'Bu QR kodu Backgammon Buddy oyununa ait değil. Diğer cihazın sunucu ekranındaki kodu tara.';

  @override
  String get lanScannerFailed =>
      'Tarayıcı açılamadı. Adresi ve kodu aşağıya gir.';

  @override
  String get lanNearbyGames => 'Yakındaki oyunlar';

  @override
  String get lanSearching => 'Yakındaki oyunlar aranıyor…';

  @override
  String get lanNoGamesFound =>
      'Henüz oyun bulunamadı. Diğer cihazın sunucu olduğundan ve ikisinin aynı Wi-Fi ağında olduğundan emin ol ya da adresini gir.';

  @override
  String get lanStillSearching => 'Aramaya devam ediliyor…';

  @override
  String get lanEnterAddress => 'Adres gir';

  @override
  String get lanEnterAddressHelp =>
      'Otomatik bulma her ağda çalışmaz (iOS’ta tamamen engellenebilir). Sunucu ekranı ne yazacağını gösterir.';

  @override
  String get lanIpAddress => 'IP adresi';

  @override
  String get lanPort => 'Bağlantı noktası';

  @override
  String get lanInvalidPort =>
      '1 ile 65535 arasında bir bağlantı noktası girin.';

  @override
  String get lanEnterAddressError => 'Diğer cihazda gösterilen adresi gir.';

  @override
  String get lanEnterRoomCodeError => 'Diğer cihazdaki 4 haneli kodu gir.';

  @override
  String get lanJoinWrongCode =>
      'Oda kodu yanlış. Diğer cihazdaki dört rakamı kontrol edin.';

  @override
  String get lanJoinVersionMismatch =>
      'Diğer cihazda Backgammon Buddy’nin farklı sürümü var.';

  @override
  String get lanJoinHandshakeFailed =>
      'Cihaz Backgammon Buddy gibi yanıt vermedi. Adresi ve bağlantı noktasını kontrol et.';

  @override
  String get lanJoinFailed =>
      'Katılınamadı. Adresi ve oda kodunu kontrol edip yeniden dene.';

  @override
  String lanJoinTarget(Object name) {
    return '$name oyununa katıl';
  }

  @override
  String get lanJoinTargetHelp => 'Diğer cihazda gösterilen 4 haneli kodu gir.';

  @override
  String lanJoiningTarget(Object name) {
    return '$name oyununa katılıyor';
  }

  @override
  String get lanConnect => 'Bağlan';

  @override
  String get lanBack => 'Geri';

  @override
  String get lanTryAgain => 'Yeniden dene';

  @override
  String get lanStatusBusy => 'Oda kullanımda — bekleniyor…';

  @override
  String get lanStatusReconnecting => 'Bağlantı kesildi — yeniden deneniyor…';

  @override
  String get lanStatusConnected => 'Bağlandı — maç başlıyor…';

  @override
  String get lanStatusFailed => 'Katılınamadı.';

  @override
  String get lanStatusConnecting => 'Bağlanıyor…';

  @override
  String get diagnosticsCopySuccess => 'Tanılama bilgileri panoya kopyalandı';

  @override
  String get diagnosticsReviewTitle => 'Tanılama raporunu gözden geçir';

  @override
  String get diagnosticsPrivacyNotice =>
      'Taslağı açmak, uygulama sürümü, platform ve hata ayrıntıları dâhil aşağıdaki bilgileri GitHub’a gönderir. Siz orada göndermeden herkese açık bir sorun oluşturulmaz. Bu bilgiler özel veri içeriyorsa iptal edin ve raporu kendiniz hazırlamak için kopyalama seçeneğini kullanın.';

  @override
  String get diagnosticsCancel => 'İptal';

  @override
  String get diagnosticsOpenGitHub => 'GitHub’ı aç';

  @override
  String get diagnosticsTitle => 'Tanılama';

  @override
  String get diagnosticsReportTooltip => 'GitHub’da sorun bildir';

  @override
  String get diagnosticsCopyTooltip => 'Panoya kopyala';

  @override
  String get diagnosticsClearTooltip => 'Günlüğü temizle';

  @override
  String get diagnosticsEmpty =>
      'Kaydedilmiş hata yok.\n\nBir sorun oluşursa buraya kaydedilir — geri dönüp ayrıntıları hata bildirimine kopyalayın.';

  @override
  String gameHudNeutralScore(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore–$blackScore $blackLabel · $matchLength puana kadar';
  }

  @override
  String gameHudPlayerScore(
    Object you,
    int mine,
    int theirs,
    Object opponent,
    int matchLength,
  ) {
    return '$you $mine–$theirs $opponent · $matchLength puana kadar';
  }

  @override
  String get gameHudYou => 'Siz';

  @override
  String get gameHudAi => 'Bilgisayar';

  @override
  String gameHudGameNumber(int number) {
    return '$number. oyun';
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
    return '$whiteLabel – $blackLabel · $pipsLabel $whitePips–$blackPips';
  }

  @override
  String gameHudOpponentDetail(
    Object opponent,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return '$opponent rakibine karşı · $pipsLabel $mine–$theirs';
  }

  @override
  String gameHudOpponentDetailWithLevel(
    Object opponent,
    Object level,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return '$opponent rakibine karşı · $level · $pipsLabel $mine–$theirs';
  }

  @override
  String get gameHudPips => 'Pip';

  @override
  String get gameHudCrawford => 'Crawford';

  @override
  String get gameHudDouble => 'Katla';

  @override
  String get gameHudMoreActions => 'Diğer işlemler';

  @override
  String get gameHudSurrender => 'Pes et…';

  @override
  String get gameHudThinking => 'Düşünüyor';

  @override
  String get gameHudDoubleBeforeRoll =>
      'Yalnızca kendi sıranızda zar atmadan önce katlayabilirsiniz.';

  @override
  String get gameHudNoDoubleCrawford =>
      'Crawford oyununda katlama yoktur — maçı bu tek oyun belirler.';

  @override
  String get gameHudOnlyCubeOwner =>
      'Yalnızca küpün sahibi katlayabilir; şu anda küp diğer tarafta.';

  @override
  String get gameHudDoubleUnavailable => 'Katlama şu anda kullanılamıyor.';

  @override
  String gameDialogScoreLine(
    Object whiteLabel,
    int whiteScore,
    int blackScore,
    Object blackLabel,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore — $blackScore $blackLabel ($matchLength puana kadar)';
  }

  @override
  String gameDialogPlayerWon(Object winner, Object points) {
    return '$winner bu oyunu kazanır ($points).';
  }

  @override
  String gameDialogPlayerWonGammon(Object winner, Object points) {
    return '$winner bu oyunu kazanır ($points, gammon).';
  }

  @override
  String gameDialogPlayerWonBackgammon(Object winner, Object points) {
    return '$winner bu oyunu kazanır ($points, backgammon).';
  }

  @override
  String gameDialogPlayerWonDrop(Object winner, Object points, Object loser) {
    return '$winner bu oyunu kazanır ($points) — $loser katlamayı reddetti.';
  }

  @override
  String gameDialogPlayerWonResignation(
    Object winner,
    Object points,
    Object loser,
  ) {
    return '$winner bu oyunu kazanır ($points) — $loser pes etti.';
  }

  @override
  String get gameDialogPassDeviceTitle => 'Cihazı devret';

  @override
  String gameDialogPlayersTurn(Object name) {
    return '$name oynuyor';
  }

  @override
  String get gameDialogTapToContinue => 'Devam etmek için dokunun';

  @override
  String get gameDialogCubeOfferedTitle => 'Katlama teklif edildi';

  @override
  String gameDialogCubeOfferMessage(
    Object doubler,
    int value,
    Object tutorLine,
  ) {
    return '$doubler, küpü $value yapmak istiyor. Kabul mü, pas mı?$tutorLine';
  }

  @override
  String get gameDialogPass => 'Pas';

  @override
  String get gameDialogTake => 'Kabul et';

  @override
  String get gameDialogResignationTitle => 'Pes etme teklifi';

  @override
  String gameDialogResignationMessage(Object resigner, Object value) {
    return '$resigner, $value karşılığında pes etmeyi teklif ediyor. Kabul mü, ret mi?';
  }

  @override
  String get gameDialogResignSingle => 'tek oyun';

  @override
  String get gameDialogResignGammon => 'gammon';

  @override
  String get gameDialogResignBackgammon => 'backgammon';

  @override
  String get gameDialogDecline => 'Reddet';

  @override
  String get gameDialogAccept => 'Kabul et';

  @override
  String get gameDialogGameOverTitle => 'Oyun bitti';

  @override
  String get gameDialogNextGame => 'Sonraki oyun';

  @override
  String get gameDialogMatchOverTitle => 'Maç bitti';

  @override
  String get gameDialogNobody => 'Hiç kimse';

  @override
  String gameDialogMatchWinner(Object winner) {
    return '$winner maçı kazanır.';
  }

  @override
  String get gameDialogSavedToHistory => 'Geçmişe kaydedildi';

  @override
  String get gameDialogDone => 'Bitti';

  @override
  String get gameTapNoLegalMove => 'Yasal hamleleri görmek için puluna dokun.';

  @override
  String get gameTapNoLegalMoveUndo => 'Önce pula, sonra hedefe dokun.';

  @override
  String get gameDragHint => 'Pulu hedefe sürükle.';

  @override
  String get commonGotIt => 'Anladım';

  @override
  String get gameHintStageBeforeHint => 'İpucundan önce';

  @override
  String get surrenderTitle => 'Oyundan çekil?';

  @override
  String surrenderNamedConcedes(String player) {
    return '$player mevcut oyundan çekiliyor.';
  }

  @override
  String get surrenderConcedes => 'Mevcut oyundan çekiliyor.';

  @override
  String surrenderAvailableAtNamedTurn(String player) {
    return '$player sırasının başında kullanılabilir';
  }

  @override
  String get surrenderAvailableAtYourTurn => 'Sıranın başında kullanılabilir';

  @override
  String get commonCancel => 'İptal';

  @override
  String get surrenderSingle => 'Tekli yenilgi';

  @override
  String get surrenderGammon => 'Mars yenilgisi';

  @override
  String get surrenderBackgammon => 'Backgammon yenilgisi';

  @override
  String get surrenderChoosePlayer => 'Oyuncu seç';

  @override
  String get commonDone => 'Tamam';

  @override
  String get cubeDouble => 'Katla';

  @override
  String get cubeBlockedOtherPlayersTurn => 'Şu anda diğer oyuncunun sırası.';

  @override
  String get cubeBlockedCrawford => 'Crawford oyununda küp kullanılamaz.';

  @override
  String get cubeBlockedOwnedByOther =>
      'Yalnızca küp sahibi katlayabilir; şu anda diğer tarafın elinde.';

  @override
  String get cubeBlockedUnavailable => 'Şu anda katlama kullanılamıyor.';

  @override
  String get gameStatusRolling => 'Zar atılıyor';

  @override
  String get gameStatusThinking => 'Bilgisayar düşünüyor';

  @override
  String gameStatusPlayersTurn(String player) {
    return '$player sırası';
  }

  @override
  String get cubeAdviceOpponentTake => 'Katla — rakip kabul etmeli';

  @override
  String get cubeAdviceOpponentPass => 'Katla — rakip pas geçmeli';

  @override
  String gameErrorBannerLabel(Object error) {
    return 'Hata: $error';
  }
}
