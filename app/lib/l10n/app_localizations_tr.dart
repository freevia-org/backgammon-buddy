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
}
