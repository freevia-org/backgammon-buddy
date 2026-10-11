// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class AppLocalizationsEl extends AppLocalizations {
  AppLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get homeTagline => 'Βελτιώστε το παιχνίδι σας με προπονητή';

  @override
  String get settings => 'Ρυθμίσεις';

  @override
  String get playVsComputer => 'Παίξτε εναντίον υπολογιστή';

  @override
  String get twoPlayers => 'Δύο παίκτες';

  @override
  String get playNearby => 'Παίξτε κοντά';

  @override
  String get playOnline => 'Παίξτε online';

  @override
  String get learningPractice => 'Μάθηση και εξάσκηση';

  @override
  String get gamesArchive => 'Αρχείο παιχνιδιών';

  @override
  String get followSystem => 'Γλώσσα συσκευής';

  @override
  String get white => 'Λευκά';

  @override
  String get black => 'Μαύρα';

  @override
  String get random => 'Τυχαία';

  @override
  String get startMatch => 'Έναρξη παιχνιδιού';

  @override
  String get tutor => 'Προπονητής';

  @override
  String get noMovesPass => 'Δεν υπάρχουν κινήσεις — πάσο';

  @override
  String get undo => 'Αναίρεση';

  @override
  String get confirm => 'Επιβεβαίωση';

  @override
  String get roll => 'Ρίψη';

  @override
  String get hint => 'Υπόδειξη';

  @override
  String get tutoringStyle => 'Στυλ καθοδήγησης';

  @override
  String get tutorStyleCoach => 'Προπονητής';

  @override
  String get tutorStyleHintsOnly => 'Μόνο υποδείξεις';

  @override
  String get tutorStyleTryFirst => 'Δοκιμάστε πρώτα';

  @override
  String get tutorCoachDescription =>
      'Υποδείξεις για τη θέση, σχόλια για τις κινήσεις, συμβουλές και καθοδήγηση για τον κύβο διπλασιασμού.';

  @override
  String get tutorHintsDescription =>
      'Κατατάξεις κινήσεων κατόπιν αιτήματος. Οι ζωντανές υποδείξεις για τη θέση και τα αυτόματα σχόλια για κάθε κίνηση παραμένουν απενεργοποιημένα.';

  @override
  String get tutorTryFirstDescription =>
      'Δοκιμάστε πρώτα την κίνησή σας πριν δείτε τις κατατάξεις ή την αξιολόγησή της· οι υποδείξεις για τη θέση παραμένουν ενεργές.';

  @override
  String get tutorCustomDescription =>
      'Προσαρμοσμένος συνδυασμός. Ρυθμίστε τις παρακάτω επιλογές όπως θέλετε.';

  @override
  String get tutorBestMoveHints => 'Υποδείξεις για τις καλύτερες κινήσεις';

  @override
  String get tutorRevealRankedPlays =>
      'Εμφάνιση κατάταξης κινήσεων όσο σκέφτεστε';

  @override
  String get tutorMoveExplanations => 'Επεξηγήσεις κινήσεων';

  @override
  String get tutorCompareEstimates =>
      'Σύγκριση εκτιμήσεων και αλλαγών στη σκακιέρα';

  @override
  String get tutorGameCommentary => 'Σχόλια για την παρτίδα';

  @override
  String get tutorPositionPrompts =>
      'Υποδείξεις για τη θέση και σχόλια μετά από κάθε κίνηση';

  @override
  String get tutorCubeAdvice => 'Συμβουλές για τον κύβο διπλασιασμού';

  @override
  String get tutorMatchAwareCubeAdvice =>
      'Προτάσεις για διπλασιασμό, αποδοχή ή πάσο με βάση το σκορ του αγώνα';

  @override
  String get tutorTryMoveFirst => 'Δοκιμάστε πρώτα μια κίνηση';

  @override
  String get tutorStageBeforeHints =>
      'Δοκιμάστε την κίνησή σας πριν εμφανιστούν οι υποδείξεις ή η αξιολόγησή της';

  @override
  String get tutorStaticEstimateNote =>
      'Γρήγορη στατική εκτίμηση (0-ply, χωρίς προσομοιώσεις). Οι σημειώσεις περιγράφουν αλλαγές στη σκακιέρα και πιθανές απαντήσεις, όχι βεβαιότητες για την εξέλιξη.';

  @override
  String get tutorWhatToWatchNext => 'Τι να προσέξετε στη συνέχεια';

  @override
  String get tutorMoreBoardDetails =>
      'Περισσότερες λεπτομέρειες για τη σκακιέρα';

  @override
  String get tutorEstimatesAndHowTheyWork =>
      'Οι εκτιμήσεις και πώς λειτουργούν';

  @override
  String get tutorEstimateLimitations =>
      'Βάθος: στατική νευρωνική αξιολόγηση μετά από κάθε νόμιμη κίνηση (0-ply), χωρίς προσομοιώσεις ή αναζήτηση μελλοντικών απαντήσεων. Το MWC λαμβάνει υπόψη το σκορ του αγώνα και τον τρέχοντα κύβο όταν σταθμίζει τις εκτιμήσεις αποτελεσμάτων· δεν μοντελοποιεί μελλοντικές αποφάσεις για τον κύβο. Αν το σκορ δεν είναι διαθέσιμο, η αξία χωρίς κύβο είναι οι αναμενόμενοι πόντοι με κύβο στο 1. Οι παρατηρήσεις για τη σκακιέρα περιγράφουν την κίνηση και όχι τον εσωτερικό συλλογισμό του νευρωνικού μηχανισμού. Μικρές διαφορές δεν εγγυώνται βεβαιότητα· δεν υπάρχει βαθμονομημένο διάστημα εμπιστοσύνης.';

  @override
  String get tutorPointNumberNote =>
      'Οι αριθμοί των σημείων στις εκπαιδευτικές σημειώσεις μετρώνται από την περιοχή του παίκτη που κινείται.';

  @override
  String get tutorHittingRollNote =>
      'Οι μετρήσεις ζαριών που επιτρέπουν χτύπημα περιλαμβάνουν και τις 36 διατεταγμένες εκβάσεις και νόμιμα άμεσα ή έμμεσα χτυπήματα· δείχνουν ευκαιρίες, όχι πρόβλεψη της επιλογής του αντιπάλου.';

  @override
  String get tutorNoEvaluatedAlternatives =>
      'Δεν υπάρχουν αξιολογημένες εναλλακτικές για αυτή την κίνηση.';

  @override
  String get tutorForcedPassNoDecision =>
      'Το υποχρεωτικό πάσο δεν περιλαμβάνει επιλογή κίνησης πιονιών.';
}
