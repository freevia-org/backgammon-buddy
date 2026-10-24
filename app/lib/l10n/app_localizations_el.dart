// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class AppLocalizationsEl extends AppLocalizations {
  AppLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get appTitle => 'Backgammon Buddy';

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

  @override
  String get settingsReset => 'Επαναφορά';

  @override
  String get settingsAppLanguage => 'Γλώσσα εφαρμογής';

  @override
  String get settingsTheme => 'Θέμα';

  @override
  String get settingsThemeSystem => 'Σύστημα';

  @override
  String get settingsThemeLight => 'Ανοιχτό';

  @override
  String get settingsThemeDark => 'Σκούρο';

  @override
  String get settingsAnimationSpeed => 'Ταχύτητα κινούμενων εικόνων';

  @override
  String get settingsAnimationNone => 'Καμία';

  @override
  String get settingsAnimationNormal => 'Κανονική';

  @override
  String get settingsAnimationFast => 'Γρήγορη';

  @override
  String get settingsDiceRollAnimation => 'Κίνηση ρίψης ζαριών';

  @override
  String get settingsDiceRollAnimationHelp =>
      'Τα ζάρια κυλούν πριν από κάθε ρίψη';

  @override
  String get settingsDefaultMatchLength => 'Προεπιλεγμένη διάρκεια αγώνα';

  @override
  String get settingsDefaultDifficulty => 'Προεπιλεγμένη δυσκολία';

  @override
  String get settingsDifficultyEasy => 'Εύκολη';

  @override
  String get settingsDifficultyMedium => 'Μεσαία';

  @override
  String get settingsDifficultyHard => 'Δύσκολη';

  @override
  String get settingsDifficultyExpert => 'Έμπειρη';

  @override
  String get settingsTutorModeDefault => 'Προεπιλεγμένη λειτουργία προπονητή';

  @override
  String get settingsTutorAuto => 'Αυτόματα';

  @override
  String get settingsTutorOn => 'Ενεργό';

  @override
  String get settingsTutorOff => 'Ανενεργό';

  @override
  String get settingsTutorModeHelp =>
      'Η επιλογή Αυτόματα ενεργοποιεί τον προπονητή σε κάθε επίπεδο δυσκολίας του υπολογιστή. Οι επιλογές Ενεργό και Ανενεργό ορίζουν την αρχική ρύθμιση για τοπικούς αγώνες. Τα κοντινά και online παιχνίδια είναι χωρίς βοήθεια· μπορείτε να αναλύσετε τις αποθηκευμένες παρτίδες αργότερα. Οι παρακάτω προτιμήσεις εκμάθησης αποθηκεύονται σε αυτή τη συσκευή.';

  @override
  String get settingsTutorPreferences => 'Προτιμήσεις προπονητή';

  @override
  String get settingsTutorPreferencesSubtitle =>
      'Αποθηκευμένες προεπιλογές για μελλοντικούς αγώνες';

  @override
  String get settingsTutorSaveError =>
      'Δεν ήταν δυνατή η αποθήκευση των προτιμήσεων προπονητή.';

  @override
  String get settingsGameplay => 'Παιχνίδι';

  @override
  String get settingsMoveHighlights => 'Επισήμανση κινήσεων';

  @override
  String get settingsMoveHighlightsHelp =>
      'Κυκλώνει τα πούλια που μπορούν να μετακινηθούν και φωτίζει τους προορισμούς';

  @override
  String get settingsDragToMove => 'Μετακίνηση με σύρσιμο';

  @override
  String get settingsDragToMoveHelp =>
      'Σύρετε ένα πούλι στον προορισμό του (λειτουργούν και τα πατήματα)';

  @override
  String get settingsCombinedMoves => 'Συνδυασμένες κινήσεις';

  @override
  String get settingsCombinedMovesHelp =>
      'Με ένα πάτημα, μετακινείται ένα πούλι με βάση και τα δύο ζάρια';

  @override
  String get settingsRotateBoard => 'Περιστροφή ταμπλό ανά σειρά';

  @override
  String get settingsRotateBoardHelp =>
      'Σε παιχνίδι με μία συσκευή, γυρίζει το ταμπλό προς τον παίκτη που παίζει';

  @override
  String get settingsPassDevice => 'Οθόνη παράδοσης συσκευής';

  @override
  String get settingsPassDeviceHelp =>
      'Κρύβει το ταμπλό όταν παραδίδετε τη συσκευή στον άλλο παίκτη';

  @override
  String get settingsShowScore => 'Εμφάνιση σκορ';

  @override
  String get settingsShowScoreHelp =>
      'Εμφανίζει το τρέχον σκορ αγώνα στην κεφαλίδα';

  @override
  String get settingsBuddyMode => 'Λειτουργία Buddy';

  @override
  String get settingsBuddyTerse => 'Σύντομη';

  @override
  String get settingsBuddyFriendly => 'Φιλική';

  @override
  String get settingsBuddyTerseHelp =>
      'Πώς εκφωνεί ο Buddy μια κίνηση: «13/8, 24/22» — η σύντομη σημειογραφία που χρησιμοποιούν οι παίκτες στο ταμπλό.';

  @override
  String get settingsBuddyFriendlyHelp =>
      'Πώς εκφωνεί ο Buddy μια κίνηση: «Μετακίνησε ένα πούλι από το 13 στο 8 και ένα από το 24 στο 22».';

  @override
  String get settingsListenForDice => 'Ακρόαση για τα ζάρια';

  @override
  String get settingsListenForDiceHelp =>
      'Όταν ακούσει ρίψη, ο Buddy ελέγχει νωρίτερα το ταμπλό. Η απενεργοποίηση δεν αλλάζει κάτι άλλο.';

  @override
  String get settingsDiagnostics => 'Διαγνωστικά';

  @override
  String get settingsErrorLog => 'Καταγραφή σφαλμάτων';

  @override
  String get settingsErrorLogHelp =>
      'Πρόσφατα σφάλματα, έτοιμα για αντιγραφή σε αναφορά προβλήματος';

  @override
  String get settingsReportBug => 'Αναφορά σφάλματος';

  @override
  String get settingsReportBugHelp =>
      'Ανοίγει οδηγό αναφοράς προβλήματος στο GitHub';

  @override
  String get settingsSuggestIdea => 'Πρόταση ιδέας';

  @override
  String get settingsSuggestIdeaHelp =>
      'Βοηθήστε μας να βελτιώσουμε τον προπονητή και το παιχνίδι';

  @override
  String get settingsAbout => 'Σχετικά';

  @override
  String get settingsOpenSourceLicenses => 'Άδειες λογισμικού ανοικτού κώδικα';

  @override
  String settingsAppVersion(Object version) {
    return 'Backgammon Buddy $version';
  }

  @override
  String get tutorPhraseGameFinished => 'Η παρτίδα ολοκληρώθηκε.';

  @override
  String get tutorPhraseReviewFinishedGame =>
      'Εξετάστε τις κινήσεις για να βρείτε μια απόφαση που αξίζει να εξασκήσετε.';

  @override
  String get tutorPhraseCubeOffered =>
      'Προσφέρθηκε διπλασιασμός του στοιχήματος.';

  @override
  String get tutorPhraseCubeDecisionPrompt =>
      'Αποφασίστε αν θα δεχτείτε ή θα απορρίψετε τον διπλασιασμό πριν σχεδιάσετε κίνηση για τα πούλια.';

  @override
  String get tutorPhraseCubeScoreContext =>
      'Το σκορ του αγώνα αλλάζει την αξία του επιπλέον στοιχήματος.';

  @override
  String get tutorPhraseResignationOffered =>
      'Προσφέρθηκε παραίτηση από την παρτίδα.';

  @override
  String get tutorPhraseResignationDecisionPrompt =>
      'Συγκρίνετε τους προσφερόμενους πόντους με τη θέση πριν αποδεχτείτε την παραίτηση ή συνεχίσετε.';

  @override
  String get tutorPhraseNoLegalPlay =>
      'Δεν υπάρχει νόμιμη κίνηση με αυτή τη ζαριά.';

  @override
  String get tutorPhraseForcedPassPrompt =>
      'Το αναγκαστικό πάσο δεν είναι λάθος· περιμένετε την επόμενη ζαριά.';

  @override
  String get tutorPhraseOnlyOneResult => 'Υπάρχει μόνο μία νόμιμη τελική θέση.';

  @override
  String get tutorPhraseForcedTurnPrompt =>
      'Κάντε την αναγκαστική κίνηση. Δεν υπάρχει επιλογή προς αξιολόγηση σε αυτή τη ζαριά.';

  @override
  String get tutorPhrasePipCountsLevel => 'Οι μονάδες απόστασης είναι ίσες.';

  @override
  String tutorPhrasePipCountsAhead(int count) {
    return 'Έχετε προβάδισμα $count μονάδων απόστασης.';
  }

  @override
  String tutorPhrasePipCountsBehind(int count) {
    return 'Υστερείτε κατά $count μονάδες απόστασης.';
  }

  @override
  String tutorPhrasePlayerHasCheckersOnBar(int count) {
    return 'Πρώτα πρέπει να επαναφέρετε τα πούλια από τη μπάρα. Εκεί βρίσκονται: $count.';
  }

  @override
  String get tutorPhraseEnterBeforeMoving =>
      'Πρώτα επαναφέρετε ένα πούλι από τη μπάρα και μετά αναζητήστε ασφαλές σημείο για να προσγειωθεί.';

  @override
  String tutorPhraseOpponentHomePoints(int count) {
    return 'Ο αντίπαλος έχει κλειστά σημεία στην εσωτερική του περιοχή: $count.';
  }

  @override
  String get tutorPhraseBearOffRace => 'Αγώνας εξόδου των πουλιών.';

  @override
  String get tutorPhrasePureRace => 'Καθαρός αγώνας δρόμου.';

  @override
  String get tutorPhraseBearOffSpread =>
      'Βγάλτε πούλια από το παιχνίδι, διατηρώντας χρήσιμη διάταξη για την επόμενη ζαριά.';

  @override
  String get tutorPhraseBringRearCheckersHome =>
      'Φέρτε τα πίσω πούλια στην εσωτερική σας περιοχή χωρίς να στοιβάζετε πολλά στο ίδιο σημείο.';

  @override
  String get tutorPhraseArmiesHavePassed =>
      'Οι παίκτες προσπέρασαν ο ένας τον άλλον· δεν μπορούν πλέον να χτυπηθούν πούλια.';

  @override
  String tutorPhraseContactStillMatters(Object part) {
    return '$part Η επαφή εξακολουθεί να έχει σημασία.';
  }

  @override
  String tutorPhraseOpponentHasCheckersOnBar(int count) {
    return 'Ο αντίπαλος έχει πούλια στη μπάρα: $count.';
  }

  @override
  String get tutorPhraseKeepBoardClosed =>
      'Κρατήστε τα σημεία κλειστά καθώς φέρνετε τα υπόλοιπα πούλια στην εσωτερική σας περιοχή.';

  @override
  String get tutorPhraseBuildOrPreserveHomeBoard =>
      'Χτίστε ή διατηρήστε την εσωτερική σας περιοχή όσο ο αντίπαλος προσπαθεί να μπει από τη μπάρα.';

  @override
  String tutorPhraseHomePointsCloseEntries(int count) {
    return 'Έχετε κλειστά σημεία στην εσωτερική σας περιοχή: $count· καθένα κλείνει έναν αριθμό εισόδου.';
  }

  @override
  String tutorPhrasePrimeContact(int count) {
    return 'Επαφή με σειρά $count κλειστών σημείων.';
  }

  @override
  String get tutorPhraseExtendPrimeOrKeepSpares =>
      'Συγκρίνετε την επέκταση της σειράς με τη διατήρηση εφεδρικών πουλιών για να παραμείνει κλειστή.';

  @override
  String tutorPhraseSpareCheckersCanMove(int count) {
    return 'Εφεδρικά πούλια: $count. Μπορούν να μετακινηθούν χωρίς να ανοίξει αμέσως το σημείο τους.';
  }

  @override
  String tutorPhraseAnchorContact(Object points) {
    return 'Επαφή με άγκυρα στα σημεία $points.';
  }

  @override
  String get tutorPhraseCompareAnchorProgressAhead =>
      'Συγκρίνετε την επιστροφή των πίσω πουλιών με την ασφάλεια που προσφέρει η άγκυρά σας.';

  @override
  String get tutorPhraseCompareAnchorProgressBehind =>
      'Έχετε κατά νου την ασφαλή βάση σας όσο αναζητάτε χτύπημα ή βελτιώνετε τη θέση σας.';

  @override
  String get tutorPhrasePreserveAnchorFoothold =>
      'Η άγκυρα δεν μπορεί να χτυπηθεί, αλλά αυτά τα πούλια έχουν ακόμη δρόμο μέχρι την εσωτερική περιοχή.';

  @override
  String get tutorPhraseContactThreats =>
      'Η επαφή συνεχίζεται: και οι δύο πλευρές μπορούν ακόμη να απειλήσουν με χτύπημα.';

  @override
  String get tutorPhraseLookForPointsAndSafety =>
      'Αναζητήστε χρήσιμα κλειστά σημεία και εξετάστε τον κίνδυνο να αφήσετε μεμονωμένα πούλια εκτεθειμένα.';

  @override
  String tutorPhraseHomePointsAndBlots(int count, int otherCount) {
    return 'Κλειστά σημεία στην εσωτερική σας περιοχή: $count. Εκτεθειμένα πούλια που αφήνετε: $otherCount.';
  }

  @override
  String get tutorPhraseChooseCheckerPrompt =>
      'Επιλέξτε ένα πούλι για να ξεκινήσετε την κίνησή σας.';

  @override
  String get tutorPhraseLegalPlayPrompt =>
      'Κάντε μια νόμιμη κίνηση για να δείτε σχόλια.';

  @override
  String tutorPhraseStagedHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count αντίπαλα πούλια',
      one: '$count αντίπαλο πούλι',
    );
    return 'Χτυπήσατε $_temp0.';
  }

  @override
  String tutorPhraseStagedEnter(int count) {
    return 'Πούλια που επαναφέρατε από τη μπάρα: $count.';
  }

  @override
  String tutorPhraseStagedBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count πούλια',
      one: '$count πούλι',
    );
    return 'Πούλια που βγάλατε από το παιχνίδι: $_temp0.';
  }

  @override
  String tutorPhraseStagedMakePoints(Object points) {
    return 'Κλείσατε τα σημεία $points.';
  }

  @override
  String tutorPhraseStagedBlot(int point) {
    return 'Το πούλι στο σημείο $point παραμένει εκτεθειμένο προς το παρόν.';
  }

  @override
  String tutorPhraseStagedSpare(int point) {
    return 'Το εφεδρικό πούλι στο σημείο $point μπορεί να μετακινηθεί αργότερα χωρίς να ανοίξει το σημείο.';
  }

  @override
  String tutorPhraseStagedPartialPrompt(Object part) {
    return '$part Χρησιμοποιήστε και τα υπόλοιπα διαθέσιμα ζάρια πριν αξιολογήσετε ολόκληρη την κίνηση.';
  }

  @override
  String get tutorPhraseStagedAllCheckersOff =>
      'Και τα 15 πούλια έχουν βγει από το ταμπλό: κερδίσατε την παρτίδα.';

  @override
  String get tutorPhraseStagedHitShortPlan =>
      'Το χτύπημα κερδίζει χρόνο όσο ο αντίπαλος επιστρέφει από τη μπάρα.';

  @override
  String get tutorPhraseStagedEfficientBearOffPlan =>
      'Η αποτελεσματική έξοδος αφαιρεί πούλια και αφήνει χρήσιμους αριθμούς για την επόμενη ζαριά.';

  @override
  String get tutorPhraseStagedRaceHomePlan =>
      'Στον αγώνα δρόμου, φέρτε τα πίσω πούλια στην εσωτερική περιοχή και κρατήστε χρήσιμα σημεία για την έξοδο.';

  @override
  String get tutorPhraseStagedBearOffContactPlan =>
      'Η έξοδος προχωρά προς τη νίκη, αλλά όσο υπάρχει επαφή, ένα εκτεθειμένο πούλι μπορεί να γίνει στόχος.';

  @override
  String get tutorPhraseStagedReentryPlan =>
      'Η είσοδος επαναφέρει το πούλι στο παιχνίδι· στη συνέχεια βρείτε ένα ασφαλές σημείο.';

  @override
  String get tutorPhraseStagedHomeBoardPlan =>
      'Το νέο κλειστό σημείο στην εσωτερική σας περιοχή αφαιρεί έναν αριθμό εισόδου μετά από μελλοντικό χτύπημα.';

  @override
  String get tutorPhraseStagedPrimePlan =>
      'Η μεγαλύτερη σειρά κλείνει περισσότερα σημεία προσγείωσης· τα εφεδρικά πούλια βοηθούν να τη διατηρήσετε.';

  @override
  String get tutorPhraseStagedLeaveAnchorPlan =>
      'Αφήνοντας την άγκυρα προωθείτε τα πίσω πούλια, αλλά χάνετε μια ασφαλή βάση.';

  @override
  String get tutorPhraseStagedNewAnchorPlan =>
      'Η νέα άγκυρα προσφέρει ασφαλή βάση στα πίσω πούλια.';

  @override
  String get tutorPhraseStagedCoverBlotPlan =>
      'Καλύπτοντας ένα εκτεθειμένο πούλι, αφαιρείτε έναν στόχο για τον αντίπαλο.';

  @override
  String get tutorPhraseStagedSafetyTradeoffPlan =>
      'Εδώ υπάρχει ισορροπία ανάμεσα στην ανάπτυξη και την ασφάλεια: τα πούλια που χτίζουν τη θέση μπορούν και τα ίδια να γίνουν στόχοι.';

  @override
  String tutorPhraseStagedCompletePrompt(Object part) {
    return '$part Η κίνηση είναι πλήρως έτοιμη. Πατήστε «Επιβεβαίωση» για να την εκτελέσετε.';
  }

  @override
  String get tutorMoveForcedVerdict =>
      'Αυτή η ζαριά δεν αφήνει επιλογή κίνησης για τα πούλια, επομένως δεν αξιολογείται ως απόφαση.';

  @override
  String get tutorMoveTopVerdict => 'Κορυφαία επιλογή για αυτή τη θέση.';

  @override
  String get tutorMoveAlternativeVerdict => 'Η μηχανή προτιμά άλλη κίνηση εδώ.';

  @override
  String tutorMoveEstimateDifference(Object loss) {
    return 'Διαφορά από την κορυφαία κίνηση: $loss.';
  }

  @override
  String tutorMoveEstimateOutcomes(
    Object winPercent,
    Object winGammonPercent,
    Object loseGammonPercent,
  ) {
    return 'Μετά από αυτή την κίνηση: $winPercent% πιθανότητα νίκης, $winGammonPercent% πιθανότητα νίκης με γκέμον ή μπακγκέμον, $loseGammonPercent% πιθανότητα ήττας με γκέμον ή μπακγκέμον. Πρόκειται για εκτιμήσεις από την πλευρά του παίκτη που παίζει.';
  }

  @override
  String tutorMoveEstimateMatchChance(Object percent) {
    return 'Εκτιμώμενη πιθανότητα νίκης στον αγώνα: $percent%.';
  }

  @override
  String get tutorMovePlanAllCheckersOff =>
      'Και τα 15 πούλια έχουν βγει από το ταμπλό: κερδίσατε την παρτίδα.';

  @override
  String tutorMovePlanHit(Object homeBoardAdvice) {
    return 'Χρησιμοποιήστε το χτύπημα για να κερδίσετε χρόνο όσο ο αντίπαλος μπαίνει από τη μπάρα. $homeBoardAdvice';
  }

  @override
  String get tutorMovePlanHitClosed =>
      'Κρατήστε κλειστά τα σημεία στην εσωτερική σας περιοχή για να δυσκολέψετε την είσοδο.';

  @override
  String get tutorMovePlanHitBuild =>
      'Κλείστε περισσότερα σημεία στην εσωτερική σας περιοχή, ώστε τα μελλοντικά χτυπήματα να δυσκολεύουν την επιστροφή του αντιπάλου.';

  @override
  String get tutorMovePlanRaceBearOff =>
      'Στοχεύστε σε αποτελεσματική έξοδο: βγάλτε πούλια διατηρώντας χρήσιμους αριθμούς για την επόμενη ζαριά.';

  @override
  String get tutorMovePlanRaceHome =>
      'Φέρτε τα πίσω πούλια στην εσωτερική περιοχή και απλώστε τα σε χρήσιμα σημεία για την έξοδο.';

  @override
  String get tutorMovePlanContactBearOff =>
      'Βγάλτε πούλια από το παιχνίδι, αλλά προσέχετε τα πίσω πούλια του αντιπάλου: όσο υπάρχει επαφή, ένα εκτεθειμένο πούλι μπορεί να γίνει στόχος.';

  @override
  String get tutorMovePlanReentry =>
      'Επιστρέψτε στο παιχνίδι και μετά αναζητήστε ένα ασφαλές σημείο για το πούλι που μπήκε.';

  @override
  String get tutorMovePlanHomeBoard =>
      'Ενισχύστε την εσωτερική σας περιοχή. Το νέο κλειστό σημείο κάνει πιο αποτελεσματικό ένα μελλοντικό χτύπημα, αφαιρώντας έναν αριθμό εισόδου.';

  @override
  String get tutorMovePlanPrime =>
      'Κρατήστε ενωμένη τη σειρά των κλειστών σημείων. Διατηρήστε εφεδρικά πούλια ώστε οι επόμενες ζαριές να μη σας αναγκάσουν να την ανοίξετε.';

  @override
  String get tutorMovePlanLeaveAnchor =>
      'Αν αφήσετε την άγκυρα, τα πίσω πούλια προχωρούν, αλλά χάνουν μια ασφαλή βάση. Προσέξτε να μην εκτεθούν στον δρόμο προς την εσωτερική περιοχή.';

  @override
  String get tutorMovePlanNewAnchor =>
      'Χρησιμοποιήστε τη νέα άγκυρα ως ασφαλή βάση ενώ βελτιώνετε την υπόλοιπη θέση σας.';

  @override
  String get tutorMovePlanCoverBlot =>
      'Συγκεντρώστε τα πούλια σας. Καλύπτοντας ένα εκτεθειμένο πούλι αφαιρείτε αυτόν τον στόχο και διατηρείτε διαθέσιμες επιλογές για την επόμενη ζαριά.';

  @override
  String get tutorMovePlanSafety =>
      'Ισορροπήστε την ανάπτυξη με την ασφάλεια: φέρτε τα πούλια που χτίζουν τη θέση σε χρήσιμα σημεία και ελέγξτε ποια μεμονωμένα πούλια μπορεί να χτυπηθούν.';

  @override
  String get tutorMoveObservationNoLegalPlay =>
      'Δεν υπάρχει νόμιμη κίνηση για τα πούλια: πρέπει να πάτε πάσο.';

  @override
  String tutorMoveObservationHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count αντίπαλα πούλια',
      one: '$count αντίπαλο πούλι',
    );
    return 'Χτυπάτε $_temp0· ο αντίπαλος πρέπει πρώτα να μπει από τη μπάρα πριν μετακινήσει τα υπόλοιπα πούλια.';
  }

  @override
  String tutorMoveObservationEntry(int count) {
    return 'Πούλια που μπήκαν από τη μπάρα: $count.';
  }

  @override
  String tutorMoveObservationBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count πούλια',
      one: '$count πούλι',
    );
    return 'Πούλια που βγήκαν από το ταμπλό: $_temp0.';
  }

  @override
  String tutorMoveObservationMadePoints(Object points) {
    return 'Κλείνετε τα σημεία $points. Δύο ή περισσότερα πούλια κρατούν ένα ασφαλές σημείο και εμποδίζουν τον αντίπαλο να προσγειωθεί εκεί.';
  }

  @override
  String tutorMoveObservationBrokenPoints(Object pointLabel, Object points) {
    return 'Ανοίγετε ξανά τα κλειστά $pointLabel: $points. Αυτά τα σημεία δεν εμποδίζουν πλέον τον αντίπαλο να προσγειωθεί εκεί.';
  }

  @override
  String tutorMoveObservationNoBlots(int previousCount) {
    return 'Δεν αφήνετε μεμονωμένα πούλια εκτεθειμένα (προηγουμένως $previousCount). Δεν υπάρχει πούλι που να μπορεί να χτυπηθεί τώρα.';
  }

  @override
  String tutorMoveObservationBlots(int count, int previousCount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count μεμονωμένα πούλια εκτεθειμένα',
      one: '$count μεμονωμένο πούλι εκτεθειμένο',
    );
    return 'Αφήνετε $_temp0 (προηγουμένως $previousCount). Εξετάστε αν ο αντίπαλος μπορεί να τα φτάσει πριν προτιμήσετε την ασφάλεια από κάποιο άλλο όφελος.';
  }

  @override
  String tutorMoveObservationPrimeRun(
    int count,
    int previousCount,
    Object primeAdvice,
  ) {
    return 'Μεγαλύτερη συνεχόμενη σειρά κλειστών σημείων: $count (προηγουμένως $previousCount). $primeAdvice';
  }

  @override
  String get tutorMoveObservationPrimeSix =>
      'Μια σειρά έξι κλειστών σημείων δεν μπορεί να διασχιστεί όσο παραμένει κλειστή.';

  @override
  String get tutorMoveObservationPrimeBuild =>
      'Κρατήστε κοντά πούλια που μπορούν να στηρίξουν την επέκταση ή τη διατήρηση αυτής της σειράς.';

  @override
  String tutorMoveObservationPrimeSpares(int count) {
    return 'Εφεδρικά πούλια πέρα από τα δύο που κρατούν κλειστό κάθε σημείο: $count. Μετακινώντας ένα εφεδρικό πούλι μπορείτε να διατηρήσετε το σημείο· αν μετακινήσετε ένα από τα δύο τελευταία, θα ανοίξει.';
  }

  @override
  String tutorMoveObservationAnchors(Object points, Object previousPoints) {
    return 'Άγκυρες στην εσωτερική περιοχή του αντιπάλου: $points (προηγουμένως $previousPoints). Η άγκυρα προστατεύει αυτά τα πούλια από χτυπήματα· αν την αφήσετε, ανταλλάσσετε αυτή την ασφαλή βάση με πρόοδο στον αγώνα.';
  }

  @override
  String get tutorMoveObservationPureRace =>
      'Καθαρός αγώνας δρόμου: οι παίκτες προσπέρασαν ο ένας τον άλλον και καμία πλευρά δεν έχει πούλι στη μπάρα. Δεν είναι πλέον δυνατά τα χτυπήματα· μετρά η αποτελεσματική έξοδος.';

  @override
  String get tutorMoveObservationNoReplyHit =>
      'Δεν υπάρχει νόμιμη επόμενη ζαριά με την οποία ο αντίπαλος να μπορεί να χτυπήσει πούλι σε αυτή τη θέση. Η επαφή παραμένει, οπότε μελλοντικές κινήσεις μπορεί να δημιουργήσουν νέες ευκαιρίες χτυπήματος.';

  @override
  String tutorMoveObservationReplyHit(
    int count,
    int total,
    int dieOne,
    int dieTwo,
    int point,
  ) {
    return 'Ο αντίπαλος μπορεί να χτυπήσει σε $count από $total ζαριές. Για παράδειγμα, το $dieOne–$dieTwo επιτρέπει νόμιμο χτύπημα στο πούλι σας στο σημείο $point. Το χτύπημα είναι δυνατό, αλλά δεν είναι βέβαιο ότι θα επιλεγεί.';
  }

  @override
  String tutorMoveObservationOpponentBarHome(
    int closedPoints,
    Object entryAdvice,
  ) {
    return 'Κλειστά σημεία στην εσωτερική σας περιοχή: $closedPoints. $entryAdvice';
  }

  @override
  String get tutorMoveObservationAllEntriesClosed =>
      'Ο αντίπαλος δεν μπορεί να μπει μέχρι να ανοίξει κάποιο σημείο.';

  @override
  String get tutorMoveObservationOpenEntry =>
      'Μια ζαριά που χρησιμοποιεί ανοιχτό σημείο εισόδου μπορεί να επαναφέρει ένα πούλι από τη μπάρα.';

  @override
  String tutorMoveComparisonDetail(
    Object factors,
    Object delta,
    Object direction,
    Object scoreContext,
  ) {
    return '$factors Η εκτιμώμενη πιθανότητα νίκης της κορυφαίας κίνησης είναι $delta ποσοστιαίες μονάδες $direction.$scoreContext';
  }

  @override
  String get tutorMoveComparisonHigher => 'υψηλότερη';

  @override
  String get tutorMoveComparisonLower => 'χαμηλότερη';

  @override
  String tutorMoveComparisonScoreContext(Object scoreContext) {
    return ' Μπορεί παρ’ όλα αυτά να κατατάσσεται υψηλότερα, επειδή τα γκέμον και τα μπακγκέμον έχουν διαφορετική αξία με το τρέχον $scoreContext.';
  }

  @override
  String get tutorMoveComparisonStake => 'στοίχημα';

  @override
  String get tutorMoveComparisonMatchScore => 'σκορ αγώνα';

  @override
  String tutorMoveComparisonFactorBar(int bestCount, int playedCount) {
    return 'Με την κορυφαία κίνηση μένουν στη μπάρα $bestCount αντίπαλα πούλια αντί για $playedCount. Ένα πούλι στη μπάρα πρέπει πρώτα να μπει πριν μετακινηθούν τα υπόλοιπα.';
  }

  @override
  String tutorMoveComparisonFactorHomeBoard(
    int bestCount,
    int playedCount,
    Object entryDifference,
  ) {
    return 'Η κορυφαία κίνηση κρατά κλειστά $bestCount σημεία στην εσωτερική σας περιοχή αντί για $playedCount, δηλαδή διαφορά $entryDifference σημείων εισόδου μετά από χτύπημα.';
  }

  @override
  String get tutorMoveComparisonClosingMore => 'κλείνει περισσότερα';

  @override
  String get tutorMoveComparisonLeavingMore => 'αφήνει περισσότερα ανοιχτά';

  @override
  String tutorMoveComparisonFactorShots(
    int bestCount,
    int playedCount,
    Object riskDifference,
  ) {
    return 'Η κορυφαία κίνηση επιτρέπει χτύπημα από τον αντίπαλο σε $bestCount από τις 36 ζαριές αντί για $playedCount. $riskDifference';
  }

  @override
  String get tutorMoveComparisonReducesRisk =>
      'Έτσι μειώνεται ο άμεσος κίνδυνος να σας στείλουν πίσω στη μπάρα.';

  @override
  String get tutorMoveComparisonExtraExposure =>
      'Συγκρίνετε αυτή την επιπλέον έκθεση με όσα κερδίζει η κίνηση σε άλλα σημεία.';

  @override
  String tutorMoveComparisonFactorPrime(int bestCount, int playedCount) {
    return 'Η μεγαλύτερη σειρά κλειστών σημείων είναι $bestCount στην κορυφαία κίνηση αντί για $playedCount· συγκρίνετε την ισχύ του φραγμού με τα πούλια που έχετε για να τον διατηρήσετε.';
  }

  @override
  String tutorMoveComparisonFactorAnchors(
    Object bestPoints,
    Object playedPoints,
  ) {
    return 'Οι άγκυρες της κορυφαίας κίνησης είναι στα σημεία $bestPoints αντί για $playedPoints. Η διατήρηση άγκυρας κρατά ένα ασφαλές σημείο προσγείωσης· αν την αφήσετε, τα πούλια πλησιάζουν στην εσωτερική περιοχή σας.';
  }

  @override
  String tutorMoveComparisonFactorBearOff(int bestCount, int playedCount) {
    return 'Με την κορυφαία κίνηση έχετε βγάλει $bestCount πούλια αντί για $playedCount. Κάθε πούλι που βγαίνει είναι ένα λιγότερο που θα χρειαστεί να βγάλετε αργότερα.';
  }

  @override
  String get tutorMoveComparisonFactorSimilarRisks =>
      'Και οι δύο κινήσεις αφήνουν τον ίδιο άμεσο κίνδυνο χτυπήματος, τα ίδια κλειστά σημεία στην εσωτερική περιοχή, τις ίδιες άγκυρες και τον ίδιο αριθμό πουλιών εκτός ταμπλό. Συγκρίνετε τα σημεία όπου μένουν τα πούλια: η επόμενη ζαριά μπορεί να αξιοποιήσει διαφορετικά το καθένα.';

  @override
  String get tutorMoveComparisonSummaryBar =>
      'Η κορυφαία κίνηση αφήνει περισσότερα πούλια του αντιπάλου στη μπάρα, καθυστερώντας τις υπόλοιπες κινήσεις του.';

  @override
  String get tutorMoveComparisonSummaryHomeBoard =>
      'Η κορυφαία κίνηση κλείνει περισσότερα σημεία στην εσωτερική περιοχή, δυσκολεύοντας την είσοδο μετά από χτύπημα.';

  @override
  String get tutorMoveComparisonSummaryShots =>
      'Η κορυφαία κίνηση επιτρέπει λιγότερες άμεσες ζαριές για χτύπημα, μειώνοντας τον κίνδυνο να σας στείλουν πίσω.';

  @override
  String get tutorMoveComparisonSummaryPrime =>
      'Η κορυφαία κίνηση διατηρεί μεγαλύτερη σειρά κλειστών σημείων.';

  @override
  String get tutorMoveComparisonSummaryAnchors =>
      'Η κορυφαία κίνηση διατηρεί περισσότερες ασφαλείς άγκυρες στην εσωτερική περιοχή του αντιπάλου.';

  @override
  String get tutorMoveComparisonSummaryBearOff =>
      'Η κορυφαία κίνηση βγάζει περισσότερα πούλια, αφήνοντας λιγότερα για αργότερα.';

  @override
  String tutorMoveComparisonSummaryBlots(int playedCount, int bestCount) {
    return 'Εκτεθειμένα μεμονωμένα πούλια μετά από αυτή την κίνηση: $playedCount· μετά την κορυφαία: $bestCount.';
  }

  @override
  String tutorMoveComparisonSummarySafeAnchor(int point) {
    return 'Η κορυφαία κίνηση διατηρεί ασφαλή άγκυρα στο σημείο $point.';
  }

  @override
  String get tutorMoveComparisonSummaryEntry =>
      'Η κορυφαία κίνηση κλείνει περισσότερα σημεία εισόδου, σε περίπτωση που χτυπηθεί κάποιο πούλι σας.';

  @override
  String get tutorMoveComparisonSummarySimilarRisks =>
      'Οι κινήσεις αφήνουν παρόμοιο άμεσο κίνδυνο· συγκρίνετε ποια σημεία θα είναι χρήσιμα στην επόμενη ζαριά.';

  @override
  String tutorMoveAssessmentEquityLoss(Object value) {
    return '$value αναμενόμενη αξία';
  }

  @override
  String tutorMoveAssessmentMwcLoss(Object value) {
    return '$value π.μ. πιθανότητας νίκης αγώνα';
  }

  @override
  String get tutorMovePointSingular => 'σημείο';

  @override
  String get tutorMovePointPlural => 'σημεία';

  @override
  String get tutorMoveNoPoints => 'κανένα';

  @override
  String get gameTutorCommentaryOff =>
      'Τα σχόλια για την παρτίδα είναι απενεργοποιημένα.';

  @override
  String get gameTutorToolsAvailable =>
      'Ανοίξτε τον εκπαιδευτή για τα εργαλεία που έχετε ενεργοποιήσει.';

  @override
  String get gameTutorNextRoll => 'Ρίξτε τα ζάρια.';

  @override
  String get gameTutorNoEvaluatedReview =>
      'Δεν υπάρχει αξιολογημένη εξήγηση για αυτή την καταγεγραμμένη κίνηση.';

  @override
  String get gameTutorAnalysisUnavailable => 'η ανάλυση δεν είναι διαθέσιμη';

  @override
  String get gameTutorReviewing => 'γίνεται έλεγχος…';

  @override
  String get gameTutorTryYourPlayFirst => 'Δοκιμάστε πρώτα τη δική σας κίνηση.';

  @override
  String get gameTutorKeepBuilding =>
      'Συνεχίστε να διαμορφώνετε την κίνησή σας.';

  @override
  String get gameTutorStageCompleteBeforeCoaching =>
      'Ολοκληρώστε μια πλήρη νόμιμη κίνηση πριν δείτε καθοδήγηση ή υποδείξεις.';

  @override
  String get gameTutorReadyToConfirm => 'Έτοιμο για επιβεβαίωση';

  @override
  String get gameTutorPlayTakingShape => 'Η κίνησή σας διαμορφώνεται.';

  @override
  String get gameTutorConfirmOrUndo =>
      'Επιβεβαιώστε για να παίξετε ή αναιρέστε και ξανασκεφτείτε την κίνηση.';

  @override
  String get gameTutorFinishDiceOrUndo =>
      'Χρησιμοποιήστε τα ζάρια που απομένουν ή αναιρέστε την κίνηση.';

  @override
  String get gameTutorComputerConsidering =>
      'Ο υπολογιστής σκέφτεται την κίνησή του.';

  @override
  String get gameTutorComputerPlayReviewed =>
      'Η ολοκληρωμένη κίνησή του θα αξιολογηθεί εδώ.';

  @override
  String get gameTutorYourPlay => 'Η κίνησή σας';

  @override
  String get gameTutorComputer => 'Υπολογιστής';

  @override
  String gameTutorPlayQuality(Object quality) {
    return 'Η κίνησή σας: $quality';
  }

  @override
  String get gameTutorForcedPlay => 'αναγκαστική κίνηση';

  @override
  String get gameTutorTopChoice => 'καλύτερη επιλογή';

  @override
  String get gameTutorSoundPlay => 'καλή κίνηση';

  @override
  String get gameTutorAnotherPlayMayFitBetter =>
      'ίσως ταιριάζει καλύτερα μια άλλη κίνηση';

  @override
  String get gameTutorAnotherPlayFitsBetter =>
      'μια άλλη κίνηση ταιριάζει καλύτερα σε αυτή τη θέση';

  @override
  String get gameTutorStrongerPlayAvailable => 'υπήρχε σαφώς ισχυρότερη κίνηση';

  @override
  String gameTutorPositionEdge(Object side) {
    return 'Η εκτίμηση δίνει πλεονέκτημα στον/στην $side.';
  }

  @override
  String get gameTutorPositionEven => 'Η θέση είναι περίπου ισόπαλη.';

  @override
  String tutorPlayedMove(Object move) {
    return 'Παίχτηκε: $move';
  }

  @override
  String tutorBestMove(Object move) {
    return 'Καλύτερη κίνηση: $move';
  }

  @override
  String get tutorShowRankedPlays => 'Εμφάνιση ταξινομημένων κινήσεων';

  @override
  String get tutorReviewRecordedMove =>
      'Πατήστε μια ολοκληρωμένη κίνηση στο αρχείο για να δείτε εδώ την αξιολόγησή της.';

  @override
  String get tutorTopPlays => 'Καλύτερες κινήσεις';

  @override
  String get tutorNoHintsAvailable => 'Δεν υπάρχουν διαθέσιμες υποδείξεις.';

  @override
  String get tutorPreviewThenConfirm =>
      'Πατήστε μια κίνηση για προεπισκόπηση στη σκακιέρα και έπειτα επιβεβαιώστε την.';

  @override
  String get tutorTopChoiceForPosition => 'Καλύτερη επιλογή για αυτή τη θέση';

  @override
  String get tutorAlternativePlay => 'Εναλλακτική κίνηση';

  @override
  String get tutorEngineEstimates => 'Εκτιμήσεις μηχανής';

  @override
  String get tutorEstimateScope =>
      'Εκτίμηση 0 ημι-κινήσεων · τρέχον σκορ και ποντάρισμα · χωρίς μελλοντικούς διπλασιασμούς';

  @override
  String get tutorEquity => 'Αξία θέσης';

  @override
  String get tutorMwcPercent => 'Πιθανότητα νίκης αγώνα %';

  @override
  String get tutorNearTiesNote =>
      'Οι σχεδόν ισοδύναμες επιλογές μπορεί να αλλάξουν με βαθύτερη ανάλυση.';

  @override
  String get tutorWhyThisPlay => 'Γιατί αυτή η κίνηση;';

  @override
  String get tutorCompareAlternative => 'Σύγκριση αυτής της εναλλακτικής';

  @override
  String get gameTutorCubeTake => 'Tutor: αποδοχή';

  @override
  String get gameTutorCubePass => 'Tutor: πάσο';

  @override
  String get practiceScreenTitle => 'Εξασκήσου σε μια απόφαση';

  @override
  String get practiceUnavailable =>
      'Αυτή η θέση εξάσκησης δεν είναι πλέον διαθέσιμη.';

  @override
  String get practiceSubmitError =>
      'Δεν ήταν δυνατή η αξιολόγηση ή η αποθήκευση αυτής της προσπάθειας. Η πρόοδός σου δεν άλλαξε. Δοκίμασε ξανά.';

  @override
  String practiceTurnLabel(Object side, Object dice) {
    return 'Παίζει ο/η $side · $dice';
  }

  @override
  String get practiceHistoricalScoreUnavailable =>
      'Το ιστορικό σκορ δεν είναι διαθέσιμο· η αξιολόγηση χρησιμοποιεί equity χωρίς κύβο.';

  @override
  String practiceScoreLine(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return 'Σκορ: $whiteLabel $whiteScore – $blackLabel $blackScore, έως $matchLength';
  }

  @override
  String get practiceCrawfordGame => ' · παρτίδα Crawford';

  @override
  String get practiceNoDoublingCube => 'Χωρίς κύβο διπλασιασμού.';

  @override
  String practiceCubeValue(int value) {
    return 'Κύβος $value.';
  }

  @override
  String get practiceHistoricalCubeUnknown =>
      'Άγνωστοι ιστορικοί κανόνες κύβου.';

  @override
  String get practiceAfterBestPosition => 'Θέση μετά την καλύτερη κίνηση';

  @override
  String get practiceAfterYourAnswerPosition => 'Θέση μετά την απάντησή σου';

  @override
  String get practiceFindYourPlayPrompt =>
      'Παίξε την κίνησή σου στο ταμπλό και έλεγξε την απάντησή σου. Δεν εμφανίζονται υποδείξεις.';

  @override
  String get practiceUndo => 'Αναίρεση';

  @override
  String get practiceCheckAnswer => 'Έλεγχος απάντησης';

  @override
  String get practiceRevealNoCredit => 'Αποκάλυψη απάντησης (χωρίς βαθμό)';

  @override
  String get practiceAnswerRevealedNoCredit =>
      'Η απάντηση αποκαλύφθηκε — χωρίς βαθμό ανάκλησης.';

  @override
  String practiceGradeLine(Object verdict, Object loss) {
    return '$verdict · $loss';
  }

  @override
  String practiceBestMoveLine(Object move) {
    return 'Καλύτερη: $move';
  }

  @override
  String practiceOriginalGameLine(Object move, Object loss) {
    return 'Αρχική παρτίδα: $move · $loss';
  }

  @override
  String practiceYourAnswerLine(Object move) {
    return 'Η απάντησή σου: $move';
  }

  @override
  String get practiceYourAnswerChip => 'Η απάντησή σου';

  @override
  String get practiceBestPlayChip => 'Καλύτερη κίνηση';

  @override
  String practiceNextReview(Object date) {
    return 'Επόμενη επανάληψη: $date.';
  }

  @override
  String get practiceRecallCredit =>
      'Οι καλύτερες ή καλές απαντήσεις μετρούν ως επιτυχής ανάκληση. Οι πρόωρες επαναλήψεις δεν αλλάζουν το πρόγραμμα.';

  @override
  String get practiceBackToLearning => 'Πίσω στη μάθηση';

  @override
  String get practiceMarkBest => 'Καλύτερη';

  @override
  String get practiceMarkGood => 'Καλή';

  @override
  String get practiceMarkDubious => 'Αμφίβολη';

  @override
  String get practiceMarkError => 'Λάθος';

  @override
  String get practiceMarkBlunder => 'Μεγάλο λάθος';

  @override
  String get practiceMarkForced => 'Αναγκαστική';

  @override
  String get newMatchYourSide => 'Η πλευρά σας';

  @override
  String get newMatchTutorMode => 'Λειτουργία tutor';

  @override
  String get newMatchTutorDescription =>
      'Μάθετε με υποδείξεις, εξηγήσεις και σχόλια για την παρτίδα';

  @override
  String get newMatchTutoringOptions => 'Επιλογές tutor';

  @override
  String get newMatchTutoringOptionsDescription =>
      'Για αυτή την παρτίδα· αλλάζουν και κατά τη διάρκεια του παιχνιδιού';

  @override
  String get setupMatchLength => 'Μήκος αγώνα';

  @override
  String get setupDifficulty => 'Δυσκολία';

  @override
  String get setupDifficultyEasy => 'Εύκολη';

  @override
  String get setupDifficultyMedium => 'Μέτρια';

  @override
  String get setupDifficultyHard => 'Δύσκολη';

  @override
  String get setupDifficultyExpert => 'Ειδικός';

  @override
  String get setupPlayWithoutCube => 'Παίξτε χωρίς κύβο';

  @override
  String get setupNoCubeThisMatch =>
      'Χωρίς κύβο διπλασιασμού σε αυτόν τον αγώνα';

  @override
  String get analysisTitle => 'Ανάλυση';

  @override
  String get gameMatchSummary => 'Σύνοψη αγώνα';

  @override
  String get gameAnalyzeGame => 'Ανάλυση παρτίδας';

  @override
  String get analysisMetricsTooltip => 'Τι σημαίνουν αυτοί οι αριθμοί;';

  @override
  String analysisError(Object error) {
    return 'Η ανάλυση της παρτίδας απέτυχε: $error';
  }

  @override
  String get analysisNoPositions =>
      'Δεν υπάρχουν θέσεις για εμφάνιση σε αυτή την παρτίδα.';

  @override
  String get analysisInProgress => 'Ανάλυση παρτίδας…';

  @override
  String analysisPercent(int percent) {
    return '$percent%';
  }

  @override
  String get analysisPlayed => 'Παίχτηκε';

  @override
  String get analysisBest => 'Καλύτερη';

  @override
  String get analysisPrevious => 'Προηγούμενη';

  @override
  String get analysisNext => 'Επόμενη';

  @override
  String get analysisPositionBeforeCube =>
      'Θέση πριν από την απόφαση για τον κύβο';

  @override
  String get analysisPositionAtPoint => 'Θέση σε αυτό το σημείο της παρτίδας';

  @override
  String get analysisShowingBestBefore =>
      'Εμφανίζεται η καλύτερη κίνηση στη θέση πριν από την κίνηση';

  @override
  String get analysisShowingBefore => 'Εμφανίζεται η θέση πριν από την κίνηση';

  @override
  String analysisVerdictLine(Object side, Object verdict, Object loss) {
    return '$side: $verdict$loss';
  }

  @override
  String analysisMoveLoss(Object loss) {
    return ' −$loss';
  }

  @override
  String get analysisExcludedFromAverages =>
      ' · εξαιρείται από τους μέσους όρους';

  @override
  String get analysisNoPlay => '(χωρίς κίνηση)';

  @override
  String analysisBestMoveLine(Object move) {
    return 'Καλύτερη κίνηση: $move';
  }

  @override
  String get analysisExplain => 'Εξήγηση';

  @override
  String get analysisSaveForPractice => 'Αποθήκευση για εξάσκηση';

  @override
  String get analysisSaveError =>
      'Δεν ήταν δυνατή η αποθήκευση αυτής της απόφασης. Δοκίμασε ξανά.';

  @override
  String analysisCubeInfo(
    Object side,
    Object action,
    Object mark,
    Object loss,
  ) {
    return '$side: $action · $mark · απώλεια $loss';
  }

  @override
  String get analysisCubeDecision => 'Απόφαση για τον κύβο';

  @override
  String analysisCubePlayed(Object action, Object percent) {
    return 'Παίχτηκε: $action (πιθανότητα νίκης στην αναμέτρηση $percent%).';
  }

  @override
  String analysisCubeBest(Object action, Object percent) {
    return 'Καλύτερη: $action (πιθανότητα νίκης στην αναμέτρηση $percent%).';
  }

  @override
  String get analysisCubeEstimate =>
      'Εκτίμηση 0-ply από την πλευρά του παίκτη που έχει σειρά. Υποθέτει βέλτιστη απάντηση αποδοχής ή πάσου. Χρησιμοποιεί προσέγγιση ζωής κύβου 0,7 στον κλάδο αποδεκτού διπλασιασμού, όχι πλήρη αναζήτηση μελλοντικών επαναδιπλασιασμών. Η βαθύτερη ανάλυση μπορεί να αλλάξει την απάντηση.';

  @override
  String get analysisClose => 'Κλείσιμο';

  @override
  String get analysisMoves => 'Κινήσεις';

  @override
  String get analysisForced => 'Αναγκαστική';

  @override
  String get analysisMarkBest => 'Καλύτερη';

  @override
  String get analysisMarkGood => 'Καλή';

  @override
  String get analysisMarkDubious => 'Αμφίβολη';

  @override
  String get analysisMarkError => 'Λάθος';

  @override
  String get analysisMarkBlunder => 'Μεγάλο λάθος';

  @override
  String analysisSummaryMeanLoss(Object loss) {
    return 'Μέση απώλεια $loss';
  }

  @override
  String analysisSummaryCheckerDecisions(int count) {
    return '$count αποφάσεις για πούλια';
  }

  @override
  String analysisSummaryBlunders(int count) {
    return 'Μεγάλα λάθη $count';
  }

  @override
  String analysisSummaryCubeLoss(Object loss) {
    return 'Απώλεια κύβου $loss';
  }

  @override
  String analysisRollWithoutDoubling(Object side) {
    return 'Ο/Η $side ρίχνει χωρίς διπλασιασμό';
  }

  @override
  String get metricExplainerTitle => 'Κατανόηση των μετρήσεων';

  @override
  String get metricExplainerTooltip => 'Τι σημαίνουν αυτοί οι αριθμοί;';

  @override
  String get metricExplainerMwcTitle =>
      'Πιθανότητα νίκης στην αναμέτρηση (MWC)';

  @override
  String get metricExplainerMwcBody =>
      'Όταν είναι γνωστό το σκορ, οι κινήσεις των πουλιών ταξινομούνται με βάση την εκτιμώμενη πιθανότητα νίκης στην αναμέτρηση. Η απώλεια εκφράζεται σε ποσοστιαίες μονάδες (pp): 1 pp σημαίνει πτώση από 51% σε 50%. Συνυπολογίζονται το τρέχον ποντάρισμα του κύβου και τα gammon/backgammon. Τα αναγκαστικά πάσα και οι ζαριές με μία νόμιμη τελική θέση εξαιρούνται από τους μέσους όρους.';

  @override
  String get metricExplainerSearchTitle => 'Αναζήτηση και αβεβαιότητα';

  @override
  String get metricExplainerSearchBody =>
      'Οι κατατάξεις κινήσεων είναι στατικές εκτιμήσεις 0-ply μετά την κίνηση, όχι προσομοιώσεις. Οι τιμές αναμέτρησης χρησιμοποιούν πίνακα equity χωρίς μελλοντικές σειρές κύβου. Οι αναλύσεις κύβου χρησιμοποιούν μερική προσέγγιση ζωής κύβου 0,7 σε αποδεκτά διπλασιάσματα. Δεν πρόκειται για πλήρη αναζήτηση με κύβο. Για διαφορές πάνω από 25 χρησιμοποιείται το όριο 25 του πίνακα. Οι σχεδόν ισόπαλες εκτιμήσεις μπορεί να αλλάξουν με βαθύτερη ανάλυση· δεν υπάρχει βαθμονομημένο διάστημα εμπιστοσύνης.';

  @override
  String get metricExplainerEquityTitle => 'Equity';

  @override
  String get metricExplainerEquityBody =>
      'Αν το σκορ δεν είναι διαθέσιμο, το equity χωρίς κύβο δείχνει τη μέση αξία μιας θέσης σε πόντους με τον κύβο στο 1. +1,0 σημαίνει ότι αναμένεται κέρδος ενός πόντου· −0,5 ότι αναμένεται απώλεια μισού πόντου.';

  @override
  String get metricExplainerEquityLossTitle => 'Απώλεια equity (π.χ. −0,016)';

  @override
  String get metricExplainerEquityLossBody =>
      'Για κάθε κίνηση συγκρίνουμε την επιλογή σου με την καλύτερη του κινητήρα. Η απώλεια equity δείχνει την αναμενόμενη αξία που έχασες. −0,016 σημαίνει ότι η κίνηση ήταν μόλις 0,016 πόντους χειρότερη — ένα μικρό λάθος. 0,000 σημαίνει ότι βρήκες την καλύτερη κίνηση.';

  @override
  String get metricExplainerErrorRateTitle => 'Ποσοστό λαθών';

  @override
  String get metricExplainerErrorRateBody =>
      'Η μέση απώλεια υπολογίζει τον μέσο όρο των αξιολογημένων αποφάσεων για πούλια στη μονάδα που εμφανίζεται. Οι αποφάσεις κύβου έχουν ξεχωριστό μέσο όρο. Μικρότερη τιμή σημαίνει πιο κοντά στις κορυφαίες εκτιμήσεις του κινητήρα· δεν είναι βαθμονομημένη αξιολόγηση παίκτη.';

  @override
  String get metricExplainerMoveMarksTitle => 'Βαθμοί κινήσεων';

  @override
  String get metricExplainerMoveMarksBody =>
      'Εκπαιδευτικές ζώνες MWC: Καλύτερη < 0,05 pp, Καλή < 0,5 pp, Αμφίβολη < 1,5 pp, Λάθος < 3 pp, Μεγάλο λάθος ≥ 3 pp. Είναι εκπαιδευτικές ζώνες της εφαρμογής, όχι βαθμονομημένη βεβαιότητα ή τουρνουά αξιολόγηση.\n\nΕκπαιδευτικές ζώνες equity χωρίς κύβο:';

  @override
  String get metricExplainerThresholdBest => 'απώλεια < 0,001';

  @override
  String get metricExplainerThresholdGood => 'απώλεια < 0,020';

  @override
  String get metricExplainerThresholdDubious => 'απώλεια < 0,050';

  @override
  String get metricExplainerThresholdError => 'απώλεια < 0,110';

  @override
  String get metricExplainerThresholdBlunder => 'απώλεια ≥ 0,110';

  @override
  String get metricExplainerGotIt => 'Έγινε';

  @override
  String get historyTitle => 'Ιστορικό αγώνων';

  @override
  String historyLoadFailed(Object error) {
    return 'Αποτυχία φόρτωσης ιστορικού:\n$error';
  }

  @override
  String get historyEmpty => 'Δεν έχετε παίξει ακόμη αγώνες.';

  @override
  String get historyDeleteConfirmTitle => 'Διαγραφή αυτού του αγώνα;';

  @override
  String historyDeleteConfirmBody(Object scoreLine) {
    return '$scoreLine\n\nΟ αγώνας και όλες οι καταγεγραμμένες παρτίδες του θα διαγραφούν οριστικά. Δεν είναι δυνατή η αναίρεση.';
  }

  @override
  String get actionCancel => 'Άκυρο';

  @override
  String get actionDelete => 'Διαγραφή';

  @override
  String get historyDeleteFailed => 'Δεν ήταν δυνατή η διαγραφή του αγώνα.';

  @override
  String get historyComplete => 'Ολοκληρώθηκε';

  @override
  String historyWinner(Object side) {
    return 'Κέρδισε ο/η $side';
  }

  @override
  String get historyUnfinished => 'Σε εξέλιξη';

  @override
  String get historyMatchTitle => 'Αγώνας';

  @override
  String historyMatchLoadFailed(Object error) {
    return 'Αποτυχία φόρτωσης αγώνα:\n$error';
  }

  @override
  String historyGamesLoadFailed(Object error) {
    return 'Αποτυχία φόρτωσης παρτίδων:\n$error';
  }

  @override
  String get historyNoGames => 'Δεν έχουν καταγραφεί ακόμη παρτίδες.';

  @override
  String historyGameTitle(int number) {
    return 'Παρτίδα $number';
  }

  @override
  String get historyCrawford => 'Crawford';

  @override
  String historyScoreLine(int whiteScore, int blackScore, int matchLength) {
    return 'Λευκός $whiteScore — $blackScore Μαύρος (στους $matchLength)';
  }

  @override
  String get historyModeComputer => 'έναντι υπολογιστή';

  @override
  String get historyModeTwoPlayers => 'Δύο παίκτες';

  @override
  String get historyModeOnline => 'Online';

  @override
  String get historyModeNearby => 'Παίξτε κοντά';

  @override
  String get historyModeBuddy => 'Buddy';

  @override
  String get historyGameInProgress => 'Σε εξέλιξη';

  @override
  String historyGameResult(Object side, int points, Object outcome) {
    return 'Ο/Η $side κερδίζει $points ($outcome)';
  }

  @override
  String get historyOutcomeSingle => 'μονή';

  @override
  String get historyOutcomeGammon => 'γκάμον';

  @override
  String get historyOutcomeBackgammon => 'μπακγκάμον';

  @override
  String get learningRefreshTooltip => 'Ανανέωση προόδου μάθησης';

  @override
  String get learningOptions => 'Επιλογές μάθησης';

  @override
  String get learningResetMenu => 'Επαναφορά προόδου εξάσκησης';

  @override
  String get learningLoadFailed =>
      'Δεν ήταν δυνατή η φόρτωση της προόδου μάθησης.';

  @override
  String get actionRetry => 'Δοκιμάστε ξανά';

  @override
  String get learningHeading => 'Μάθε από τις αποφάσεις σου';

  @override
  String get learningIntro =>
      'Η πρόοδός σου αποθηκεύεται σε αυτή τη συσκευή. Δες τα επαναλαμβανόμενα θέματα και δοκίμασε ξανά τις αποθηκευμένες θέσεις χωρίς να δεις την απάντηση. Μπορείς να εξετάζεις τα Λευκά και τα Μαύρα ξεχωριστά.';

  @override
  String get learningBothSides => 'Και οι δύο πλευρές';

  @override
  String get learningHumansOnly => 'Μόνο αποφάσεις ανθρώπων';

  @override
  String get learningHumanOnlyHelp =>
      'Απενεργοποίησέ το για να συμπεριλάβεις αποφάσεις του υπολογιστή και απομακρυσμένων παικτών';

  @override
  String learningDecisionSummary(int decisions, int mistakes, int blunders) {
    return '$decisions αποφάσεις · $mistakes για βελτίωση · $blunders μεγάλα λάθη';
  }

  @override
  String learningAverageLoss(int decisions, Object loss) {
    return 'Μέση απώλεια ($decisions αποφάσεις): $loss';
  }

  @override
  String get learningForcedDisclaimer =>
      'Οι αναγκαστικές κινήσεις εξαιρούνται. Αυτές είναι εκτιμήσεις του κινητήρα, όχι βαθμολογία τουρνουά.';

  @override
  String learningGamesNeedingAnalysis(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Οι αποθηκευμένες παρτίδες ($count) χρειάζονται ανάλυση ή νέα ανάλυση.',
      one: 'Η αποθηκευμένη παρτίδα χρειάζεται ανάλυση ή νέα ανάλυση.',
    );
    return '$_temp0';
  }

  @override
  String get learningAnalyseSavedGames => 'Ανάλυση αποθηκευμένων παρτίδων';

  @override
  String get learningEmptyProfile =>
      'Παίξε και ολοκλήρωσε μια παρτίδα για να δημιουργήσεις το προφίλ μάθησής σου. Μπορείς επίσης να αποθηκεύσεις αποφάσεις από την ανασκόπηση.';

  @override
  String get learningOpenHistory => 'Άνοιγμα ιστορικού αγώνων';

  @override
  String get learningRecurringThemes => 'Επαναλαμβανόμενα θέματα';

  @override
  String get learningNoThemes =>
      'Δεν υπάρχουν ακόμη επαναλαμβανόμενα θέματα λαθών σε αυτή την επιλογή.';

  @override
  String learningThemeDecisions(int count) {
    return '$count αποφάσεις για επανάληψη. Μια θέση μπορεί να έχει περισσότερα από ένα θέματα.';
  }

  @override
  String get learningSaveMistakes => 'Αποθήκευση αυτών των λαθών για εξάσκηση';

  @override
  String learningSavedMistakes(int count) {
    return '$count αποφάσεις βρίσκονται στη λίστα εξάσκησης. Οι ήδη αποθηκευμένες διατηρούνται.';
  }

  @override
  String get learningSaveMistakesFailed =>
      'Δεν ήταν δυνατή η αποθήκευση ορισμένων αποφάσεων. Οι επιτυχημένες αποθηκεύσεις διατηρούνται· δοκίμασε ξανά.';

  @override
  String get learningSpacedPractice => 'Εξάσκηση με διαστήματα';

  @override
  String learningPracticeCounts(
    int due,
    int saved,
    int attempts,
    int successes,
  ) {
    return '$due τώρα · $saved αποθηκευμένες · $attempts προσπάθειες · $successes επιτυχείς ανακλήσεις';
  }

  @override
  String get learningIntervalsHelp =>
      'Οι επιτυχημένες επαναλήψεις επιστρέφουν μετά από 1, 3, 7, 14 και 30 ημέρες. Τα λάθη ή οι αποκαλυμμένες απαντήσεις επιστρέφουν μετά από 10 λεπτά. Οι πρόωρες επαναλήψεις δεν αλλάζουν το διάστημα.';

  @override
  String get learningAnswerContext =>
      'Τα αποτελέσματα εξάσκησης βασίζονται στις απαντήσεις σου εδώ, ακόμη κι αν η αρχική θέση ανήκε σε αντίπαλο.';

  @override
  String get learningNoSavedPositions =>
      'Αποθήκευσε μια απόφαση από την ανασκόπηση ή χρησιμοποίησε το κουμπί λαθών παραπάνω.';

  @override
  String learningPositionTitle(Object side, int gameId) {
    return 'Απόφαση των $side · παρτίδα $gameId';
  }

  @override
  String learningReviewDue(Object date) {
    return 'Επανάληψη $date';
  }

  @override
  String get learningReadyToReview => 'Έτοιμο για επανάληψη';

  @override
  String learningSuccessStreak(int count) {
    return '$count επιτυχείς επαναλήψεις στην ώρα τους';
  }

  @override
  String get learningRemoveTooltip => 'Αφαίρεση αποθηκευμένης απόφασης';

  @override
  String get learningRecentPractice => 'Πρόσφατη εξάσκηση';

  @override
  String get learningAnswerRevealed => 'Η απάντηση αποκαλύφθηκε';

  @override
  String get learningSuccessfulRecall => 'Επιτυχής ανάκληση';

  @override
  String get learningTryAgain => 'Δοκίμασε ξανά αυτή την απόφαση';

  @override
  String learningAttemptSubtitle(Object date, int positionId) {
    return '$date · αποθηκευμένη θέση $positionId';
  }

  @override
  String get learningRemoveTitle => 'Να αφαιρεθεί αυτή η άσκηση;';

  @override
  String get learningRemoveBody =>
      'Αυτό αφαιρεί τις προσπάθειες εξάσκησης. Η αρχική παρτίδα παραμένει στο ιστορικό.';

  @override
  String get actionRemove => 'Αφαίρεση';

  @override
  String get learningRemoveFailed => 'Δεν ήταν δυνατή η αφαίρεση της άσκησης.';

  @override
  String get learningResetTitle => 'Να γίνει επαναφορά της προόδου εξάσκησης;';

  @override
  String get learningResetBody =>
      'Θα αφαιρεθούν όλες οι προσπάθειες και τα διαστήματα επανάληψης. Οι αποθηκευμένες ασκήσεις και το ιστορικό παραμένουν· όλες οι ασκήσεις θα είναι άμεσα διαθέσιμες.';

  @override
  String get learningResetAction => 'Επαναφορά προόδου';

  @override
  String get learningResetFailed => 'Δεν ήταν δυνατή η επαναφορά της προόδου.';

  @override
  String learningAnalysisProgress(int completed, int failed) {
    return 'Αναλύθηκαν $completed παρτίδες · $failed μη διαθέσιμες.';
  }

  @override
  String learningAnalysisComplete(int completed) {
    return 'Αναλύθηκαν $completed παρτίδες.';
  }

  @override
  String learningAnalysisCompleteWithErrors(int completed, int failed) {
    return 'Αναλύθηκαν $completed παρτίδες· δεν ήταν δυνατή η ανάλυση $failed. Δοκίμασε ξανά όταν είναι έτοιμος ο κινητήρας.';
  }

  @override
  String get learningThemeHitting => 'Χτύπημα και τέμπο';

  @override
  String get learningThemeSafety => 'Blots και ασφάλεια';

  @override
  String get learningThemePointMaking => 'Δημιουργία πόντων';

  @override
  String get learningThemePrime => 'Prime και αποκλεισμοί';

  @override
  String get learningThemeAnchor => 'Άγκυρες και διαφυγή';

  @override
  String get learningThemeRace => 'Αποδοτικότητα αγώνα δρόμου';

  @override
  String get learningThemeBearOff => 'Μάζεμα πούλιων';

  @override
  String get learningThemeBarEntry => 'Είσοδος από τη μπάρα';

  @override
  String get learningThemeCube => 'Αποφάσεις κύβου';

  @override
  String get analysisCubeNoDouble => 'Χωρίς διπλασιασμό';

  @override
  String get analysisCubeDouble => 'Διπλασιασμός';

  @override
  String get analysisCubeTake => 'Πάρε';

  @override
  String get analysisCubePass => 'Πάσο';

  @override
  String get learningAnalysisStarting => 'Ανάλυση αποθηκευμένων παρτίδων…';

  @override
  String get tutorCubelessEstimateScope =>
      'Εκτίμηση χωρίς κύβο, 0 ημι-κινήσεων · το σκορ δεν είναι διαθέσιμο';

  @override
  String get tutorLossPp => 'Απώλεια σε ποσοστιαίες μονάδες';

  @override
  String get tutorLoss => 'Απώλεια';

  @override
  String get scoreSheetNoMoves => 'Δεν υπάρχουν ακόμη κινήσεις';

  @override
  String get tutorOptions => 'Ρυθμίσεις tutor';

  @override
  String get tutorCollapseTooltip => 'Σύμπτυξη tutor';

  @override
  String get tutorExpandTooltip => 'Ανάπτυξη tutor';

  @override
  String get onlineTitle => 'Παίξτε online';

  @override
  String get onlineUnassistedNote =>
      'Οι ζωντανές online παρτίδες δεν έχουν βοήθεια. Αναλύστε τις κινήσεις σας και εξασκηθείτε στα λάθη μετά τον αγώνα.';

  @override
  String get onlineNotConfiguredTitle =>
      'Το online παιχνίδι δεν έχει ρυθμιστεί σε αυτή την έκδοση';

  @override
  String get onlineNotConfiguredBody =>
      'Αυτή η έκδοση δεν είναι συνδεδεμένη με Firebase, επομένως δεν μπορείτε να δημιουργήσετε ή να συμμετάσχετε σε αγώνες.';

  @override
  String get onlineErrorNoMatch =>
      'Δεν υπάρχει αγώνας με αυτόν τον κωδικό. Ελέγξτε τον και δοκιμάστε ξανά.';

  @override
  String get onlineErrorSeatTaken =>
      'Ο αγώνας δεν είναι πλέον ανοιχτός — η θέση έχει καταληφθεί.';

  @override
  String get onlineErrorPermission => 'Δεν έχετε πρόσβαση σε αυτόν τον αγώνα.';

  @override
  String get onlineErrorGeneric => 'Κάτι πήγε στραβά. Δοκιμάστε ξανά.';

  @override
  String get onlineMatchFinished =>
      'Ο αγώνας τελείωσε — δεν μπορείτε να επανέλθετε.';

  @override
  String get onlineEnterCodeError => 'Εισαγάγετε κωδικό αγώνα.';

  @override
  String get onlineOpponentShort => 'Αντίπ.';

  @override
  String get onlineMatchInProgress => 'Ο αγώνας βρίσκεται σε εξέλιξη';

  @override
  String onlineResumePrompt(Object code) {
    return 'Παίζατε στον αγώνα $code.';
  }

  @override
  String get onlineRejoin => 'Επανένωση';

  @override
  String get onlineForgetMatch => 'Ξεχάστε αυτόν τον αγώνα';

  @override
  String get onlineCreateTitle => 'Δημιουργία αγώνα';

  @override
  String get onlineMatchLength => 'Μήκος αγώνα';

  @override
  String get onlineNoCubeTitle => 'Παίξτε χωρίς κύβο';

  @override
  String get onlineNoCubeSubtitle =>
      'Χωρίς κύβο διπλασιασμού σε αυτόν τον αγώνα';

  @override
  String get onlineCreate => 'Δημιουργία';

  @override
  String get onlineWaitingOpponent => 'Αναμονή αντιπάλου…';

  @override
  String get onlineShareCode => 'Κοινοποίηση κωδικού';

  @override
  String get onlineCopyCode => 'Αντιγραφή κωδικού';

  @override
  String get onlineCodeCopied => 'Ο κωδικός αντιγράφηκε';

  @override
  String get onlineJoinTitle => 'Συμμετοχή σε αγώνα';

  @override
  String get onlineRoomCode => 'Κωδικός αγώνα';

  @override
  String get onlineJoin => 'Συμμετοχή';

  @override
  String get lanTitle => 'Παίξτε κοντά';

  @override
  String get lanTabHost => 'Φιλοξενία';

  @override
  String get lanTabJoin => 'Συμμετοχή';

  @override
  String get lanUnassistedNote =>
      'Οι ζωντανές κοντινές παρτίδες δεν έχουν βοήθεια. Αναλύστε τις κινήσεις σας και εξασκηθείτε στα λάθη μετά τον αγώνα.';

  @override
  String get lanGameStartFailed =>
      'Δεν ήταν δυνατή η έναρξη. Η άλλη συσκευή μπορεί να δοκιμάσει ξανά.';

  @override
  String get lanHostPortInUse =>
      'Δεν ήταν δυνατή η φιλοξενία — η θύρα χρησιμοποιείται ήδη. Κλείστε άλλη εκτέλεση του Backgammon Buddy.';

  @override
  String get lanHostStartFailed =>
      'Δεν ήταν δυνατή η φιλοξενία. Ελέγξτε τη σύνδεση Wi-Fi.';

  @override
  String get lanHostTitle => 'Φιλοξενία παρτίδας';

  @override
  String get lanStartHosting => 'Έναρξη φιλοξενίας';

  @override
  String get lanHostHelp =>
      'Και οι δύο συσκευές πρέπει να είναι στο ίδιο Wi-Fi. Αυτή ρίχνει τα ζάρια και κρατά το σκορ.';

  @override
  String get lanWaitingPlayerTitle => 'Αναμονή παίκτη';

  @override
  String get lanRoomCodeInfo =>
      'Δώστε αυτόν τον κωδικό στον άλλο παίκτη. Επιτρέπει την είσοδο — η εφαρμογή δεν τον στέλνει μέσω δικτύου.';

  @override
  String get lanWaitingPlayer => 'Αναμονή παίκτη…';

  @override
  String get lanStopHosting => 'Διακοπή φιλοξενίας';

  @override
  String lanFindNearbyPort(int port) {
    return 'Ζητήστε από την άλλη συσκευή να αναζητήσει κοντινές παρτίδες. Ακρόαση στη θύρα $port.';
  }

  @override
  String get lanOnNetwork => 'Σε αυτό το δίκτυο';

  @override
  String get lanCopyAddress => 'Αντιγραφή διεύθυνσης';

  @override
  String get lanAddressCopied => 'Η διεύθυνση αντιγράφηκε';

  @override
  String get lanScanHostTitle => 'Σάρωση οικοδεσπότη';

  @override
  String get lanScanHostHelp =>
      'Η άλλη συσκευή εμφανίζει QR στην οθόνη φιλοξενίας. Η σάρωση συμπληρώνει τη διεύθυνση και τον κωδικό δωματίου.';

  @override
  String get lanScanQr => 'Σάρωση κωδικού QR';

  @override
  String get lanScannerUnavailable =>
      'Η κάμερα ή η άδειά της δεν είναι διαθέσιμη. Πληκτρολογήστε παρακάτω τη διεύθυνση και τον κωδικό δωματίου.';

  @override
  String get lanInvalidQr =>
      'Αυτός ο QR δεν είναι για παιχνίδι Backgammon Buddy. Σαρώστε τον κωδικό στην οθόνη φιλοξενίας της άλλης συσκευής.';

  @override
  String get lanScannerFailed =>
      'Δεν ήταν δυνατό το άνοιγμα του σαρωτή. Πληκτρολογήστε τη διεύθυνση και τον κωδικό.';

  @override
  String get lanNearbyGames => 'Κοντινές παρτίδες';

  @override
  String get lanSearching => 'Αναζήτηση κοντινών παρτίδων…';

  @override
  String get lanNoGamesFound =>
      'Δεν βρέθηκαν παρτίδες ακόμη. Βεβαιωθείτε ότι η άλλη συσκευή φιλοξενεί και ότι είστε στο ίδιο Wi-Fi — ή πληκτρολογήστε τη διεύθυνσή της.';

  @override
  String get lanStillSearching => 'Συνεχίζεται η αναζήτηση…';

  @override
  String get lanEnterAddress => 'Εισαγωγή διεύθυνσης';

  @override
  String get lanEnterAddressHelp =>
      'Η αυτόματη ανακάλυψη δεν λειτουργεί σε κάθε δίκτυο (και το iOS μπορεί να την αποκλείσει). Η οθόνη φιλοξενίας δείχνει τι πρέπει να πληκτρολογήσετε.';

  @override
  String get lanIpAddress => 'Διεύθυνση IP';

  @override
  String get lanPort => 'Θύρα';

  @override
  String get lanInvalidPort => 'Εισαγάγετε θύρα από 1 έως 65535.';

  @override
  String get lanEnterAddressError =>
      'Εισαγάγετε τη διεύθυνση που εμφανίζεται στην άλλη συσκευή.';

  @override
  String get lanEnterRoomCodeError =>
      'Εισαγάγετε τον τετραψήφιο κωδικό από την άλλη συσκευή.';

  @override
  String get lanJoinWrongCode =>
      'Λάθος κωδικός δωματίου. Ελέγξτε τα τέσσερα ψηφία στην άλλη συσκευή.';

  @override
  String get lanJoinVersionMismatch =>
      'Η άλλη συσκευή εκτελεί διαφορετική έκδοση του Backgammon Buddy.';

  @override
  String get lanJoinHandshakeFailed =>
      'Η συσκευή δεν απάντησε όπως το Backgammon Buddy. Ελέγξτε διεύθυνση και θύρα.';

  @override
  String get lanJoinFailed =>
      'Δεν ήταν δυνατή η συμμετοχή. Ελέγξτε τη διεύθυνση και τον κωδικό και δοκιμάστε ξανά.';

  @override
  String lanJoinTarget(Object name) {
    return 'Συμμετοχή στο $name';
  }

  @override
  String get lanJoinTargetHelp =>
      'Πληκτρολογήστε τον τετραψήφιο κωδικό που εμφανίζεται στην άλλη συσκευή.';

  @override
  String lanJoiningTarget(Object name) {
    return 'Σύνδεση στο $name';
  }

  @override
  String get lanConnect => 'Σύνδεση';

  @override
  String get lanBack => 'Πίσω';

  @override
  String get lanTryAgain => 'Δοκιμάστε ξανά';

  @override
  String get lanStatusBusy => 'Το δωμάτιο χρησιμοποιείται — αναμονή…';

  @override
  String get lanStatusReconnecting => 'Η σύνδεση χάθηκε — νέα προσπάθεια…';

  @override
  String get lanStatusConnected => 'Συνδέθηκε — ξεκινά ο αγώνας…';

  @override
  String get lanStatusFailed => 'Δεν ήταν δυνατή η συμμετοχή.';

  @override
  String get lanStatusConnecting => 'Σύνδεση…';

  @override
  String get diagnosticsCopySuccess =>
      'Τα διαγνωστικά αντιγράφηκαν στο πρόχειρο';

  @override
  String get diagnosticsReviewTitle => 'Έλεγχος αναφοράς διαγνωστικών';

  @override
  String get diagnosticsPrivacyNotice =>
      'Ανοίγοντας το προσχέδιο, στέλνετε στο GitHub τα παρακάτω στοιχεία, όπως την έκδοση της εφαρμογής, την πλατφόρμα και τυχόν λεπτομέρειες σφάλματος. Δεν δημοσιεύεται δημόσιο ζήτημα πριν το υποβάλετε εκεί. Αν τα στοιχεία περιέχουν ιδιωτικές πληροφορίες, ακυρώστε και χρησιμοποιήστε την Αντιγραφή για να ετοιμάσετε μόνοι σας μια αναφορά.';

  @override
  String get diagnosticsCancel => 'Άκυρο';

  @override
  String get diagnosticsOpenGitHub => 'Άνοιγμα GitHub';

  @override
  String get diagnosticsTitle => 'Διαγνωστικά';

  @override
  String get diagnosticsReportTooltip => 'Αναφορά προβλήματος στο GitHub';

  @override
  String get diagnosticsCopyTooltip => 'Αντιγραφή στο πρόχειρο';

  @override
  String get diagnosticsClearTooltip => 'Εκκαθάριση αρχείου καταγραφής';

  @override
  String get diagnosticsEmpty =>
      'Δεν έχουν καταγραφεί σφάλματα.\n\nΑν προκύψει πρόβλημα, θα καταγραφεί εδώ. Επιστρέψτε και αντιγράψτε τις λεπτομέρειες σε μια αναφορά σφάλματος.';

  @override
  String gameHudNeutralScore(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore–$blackScore $blackLabel · έως $matchLength';
  }

  @override
  String gameHudPlayerScore(
    Object you,
    int mine,
    int theirs,
    Object opponent,
    int matchLength,
  ) {
    return '$you $mine–$theirs $opponent · έως $matchLength';
  }

  @override
  String get gameHudYou => 'Εσείς';

  @override
  String get gameHudAi => 'Υπολογιστής';

  @override
  String gameHudGameNumber(int number) {
    return 'Παρτίδα $number';
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
    return '$whiteLabel έναντι $blackLabel · $pipsLabel $whitePips–$blackPips';
  }

  @override
  String gameHudOpponentDetail(
    Object opponent,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'έναντι $opponent · $pipsLabel $mine–$theirs';
  }

  @override
  String gameHudOpponentDetailWithLevel(
    Object opponent,
    Object level,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'έναντι $opponent · $level · $pipsLabel $mine–$theirs';
  }

  @override
  String get gameHudPips => 'Πιπ';

  @override
  String get gameHudCrawford => 'Crawford';

  @override
  String get gameHudDouble => 'Διπλασιασμός';

  @override
  String get gameHudMoreActions => 'Περισσότερες ενέργειες';

  @override
  String get gameHudSurrender => 'Παραίτηση…';

  @override
  String get gameHudThinking => 'Σκέφτεται';

  @override
  String get gameHudDoubleBeforeRoll =>
      'Μπορείτε να διπλασιάσετε μόνο πριν ρίξετε τα ζάρια και στη σειρά σας.';

  @override
  String get gameHudNoDoubleCrawford =>
      'Δεν υπάρχει διπλασιασμός στην παρτίδα Crawford — αυτή η μοναδική παρτίδα κρίνει τον αγώνα.';

  @override
  String get gameHudOnlyCubeOwner =>
      'Μόνο ο κάτοχος του κύβου μπορεί να διπλασιάσει, και τώρα τον έχει ο αντίπαλος.';

  @override
  String get gameHudDoubleUnavailable =>
      'Δεν μπορείτε να διπλασιάσετε αυτή τη στιγμή.';

  @override
  String gameDialogScoreLine(
    Object whiteLabel,
    int whiteScore,
    int blackScore,
    Object blackLabel,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore — $blackScore $blackLabel (στους $matchLength)';
  }

  @override
  String gameDialogPlayerWon(Object winner, Object points) {
    return 'Ο/Η $winner κερδίζει αυτή την παρτίδα ($points).';
  }

  @override
  String gameDialogPlayerWonGammon(Object winner, Object points) {
    return 'Ο/Η $winner κερδίζει αυτή την παρτίδα ($points, γκάμον).';
  }

  @override
  String gameDialogPlayerWonBackgammon(Object winner, Object points) {
    return 'Ο/Η $winner κερδίζει αυτή την παρτίδα ($points, μπακγκάμον).';
  }

  @override
  String gameDialogPlayerWonDrop(Object winner, Object points, Object loser) {
    return 'Ο/Η $winner κερδίζει αυτή την παρτίδα ($points) — ο/η $loser αρνήθηκε τον διπλασιασμό.';
  }

  @override
  String gameDialogPlayerWonResignation(
    Object winner,
    Object points,
    Object loser,
  ) {
    return 'Ο/Η $winner κερδίζει αυτή την παρτίδα ($points) — ο/η $loser παραιτήθηκε.';
  }

  @override
  String get gameDialogPassDeviceTitle => 'Δώστε τη συσκευή';

  @override
  String gameDialogPlayersTurn(Object name) {
    return 'Σειρά του/της $name';
  }

  @override
  String get gameDialogTapToContinue => 'Πατήστε για συνέχεια';

  @override
  String get gameDialogCubeOfferedTitle => 'Προσφέρθηκε διπλασιασμός';

  @override
  String gameDialogCubeOfferMessage(
    Object doubler,
    int value,
    Object tutorLine,
  ) {
    return 'Ο/Η $doubler προτείνει διπλασιασμό στο $value. Αποδοχή ή πάσο;$tutorLine';
  }

  @override
  String get gameDialogPass => 'Πάσο';

  @override
  String get gameDialogTake => 'Αποδοχή';

  @override
  String get gameDialogResignationTitle => 'Προσφέρθηκε παραίτηση';

  @override
  String gameDialogResignationMessage(Object resigner, Object value) {
    return 'Ο/Η $resigner προτείνει παραίτηση για $value. Αποδοχή ή απόρριψη;';
  }

  @override
  String get gameDialogResignSingle => 'μονή παρτίδα';

  @override
  String get gameDialogResignGammon => 'γκάμον';

  @override
  String get gameDialogResignBackgammon => 'μπακγκάμον';

  @override
  String get gameDialogDecline => 'Απόρριψη';

  @override
  String get gameDialogAccept => 'Αποδοχή';

  @override
  String gameResultGameNumber(int number) {
    return 'Παιχνίδι $number';
  }

  @override
  String gameResultMatchScore(Object score) {
    return 'Σκορ αγώνα: $score';
  }

  @override
  String get gameResultRolls => 'Ζαριές';

  @override
  String get gameResultDiceNote =>
      'Τα μέσα αθροίσματα των ζαριών συχνά κυμαίνονται γύρω από το 7. Αυτό το μικρό δείγμα δεν μπορεί να αποδείξει μεροληψία.';

  @override
  String get gameResultRatingNotAvailable =>
      'Δεν υπάρχει ακόμη αξιολόγηση κινήσεων. Αναλύστε το παιχνίδι για πλήρη αξιολόγηση.';

  @override
  String get gameResultRematch => 'Ρεβάνς';

  @override
  String get gameDialogGameOverTitle => 'Τέλος παρτίδας';

  @override
  String get gameDialogNextGame => 'Επόμενη παρτίδα';

  @override
  String get gameDialogMatchOverTitle => 'Τέλος αγώνα';

  @override
  String get gameDialogNobody => 'Κανείς';

  @override
  String gameDialogMatchWinner(Object winner) {
    return 'Ο/Η $winner κερδίζει τον αγώνα.';
  }

  @override
  String get gameDialogSavedToHistory => 'Αποθηκεύτηκε στο Ιστορικό';

  @override
  String get gameDialogDone => 'Τέλος';

  @override
  String get gameTapNoLegalMove =>
      'Δεν υπάρχει νόμιμη κίνηση για αυτό το πούλι με τα ζάρια που απομένουν';

  @override
  String get gameTapNoLegalMoveUndo =>
      'Δεν υπάρχει νόμιμη κίνηση για αυτό το πούλι με τα ζάρια που απομένουν — δοκιμάστε αναίρεση';

  @override
  String get gameDragHint =>
      'Συμβουλή: σύρετε τα πούλια ή πατήστε τα — αλλάξτε το στις Ρυθμίσεις';

  @override
  String get commonGotIt => 'Εντάξει';

  @override
  String get gameHintStageBeforeHint =>
      'Ολοκληρώστε πρώτα μια νόμιμη κίνηση και μετά ζητήστε υπόδειξη.';

  @override
  String get surrenderTitle => 'Παραίτηση';

  @override
  String surrenderNamedConcedes(String player) {
    return 'Ο/Η $player παραιτείται από την τρέχουσα παρτίδα.';
  }

  @override
  String get surrenderConcedes => 'Παραιτείστε από την τρέχουσα παρτίδα.';

  @override
  String surrenderAvailableAtNamedTurn(String player) {
    return 'Διαθέσιμο στην αρχή της σειράς του/της $player';
  }

  @override
  String get surrenderAvailableAtYourTurn =>
      'Διαθέσιμο στην αρχή της σειράς σας';

  @override
  String get commonCancel => 'Άκυρο';

  @override
  String get surrenderSingle => 'Μονή (1)';

  @override
  String get surrenderGammon => 'Γκάμον (2)';

  @override
  String get surrenderBackgammon => 'Μπακγκάμον (3)';

  @override
  String get surrenderChoosePlayer => 'Ποιος παραιτείται από αυτή την παρτίδα;';

  @override
  String get commonDone => 'Τέλος';

  @override
  String get cubeDouble => 'Διπλασιασμός';

  @override
  String get cubeBlockedOtherPlayersTurn => 'Είναι η σειρά του άλλου παίκτη.';

  @override
  String get cubeBlockedCrawford =>
      'Ο κύβος διπλασιασμού δεν είναι διαθέσιμος στην παρτίδα Crawford.';

  @override
  String get cubeBlockedOwnedByOther =>
      'Μόνο ο κάτοχος του κύβου μπορεί να διπλασιάσει, και τώρα τον έχει ο αντίπαλος.';

  @override
  String get cubeBlockedUnavailable =>
      'Δεν μπορείτε να διπλασιάσετε αυτή τη στιγμή.';

  @override
  String get gameStatusRolling => 'Ρίχνει…';

  @override
  String get gameStatusThinking => 'Σκέφτεται…';

  @override
  String gameStatusPlayersTurn(String player) {
    return 'Σειρά του/της $player';
  }

  @override
  String get cubeAdviceOpponentTake =>
      'Διπλασιασμός — ο αντίπαλος πρέπει να δεχτεί';

  @override
  String get cubeAdviceOpponentPass =>
      'Διπλασιασμός — ο αντίπαλος πρέπει να αρνηθεί';

  @override
  String gameErrorBannerLabel(Object error) {
    return 'Σφάλμα: $error';
  }

  @override
  String get privacyTitle => 'Απόρρητο και δεδομένα';

  @override
  String get privacyAppTitle => 'Backgammon Buddy από τη Freevia';

  @override
  String get privacyIntro =>
      'Αυτή η σελίδα περιγράφει τον τρόπο με τον οποίο η τρέχουσα εφαρμογή χειρίζεται τα δεδομένα σου.';

  @override
  String get privacyLocalTitle => 'Παιχνίδια και καθοδήγηση στη συσκευή σου';

  @override
  String get privacyLocalBody =>
      'Οι τοπικές παρτίδες, οι ρυθμίσεις, οι αναλύσεις και η πρόοδος εξάσκησης αποθηκεύονται σε αυτήν τη συσκευή. Η μηχανή τάβλι και οι εξηγήσεις του καθοδηγητή εκτελούνται εδώ. Διέγραψε μια αποθηκευμένη παρτίδα από το Ιστορικό για να διαγράψεις και τις αποθηκευμένες ασκήσεις και προσπάθειες εξάσκησής της. Διέγραψε μεμονωμένες ασκήσεις ή μηδένισε την πρόοδο εξάσκησης στην Εκμάθηση· διέγραψε τις τοπικές αναφορές σφαλμάτων από τις Ρυθμίσεις → Διαγνωστικά. Οι ρυθμίσεις αντιγράφων ασφαλείας της συσκευής σου ενδέχεται επίσης να ισχύουν για το ιστορικό παρτίδων. Τα διαπιστευτήρια σύνδεσης στο διαδίκτυο φυλάσσονται στον προστατευμένο χώρο αποθήκευσης της συσκευής.';

  @override
  String get privacyOnlineTitle =>
      'Διαδικτυακό παιχνίδι και παιχνίδι κοντινής απόστασης';

  @override
  String get privacyOnlineBody =>
      'Το διαδικτυακό παιχνίδι στέλνει στην Google Firebase ένα ανώνυμο αναγνωριστικό παίκτη, τις ρυθμίσεις της παρτίδας, τις κινήσεις και τις εγγραφές συγχρονισμού των ζαριών, ώστε και οι δύο παίκτες να παίζουν την ίδια παρτίδα. Η διαγραφή του Ιστορικού σε αυτήν τη συσκευή δεν διαγράφει τα διαδικτυακά αρχεία. Οι φιλοξενούμενες παρτίδες λήγουν 30 ημέρες μετά τη δημιουργία τους· ο προγραμματισμένος καθαρισμός διαγράφει τα αρχεία καταγραφής τους από το cloud. Τα αρχεία παρτίδων αποθηκεύονται στην ΕΕ· το Firebase Authentication επεξεργάζεται δεδομένα σύνδεσης στις Ηνωμένες Πολιτείες. Οι συνδέσεις με την Google κρυπτογραφούνται κατά τη μεταφορά. Το παιχνίδι κοντινής απόστασης ανταλλάσσει πληροφορίες παρτίδας με την άλλη συσκευή μέσω μη κρυπτογραφημένης τοπικής σύνδεσης· χρησιμοποίησε αξιόπιστο Wi-Fi.';

  @override
  String get privacyDiagnosticsTitle =>
      'Προαιρετικά διαγνωστικά χρήσης και σφαλμάτων';

  @override
  String get privacyDiagnosticsBody =>
      'Η κοινοποίηση είναι απενεργοποιημένη μέχρι να την ενεργοποιήσεις στις Ρυθμίσεις. Αν την ενεργοποιήσεις, η Google Firebase λαμβάνει συμβάντα χρήσης, πληροφορίες εφαρμογής/συσκευής, μετρήσεις απόδοσης και αναφορές σφαλμάτων για τη βελτίωση της εφαρμογής. Μπορείς να απενεργοποιήσεις την κοινοποίηση ανά πάσα στιγμή για να σταματήσει η νέα προαιρετική συλλογή. Αυτό δεν διαγράφει δεδομένα που έχουν ήδη σταλεί. Τα τοπικά διαγνωστικά και οι διαδικτυακές παρτίδες λειτουργούν ανεξάρτητα από αυτήν την επιλογή.';

  @override
  String get privacyCameraTitle => 'Κάμερα για κοντινούς κωδικούς QR';

  @override
  String get privacyCameraBody =>
      'Η προαιρετική κάμερα σαρώνει κωδικούς QR για κοντινές παρτίδες. Οι εικόνες υποβάλλονται σε επεξεργασία στη συσκευή σου και δεν αποθηκεύονται ούτε μεταφορτώνονται. Μπορείς να αρνηθείς την πρόσβαση στην κάμερα και να πληκτρολογήσεις χειροκίνητα τη διεύθυνση του οικοδεσπότη. Αυτή η έκδοση δεν χρησιμοποιεί το μικρόφωνο ούτε υποστηρίζει παιχνίδι με φυσικό ταμπλό.';

  @override
  String get privacyFeedbackTitle => 'Σχόλια που επιλέγεις να στείλεις';

  @override
  String get privacyFeedbackBody =>
      'Τα σχόλια ανοίγουν ένα προσχέδιο ζητήματος στο GitHub για να το ελέγξεις. Με το άνοιγμα του προσχεδίου, αποστέλλονται στο GitHub η έκδοση της εφαρμογής και η πλατφόρμα· τα σχόλια από τα Διαγνωστικά μπορεί επίσης να περιλαμβάνουν λεπτομέρειες σφάλματος. Δεν δημοσιεύεται κανένα ζήτημα μέχρι να το υποβάλεις. Τα ζητήματα μπορεί να είναι δημόσια, γι’ αυτό αφαίρεσε προσωπικές πληροφορίες πριν από την αποστολή.';

  @override
  String get privacyContactTitle => 'Επικοινωνία για το απόρρητο';

  @override
  String get privacyReadPolicy => 'Διάβασε την πολιτική απορρήτου';

  @override
  String get privacyPolicyOpenFailed =>
      'Δεν ήταν δυνατό το άνοιγμα της πολιτικής απορρήτου.';

  @override
  String get privacySupportTitle => 'Βοήθεια και υποστήριξη';

  @override
  String get privacySupportOpenFailed =>
      'Δεν ήταν δυνατό το άνοιγμα της υποστήριξης. Επικοινώνησε στο support@freevia.org.';

  @override
  String get privacyDeleteConfirmTitle =>
      'Να διαγραφούν η διαδικτυακή ταυτότητα και τα δεδομένα;';

  @override
  String get privacyDeleteConfirmBody =>
      'Αυτό τερματίζει αμέσως την πρόσβαση και των δύο παικτών στις παρτίδες cloud αυτής της ταυτότητας και ζητά τη διαγραφή της ταυτότητας και των κοινών αρχείων καταγραφής διαδικτυακών παρτίδων εντός 30 ημερών. Η Google μπορεί να χρειαστεί έως και 180 ημέρες μετά τη διαγραφή του λογαριασμού για να αφαιρέσει τα δεδομένα Authentication από τα ενεργά συστήματα και τα αντίγραφα ασφαλείας της. Το τοπικό Ιστορικό και η εξάσκηση παραμένουν σε αυτήν τη συσκευή. Τα προαιρετικά διαγνωστικά που στάλθηκαν παλαιότερα είναι ξεχωριστά· επικοινώνησε με το privacy@freevia.org γι’ αυτά. Αυτό το αίτημα δεν μπορεί να αναιρεθεί.';

  @override
  String get privacyRequestDeletion => 'Αίτημα διαγραφής';

  @override
  String get privacyDeleteSectionTitle => 'Διαγραφή διαδικτυακών δεδομένων';

  @override
  String get privacyDeleteInstructions =>
      'Χρησιμοποίησε τη σύνδεση που είναι αποθηκευμένη σε αυτήν τη συσκευή για να επαληθεύσεις την κυριότητα. Ένα αναγνωριστικό παίκτη ή ένας κωδικός πρόσκλησης από μόνος του δεν αποδεικνύει την κυριότητα. Οι παίκτες που παίζουν μόνο τοπικά δεν χρειάζονται διαδικτυακό λογαριασμό.';

  @override
  String get privacySendingRequest => 'Αποστολή αιτήματος…';

  @override
  String get privacyDeleteAction =>
      'Διαγραφή διαδικτυακής ταυτότητας και δεδομένων';

  @override
  String get privacyDeleteRequested =>
      'Ζητήθηκε η διαγραφή. Έγινε αποσύνδεση αυτής της διαδικτυακής ταυτότητας. Τα δεδομένα της στο cloud θα διαγραφούν εντός 30 ημερών. Αν ξεκινήσεις ξανά διαδικτυακό παιχνίδι, θα δημιουργηθεί νέα ταυτότητα. Η αφαίρεση των δεδομένων Authentication από την Google μπορεί να χρειαστεί έως και 180 ημέρες. Για βοήθεια, επικοινώνησε με το privacy@freevia.org.';

  @override
  String get privacyDeleteRequestedSignOutFailed =>
      'Ζητήθηκε η διαγραφή. Τα δεδομένα cloud θα διαγραφούν εντός 30 ημερών. Η συσκευή δεν μπόρεσε να διαγράψει την αποθηκευμένη σύνδεση, αλλά η διαδικτυακή ταυτότητα έχει αποκλειστεί από περαιτέρω πρόσβαση σε παρτίδες. Η αφαίρεση των δεδομένων Authentication από την Google μπορεί να χρειαστεί έως και 180 ημέρες. Για βοήθεια, επικοινώνησε με το privacy@freevia.org.';

  @override
  String get privacyDeleteNoIdentity =>
      'Δεν υπάρχει αποθηκευμένη χρησιμοποιήσιμη διαδικτυακή ταυτότητα σε αυτήν τη συσκευή. Δεν δημιουργήθηκε νέος λογαριασμός. Αν έπαιξες διαδικτυακά στο παρελθόν, επικοινώνησε με το privacy@freevia.org για βοήθεια· οι φιλοξενούμενες παρτίδες λήγουν μετά από 30 ημέρες.';

  @override
  String get privacyDeleteRequestFailed =>
      'Δεν ήταν δυνατή η επιβεβαίωση του αιτήματος διαγραφής. Έλεγξε τη σύνδεσή σου και δοκίμασε ξανά ή επικοινώνησε με το privacy@freevia.org.';

  @override
  String get privacyConsentTitle =>
      'Να κοινοποιούνται διαγνωστικά χρήσης και σφαλμάτων;';

  @override
  String get privacyConsentBody =>
      'Αυτό στέλνει στην Google Firebase συμβάντα χρήσης, πληροφορίες εφαρμογής/συσκευής, αναφορές σφαλμάτων και μετρήσεις απόδοσης. Η κοινοποίηση είναι προαιρετική. Τα παιχνίδια και η καθοδήγηση λειτουργούν και χωρίς αυτήν, και μπορείς να την απενεργοποιήσεις ξανά στις Ρυθμίσεις.';

  @override
  String get privacyKeepOff => 'Παραμονή απενεργοποιημένη';

  @override
  String get privacyShareDiagnostics => 'Κοινοποίηση διαγνωστικών';

  @override
  String get privacySaveFailed =>
      'Δεν ήταν δυνατή η αποθήκευση της επιλογής απορρήτου. Δοκίμασε ξανά.';

  @override
  String get privacySettingsSubtitle =>
      'Τι παραμένει στη συσκευή σου και τι κοινοποιείται';

  @override
  String get privacyDiagnosticsSettingTitle =>
      'Κοινοποίηση διαγνωστικών χρήσης και σφαλμάτων';

  @override
  String get privacyDiagnosticsSettingSubtitle =>
      'Προαιρετικό · απενεργοποιημένο από προεπιλογή';

  @override
  String get lanScanToJoin => 'Σάρωση για συμμετοχή';

  @override
  String get lanScanHostCode => 'Σάρωσε τον κωδικό του οικοδεσπότη';

  @override
  String get lanEnterAddressInstead => 'Εισαγωγή διεύθυνσης αντί για σάρωση';

  @override
  String get lanQrAccessibilityLabel =>
      'Κωδικός QR για συμμετοχή σε αυτό το παιχνίδι';

  @override
  String get lanJoinInstruction =>
      'Στην άλλη συσκευή, άνοιξε το Παιχνίδι κοντά, επίλεξε Συμμετοχή και σάρωσε αυτόν τον κωδικό QR.';

  @override
  String get lanTorch => 'Φακός';

  @override
  String get lanCameraPermissionDenied =>
      'Το Backgammon Buddy δεν μπορεί να χρησιμοποιήσει την κάμερα. Επίτρεψε την πρόσβαση στις ρυθμίσεις της συσκευής ή πληκτρολόγησε τη διεύθυνση που εμφανίζεται στην άλλη συσκευή.';

  @override
  String get lanCameraUnsupported =>
      'Αυτή η συσκευή δεν μπορεί να σαρώσει κωδικούς QR. Πληκτρολόγησε τη διεύθυνση που εμφανίζεται στην άλλη συσκευή.';

  @override
  String get lanCameraStartFailed =>
      'Δεν ήταν δυνατή η εκκίνηση της κάμερας. Πληκτρολόγησε τη διεύθυνση που εμφανίζεται στην άλλη συσκευή.';

  @override
  String get lanPointCameraAtQr =>
      'Στρέψε την κάμερα στον κωδικό QR της άλλης συσκευής.';

  @override
  String get physicalBuddyUnavailableTitle => 'Backgammon Buddy';

  @override
  String get physicalBuddyUnavailableBody =>
      'Το παιχνίδι με φυσική επιτραπέζια διάταξη δεν είναι διαθέσιμο σε αυτήν την έκδοση. Τα παιχνίδια στην οθόνη, η καθοδήγηση και η εξάσκηση είναι διαθέσιμα από την Αρχική.';

  @override
  String get homePlayWithBuddy => 'Παίξε με το Buddy';

  @override
  String get homeBuddyShort => 'Buddy';

  @override
  String boardSemanticsLabel(Object status) {
    return 'Ταμπλό τάβλι. $status';
  }

  @override
  String get boardWhiteToRoll => 'Παίζει ο λευκός· ρίξε τα ζάρια.';

  @override
  String get boardBlackToRoll => 'Παίζει ο μαύρος· ρίξε τα ζάρια.';

  @override
  String boardWhiteToMove(Object die1, Object die2) {
    return 'Παίζει ο λευκός· ρίξε $die1 και $die2.';
  }

  @override
  String boardBlackToMove(Object die1, Object die2) {
    return 'Παίζει ο μαύρος· ρίξε $die1 και $die2.';
  }

  @override
  String get boardDoubleOffered => 'Προσφέρθηκε διπλασιασμός.';

  @override
  String get boardResignationOffered => 'Προσφέρθηκε παραίτηση.';

  @override
  String get boardGameOver => 'Το παιχνίδι τελείωσε.';

  @override
  String feedbackBugTitle(Object version, Object platform) {
    return '[Σφάλμα]: Backgammon Buddy $version ($platform)';
  }

  @override
  String get feedbackIdeaTitle => '[Ιδέα]: Backgammon Buddy';

  @override
  String get feedbackBugSummary =>
      'Αντικατάστησε αυτό το κείμενο με μια σύντομη περιγραφή του τι συνέβη.';

  @override
  String get feedbackBugReproduction =>
      'Αντικατάστησε αυτό το κείμενο με τα βήματα που οδήγησαν στο πρόβλημα.';

  @override
  String get feedbackBugExpected =>
      'Αντικατάστησε αυτό το κείμενο με το αναμενόμενο αποτέλεσμα.';

  @override
  String get feedbackIdeaNeed =>
      'Αντικατάστησε αυτό το κείμενο με αυτό που ήθελες να κάνεις ή να μάθεις.';

  @override
  String get feedbackIdeaSuggestion =>
      'Αντικατάστησε αυτό το κείμενο με την αλλαγή που θα σου ήταν χρήσιμη.';

  @override
  String get feedbackExcerptTruncated =>
      '(περικομμένο — για ολόκληρο το αρχείο καταγραφής, χρησιμοποίησε την επιλογή «Αντιγραφή στο πρόχειρο» στην οθόνη Διαγνωστικά)';

  @override
  String get boardWhiteToMoveNoRoll => 'Παίζει ο λευκός.';

  @override
  String get boardBlackToMoveNoRoll => 'Παίζει ο μαύρος.';

  @override
  String get feedbackFieldVersion => 'Έκδοση εφαρμογής';

  @override
  String get feedbackFieldPlatform => 'Πλατφόρμα';

  @override
  String get feedbackFieldSummary => 'Τι συνέβη';

  @override
  String get feedbackFieldReproduction => 'Βήματα αναπαραγωγής';

  @override
  String get feedbackFieldExpected => 'Αναμενόμενο αποτέλεσμα';

  @override
  String get feedbackFieldNeed => 'Τι ήθελες να κάνεις';

  @override
  String get feedbackFieldIdea => 'Προτεινόμενη αλλαγή';

  @override
  String get buddySetupTitle => 'Παίξτε με το Buddy';

  @override
  String get buddySetupSideLabel => 'Το Buddy παίζει';

  @override
  String get buddySetupSeatLabel => 'Η θέση σας';

  @override
  String get buddySetupSeatNear => 'Από το τηλέφωνο';

  @override
  String get buddySetupSeatFar => 'Απέναντι';

  @override
  String get buddySetupSeatHelp =>
      'Σε ποια πλευρά του πίνακα βρίσκεστε. Είναι ο τρόπος με τον οποίο το Buddy αριθμεί τους πόντους και πώς λέει το αρχικό σας ζάρι από το δικό του.';

  @override
  String get buddySetupVoiceLabel => 'Πώς μιλάει το Buddy';

  @override
  String get buddySetupVoiceTerse => 'Λιτός';

  @override
  String get buddySetupVoiceFriendly => 'Φιλικός';

  @override
  String get buddySetupVoiceTerseHelp =>
      '«13/8, 24/22» — σημειογραφία, ο τρόπος με τον οποίο μιλάνε πραγματικά δύο παίκτες σε ένα ταμπλό.';

  @override
  String get buddySetupVoiceFriendlyHelp =>
      '«Μετακινήστε ένα πούλι από το 13 στο 8 και ένα από το 24 στο 22».';

  @override
  String get buddySetupTutorHelp =>
      'Ο σχολιασμός εκπαιδευτή και οι επεξηγήσεις μετακίνησης ακολουθούν τις αποθηκευμένες προτιμήσεις του εκπαιδευτή στις Ρυθμίσεις. Το Buddy δίνει περιστασιακά σχόλια μετά τα παιχνίδια σας. Τα δακτυλογραφημένα ζάρια και οι χειροκίνητες κινήσεις λειτουργούν με τον ίδιο τρόπο.';

  @override
  String get buddySetupCalibrate => 'Βαθμονόμηση του πίνακα';

  @override
  String get buddyFixAim => 'Διορθώστε τον στόχο';

  @override
  String get buddyWaitingForOpening =>
      'Ο Buddy περιμένει τη ρίψη που ξεκινά τον αγώνα.';

  @override
  String get buddyPromptLostBoard =>
      'Ο Buddy έχασε τον πίνακα. Διορθώστε το στόχο και ο αγώνας συνεχίζεται εκεί που σταμάτησε.';

  @override
  String get buddyPromptWaitingPicture =>
      'Αναμονή για φωτογραφία Ο Buddy μπορεί να διαβάσει. Τίποτα δεν πάει χαμένο.';

  @override
  String get buddyPromptTypeDice =>
      'Ο Buddy δεν μπορεί να βρει τα ζάρια. Πληκτρολογήστε το ρολό.';

  @override
  String get buddyPromptPlay =>
      'Κάντε το παιχνίδι σας στο ταμπλό. Πατήστε το εδώ αν το Buddy δεν το βλέπει.';

  @override
  String get buddyPromptWhichPlay => 'Ποιο θεατρικό ήταν;';

  @override
  String get buddyPromptCube => 'Ο Buddy διπλασιάζει. Δέχεσαι ή παραιτείσαι;';

  @override
  String get buddyPromptMakeMove =>
      'Κάντε την κίνηση του Buddy στον πίνακα, τότε το Buddy θα συνεχίσει.';

  @override
  String get buddyPromptThinking => 'Ο Buddy σκέφτεται.';

  @override
  String get buddyPromptWaitingCalibration => 'Αναμονή για βαθμονόμηση.';

  @override
  String get buddyPromptMirrorNoDetail =>
      'Το Buddy εξακολουθεί να μην μπορεί να δει την κίνησή του. Ο πίνακας παρακάτω είναι η θέση που κρατά.';

  @override
  String get buddyPromptNotLegal => 'Αυτό δεν είναι νόμιμο παιχνίδι.';

  @override
  String buddyPromptNotLegalReason(String reason) {
    return 'Αυτό δεν είναι νόμιμο παιχνίδι. $reason';
  }

  @override
  String get buddyThrowOpening =>
      'Ρίξτε τα ζάρια της έναρξης — ένα ζάρι ο καθένας.';

  @override
  String get buddyThrowUser => 'Ρίξτε τα ζάρια σας.';

  @override
  String get buddyThrowBuddy => 'Ρίξτε τα ζάρια του Buddy.';

  @override
  String get buddyMatchOver => 'Ο αγώνας τελείωσε.';

  @override
  String get buddyYouWin => 'Κερδίζεις τον αγώνα.';

  @override
  String get buddyBuddyWins => 'Ο Buddy κερδίζει τον αγώνα.';

  @override
  String get buddyDoubleNoGame =>
      'Δεν υπάρχει παιχνίδι για διπλό ακόμα — η πρώτη βολή έρχεται πρώτη.';

  @override
  String get buddyDoubleBeforeRoll =>
      'Μπορείτε μόνο να διπλασιαστείτε πριν από την κύλιση, στη σειρά σας.';

  @override
  String get buddyDoubleCrawford =>
      'Χωρίς διπλασιασμό στο παιχνίδι του Κρόφορντ — αυτό το μεμονωμένο παιχνίδι αποφασίζει τον αγώνα.';

  @override
  String get buddyDoubleNotOwner =>
      'Μόνο ο κάτοχος του κύβου μπορεί να διπλασιαστεί και η άλλη πλευρά τον κατέχει αυτή τη στιγμή.';

  @override
  String get buddyDoubleUnavailable =>
      'Ο διπλασιασμός δεν είναι διαθέσιμος αυτήν τη στιγμή.';

  @override
  String get buddyLookingAtBoard => 'Ο Buddy κοιτάζει τον πίνακα.';

  @override
  String get buddyCameraPlayFallback =>
      'Μπορείτε ακόμα να παίξετε τον αγώνα: πληκτρολογήστε κάθε ζαριά στο ταμπλό και πατήστε τα παιχνίδια σας στον παρακάτω πίνακα.';

  @override
  String get buddySkipCheck => 'Παραλείψτε αυτόν τον έλεγχο';

  @override
  String get buddyFixedIt => 'το διόρθωσα';

  @override
  String get buddyDrop => 'Πτώση';

  @override
  String get buddyTake => 'Παίρνω';

  @override
  String get buddyDone => 'Γινώμενος';

  @override
  String get buddyTranscriptLabel => 'Τι είπε ο Buddy';

  @override
  String get buddyUndo => 'Ξεκάνω';

  @override
  String get buddyConfirm => 'Επιβεβαιώνω';

  @override
  String get buddyDice => 'Ζάρια';

  @override
  String get buddyDouble => 'Διπλό';

  @override
  String get buddyDicePadTitle => 'Τι έφεραν τα ζάρια;';

  @override
  String get buddyEnterRoll => 'Εισαγάγετε το ρολό';

  @override
  String get buddyContextBeforeGame => 'Παίξτε με το Buddy';

  @override
  String buddyContextMatchScore(
    String you,
    String buddy,
    String length,
    String number,
  ) {
    return 'Εσείς $you–$buddy Buddy · έως $length · Παιχνίδι $number';
  }

  @override
  String get buddyCameraUnavailable =>
      'Δεν ήταν δυνατή η εκκίνηση της κάμερας. Ελέγξτε τα δικαιώματα και δοκιμάστε ξανά.';

  @override
  String get buddyCameraPermission =>
      'Το Backgammon Buddy δεν έχει άδεια χρήσης της κάμερας. Επιτρέψτε την πρόσβαση της κάμερας στις ρυθμίσεις της συσκευής σας και δοκιμάστε ξανά.';

  @override
  String get buddyCalibrationTitle => 'Δείξτε τον πίνακα Buddy';

  @override
  String get buddyCalibrationCornersFold =>
      'Σύρετε τις τέσσερις εξωτερικές λαβές στις γωνίες της τσόχας - όχι στο ξύλινο χείλος - και τις τέσσερις μικρές στις ραφές όπου ο μεντεσές συναντά τις μακρινές και τις κοντινές άκρες.';

  @override
  String get buddyCalibrationCornersFlat =>
      'Σύρετε κάθε λαβή σε μια γωνία της τσόχας — στην επιφάνεια παιχνιδιού, όχι στο ξύλινο χείλος γύρω της.';

  @override
  String get buddyCalibrationCheckLines =>
      'Στη συνέχεια, ελέγξτε τις δώδεκα γραμμές κάτω σε κάθε μισό: κάθε μία πρέπει να τρέχει κατά μήκος ενός σημείου του ταμπλό σας. Μια γραμμή που χάνει το σημείο της είναι μια λαβή που χρειάζεται ώθηση.';

  @override
  String get buddyCalibrationSeatQuestion => 'Ποιο μισό είναι το σπίτι σας;';

  @override
  String get buddyCalibrationSeatHelp =>
      'Το μισό πλησιέστερο στο κάτω μέρος της εικόνας. Αυτό είναι που διορθώνει τους αριθμούς των σημείων, επομένως οι παραπάνω γραμμές κινούνται μαζί τους.';

  @override
  String get buddyCalibrationCaptureWait =>
      'Κρατήστε το τηλέφωνο ακίνητο. Ο Buddy περιμένει να ρυθμιστεί η εικόνα πριν μάθει αυτόν τον πίνακα.';

  @override
  String get buddyCalibrationConfirmQuestion => 'Αυτό είναι το ταμπλό σας;';

  @override
  String get buddyCalibrationConfirmFallback =>
      'Ο Buddy κοιτάζει τον πίνακα που μόλις έμαθε.';

  @override
  String get buddyCalibrationConfirmHelp =>
      'Οι άντρες που σχεδιάζονται πάνω από την εικόνα είναι αυτό που ο Buddy πιστεύει ότι είναι στον πίνακα. Εάν κάποιο από αυτά βρίσκεται στο λάθος μέρος, ξεκινήστε από την αρχή — κοστίζει δευτερόλεπτα τώρα και ένα παιχνίδι αργότερα.';

  @override
  String get buddyCalibrationNext => 'Επόμενος';

  @override
  String get buddyCalibrationBack => 'Πίσω';

  @override
  String get buddyCalibrationCapture => 'Σύλληψη';

  @override
  String get buddyCalibrationStartOver => 'Ξεκινήστε από την αρχή';

  @override
  String get buddyCalibrationLooksRight => 'Φαίνεται σωστό';

  @override
  String get buddyCalibrationCornersInvalid =>
      'Αυτές οι τέσσερις λαβές δεν σκιαγραφούν μια σανίδα — η μία από αυτές έχει διασταυρώσει την άλλη. Σύρτε τα πίσω στις γωνίες της τσόχας.';

  @override
  String get buddyCalibrationPrepTitle => 'Τρία πράγματα πρώτα';

  @override
  String get buddyCalibrationRemoveDiceTitle =>
      'Απομακρύνετε τα ζάρια από το ταμπλό.';

  @override
  String get buddyCalibrationRemoveDiceBody =>
      'Ο Buddy μαθαίνει τώρα το άδειο ταμπλό. Αν μείνει ένα ζάρι στην επιφάνεια, θα το μάθει ως μέρος του ταμπλό και δεν θα μπορεί να βλέπει τα ζάρια σε αυτήν τη συνεδρία.';

  @override
  String get buddyCalibrationSetupCheckersTitle =>
      'Προετοιμάστε τους άνδρες για την έναρξη ενός παιχνιδιού.';

  @override
  String get buddyCalibrationSetupCheckersBody =>
      'Τριάντα πούλια σε γνωστά μέρη είναι ο τρόπος με τον οποίο ο Buddy μαθαίνει τα δύο χρώματα αυτού του πίνακα χωρίς να του πουν τι είναι.';

  @override
  String get buddyCalibrationFitBoardTitle =>
      'Τοποθετήστε ολόκληρο τον αγωνιστικό χώρο στην εικόνα.';

  @override
  String get buddyCalibrationFitBoardBody =>
      'Στη συνέχεια, αφήστε το τηλέφωνο εκεί που είναι. Εάν μετακινηθεί, το Buddy θα το πει και μπορείτε να σπρώξετε τις γωνίες προς τα πίσω.';

  @override
  String get buddyCalibrationBoardKind => 'Τι είδους σανίδα είναι;';

  @override
  String get buddyCalibrationFlatBoard => 'Επίπεδη σανίδα';

  @override
  String get buddyCalibrationFoldingBoard => 'Πτυσσόμενη θήκη';

  @override
  String get buddyCalibrationBoardKindHelp =>
      'Μια πτυσσόμενη σανίδα χρειάζεται τέσσερις επιπλέον λαβές στις ραφές μεντεσέδων.';

  @override
  String get buddyCalibrationNoCameraBody =>
      'Η λειτουργία Buddy παρακολουθεί μια πραγματική πλακέτα, επομένως δεν μπορεί να ξεκινήσει χωρίς την κάμερα. Όλα τα άλλα στην εφαρμογή δεν επηρεάζονται.';

  @override
  String buddyHandleHingeSeam(int number) {
    return 'Ραφή μεντεσέ $number από 4';
  }

  @override
  String buddyHandleCorner(int number) {
    return 'Γωνία σανίδας $number από 4';
  }

  @override
  String get buddyNudgeLeft => 'Σπρώξτε αριστερά';

  @override
  String get buddyNudgeRight => 'Σπρώξτε δεξιά';

  @override
  String get buddyNudgeUp => 'Σπρώξτε επάνω';

  @override
  String get buddyNudgeDown => 'Σπρώξτε προς τα κάτω';

  @override
  String get buddyCalibrationProblemCorners =>
      'Αυτές οι τέσσερις γωνίες δεν περιγράφουν έναν πίνακα. Σύρετε κάθε λαβή σε μια γωνία του αγωνιστικού χώρου και δοκιμάστε ξανά.';

  @override
  String get buddyCalibrationProblemFoldCorners =>
      'Αυτά τα οκτώ σημεία δεν περιγράφουν μια πτυσσόμενη σανίδα. Τοποθετήστε τέσσερις στις γωνίες του αγωνιστικού χώρου και τέσσερις στις ραφές μεντεσέδων και, στη συνέχεια, δοκιμάστε ξανά.';

  @override
  String get buddyCalibrationProblemUnreadable =>
      'Δεν μπορώ να διακρίνω τον ίδιο τον πίνακα - κάθε μέρος του είναι καλυμμένο ή χαμένο στη σκιά ή στο έντονο φως. Καθαρίστε τον πίνακα, προσθέστε λίγο φως και δοκιμάστε ξανά.';

  @override
  String buddyCalibrationProblemRegionUnreadable(String region) {
    return 'Δεν μπορώ να διακρίνω το $region — μπορεί κάτι να στηρίζεται σε αυτό ή αυτή η γωνία του πίνακα μπορεί να είναι πολύ σκοτεινή για να διαβαστεί. Διαγράψτε το ή προσθέστε λίγο φως και δοκιμάστε ξανά.';
  }

  @override
  String get buddyCalibrationProblemColours =>
      'Τα δύο σετ πούλια μοιάζουν πάρα πολύ από εδώ. Το περισσότερο φως ή μια γωνία με λιγότερη λάμψη στον πίνακα, συνήθως το διορθώνει.';

  @override
  String buddyCalibrationProblemWrongChecker(int number) {
    return 'Τα πούλια δεν βρίσκονται στην αρχική θέση — το σημείο $number έχει λάθος χρώμα. Ρυθμίστε τον πίνακα για την έναρξη ενός παιχνιδιού και, στη συνέχεια, βαθμονομήστε ξανά.';
  }

  @override
  String get buddyCalibrationProblemOverexposed =>
      'Υπάρχει τόσο πολύ φως στον πίνακα που τα χρώματά του πλένονται το ένα μέσα στο άλλο. Χαμηλώστε το φως ή μετακινήστε το τηλέφωνο έτσι ώστε η λάμπα να μην ανάβει κατευθείαν σε αυτό.';

  @override
  String get buddyCalibrationProblemReadBack =>
      'Μπορώ να διαβάσω αυτόν τον πίνακα, αλλά όχι ως ένα παιχνίδι που πρόκειται να ξεκινήσει. Ρυθμίστε τους άνδρες για την έναρξη ενός παιχνιδιού και μετά βαθμονομήστε ξανά.';

  @override
  String get buddyCalibrationProblemStacks =>
      'Μπορώ να διαβάσω αυτόν τον πίνακα, αλλά δεν μπορώ να καταλάβω πόσο μακριά είναι το ένα πούλι πίσω από το άλλο από εδώ — οπότε θα έκανα λάθος τους αριθμούς. Λίγο περισσότερο φως στα κοντινά σημεία ή μια ελαφρώς υψηλότερη γωνία κάμερας, συνήθως το διορθώνει.';

  @override
  String get buddyCalibrationProblemNotVisible =>
      'Δεν μπορώ να δω ολόκληρο τον πίνακα. Μετακινήστε το τηλέφωνο προς τα πίσω ή σύρετε τις γωνίες στον αγωνιστικό χώρο.';

  @override
  String buddyConfirmBoardOutOfFrame(String region) {
    return 'Δεν μπορώ να δω ολόκληρο τον πίνακα πια — το $region είναι έξω από την εικόνα. Ευθυγραμμίστε ξανά την κάμερα ή ελέγξτε ξανά τις γωνίες.';
  }

  @override
  String get buddyConfirmStartingPosition => 'Μοιάζει με την αρχική θέση.';

  @override
  String get buddyConfirmNoCheckers =>
      'Δεν μπορώ να δω πούλι οπουδήποτε ξεκινά το παιχνίδι. Ρυθμίστε τους άνδρες για την έναρξη ενός παιχνιδιού και δοκιμάστε ξανά.';

  @override
  String buddyConfirmWrongPosition(String details, String more) {
    return 'Ο πίνακας δεν έχει ρυθμιστεί για την έναρξη ενός παιχνιδιού: $details$more.';
  }

  @override
  String buddyConfirmRegionEmpty(String region, String side) {
    return 'Το $region φαίνεται κενό, αλλά το παιχνίδι ξεκινά με το $side εκεί';
  }

  @override
  String buddyConfirmRegionUnexpected(String region, String side) {
    return 'Το $region έχει το $side, αλλά το παιχνίδι ξεκινά με άδειο';
  }

  @override
  String buddyConfirmRegionWrongSide(
    String region,
    String observed,
    String expected,
  ) {
    return 'Το $region έχει $observed σε αυτό, όπου το παιχνίδι ξεκινά με $expected';
  }

  @override
  String get buddyReadabilityMotion =>
      'Μείνετε ακίνητοι για λίγο — χάνω την πλακέτα ενώ το τηλέφωνο κινείται.';

  @override
  String get buddyReadabilityWrongFrame =>
      'Η εικόνα που μου δίνεται δεν είναι αυτή στην οποία δημιουργήθηκε αυτός ο πίνακας, επομένως δεν μπορώ να παραθέσω τίποτα σε αυτήν. Ρυθμίστε ξανά τον πίνακα από εδώ.';

  @override
  String get buddyReadabilityBlur =>
      'Η εικόνα είναι πολύ απαλή για να διαβάσετε τον πίνακα. Δώστε στην κάμερα μια στιγμή να εστιάσει.';

  @override
  String get buddyReadabilityCalibrationStale =>
      'Ο πίνακας δεν είναι εκεί που ήταν όταν τον έμαθα. Ευθυγραμμίστε ξανά τις γωνίες και θα πάρω το παιχνίδι κατευθείαν πίσω.';

  @override
  String get buddyReadabilityOccluded =>
      'Κάτι καλύπτει μέρος του πίνακα. Θα συνεχίσω μόλις είναι σαφές.';

  @override
  String get buddyReadabilityClear => 'Μπορώ να δω τον πίνακα.';

  @override
  String get buddyReadabilityColorChanged =>
      'Το φως στον πίνακα έχει αλλάξει χρώμα, οπότε ο πίνακας δεν μοιάζει πλέον με αυτόν που έμαθα. Ευθυγραμμίστε ξανά τις γωνίες κάτω από αυτό το φως και θα επιλέξω το παιχνίδι κατευθείαν πίσω.';

  @override
  String get buddyReadabilityTooDark =>
      'Είναι πολύ σκοτεινό για να διαβάσετε τον πίνακα. Λίγο ακόμα φως και θα συνεχίσω εκεί που ήμασταν.';

  @override
  String get buddyReadabilityTooBright =>
      'Υπάρχει τόσο πολύ φως στον πίνακα που τα χρώματά του πέφτουν μεταξύ τους. Χαμηλώστε το ή μετακινήστε το τηλέφωνο ώστε η λάμπα να μην ανάβει κατευθείαν σε αυτό.';

  @override
  String buddyPromptBeliefMirror(String reason) {
    return 'Το Buddy εξακολουθεί να μην μπορεί να δει την κίνησή του — $reason.';
  }

  @override
  String buddyCameraUnavailablePlay(String cameraMessage) {
    return '$cameraMessage\n\nΜπορείτε ακόμα να παίξετε τον αγώνα: πληκτρολογήστε κάθε ζαριά στο ταμπλό και πατήστε τα παιχνίδια σας στον παρακάτω πίνακα.';
  }

  @override
  String get buddyCameraGenericError =>
      'Δεν ήταν δυνατή η εκκίνηση της κάμερας. Ελέγξτε τα δικαιώματα και δοκιμάστε ξανά.';

  @override
  String buddyRegionPoint(int number) {
    return 'το σημείο $number';
  }

  @override
  String get buddyRegionBar => 'το μπαρ';

  @override
  String get buddyRegionWhiteTray => 'Ο δίσκος με αρκουδάκι του White';

  @override
  String get buddyRegionBlackTray => 'Δίσκος με αρκούδα του Black';

  @override
  String get buddyRegionDiceZone => 'τη μέση του πίνακα';

  @override
  String get buddyCalibrationProblemVisible =>
      'Δεν μπορώ να δω ολόκληρο τον πίνακα. Μετακινήστε το τηλέφωνο προς τα πίσω ή σύρετε τις γωνίες στον αγωνιστικό χώρο.';

  @override
  String buddyConfirmMore(int number) {
    return '(και $number περισσότερα)';
  }

  @override
  String get buddyDiceOpeningCaption =>
      'Ένα ζάρι ο καθένας. Το μεγαλύτερο αποτέλεσμα καθορίζει ποιος ξεκινά.';

  @override
  String get buddyDiceOpeningFirst => 'Το ζάρι του Λευκού';

  @override
  String get buddyDiceOpeningSecond => 'Το ζάρι του Μαύρου';

  @override
  String get buddyDiceRegularCaption =>
      'Τα δύο πρόσωπα στο τραπέζι, με οποιαδήποτε σειρά.';

  @override
  String get buddyDiceRegularFirst => 'Ένα ζάρι';

  @override
  String get buddyDiceRegularSecond => 'Το άλλο';

  @override
  String get evaluationEngine => 'Μηχανή αξιολόγησης';

  @override
  String get parallelEngineAnalysis => 'Ανάλυση με τις δύο μηχανές';

  @override
  String get parallelEngineExplanation =>
      'Συγκρίνετε τις ξεχωριστές συμβουλές wildbg και GNUbg στον εκπαιδευτή.';

  @override
  String get engineComparison => 'Σύγκριση μηχανών';

  @override
  String get engineWinChance => 'Πιθανότητα νίκης';

  @override
  String get buddyBar => 'το μπαρ';

  @override
  String get buddyOff => 'μακριά από';

  @override
  String get buddyHitSuffix => ', χτυπώντας';

  @override
  String buddyFriendlyMoveOne(String from, String to, String hit) {
    return 'Μετακινήστε ένα πούλι από το $from στο $to $hit';
  }

  @override
  String buddyFriendlyMoveMany(
    String count,
    String from,
    String to,
    String hit,
  ) {
    return 'Μετακίνηση $count πούλια από $from σε $to $hit';
  }

  @override
  String buddyFriendlyBearOffOne(String from, String hit) {
    return 'Φέρτε ένα πούλι μακριά από $from $hit';
  }

  @override
  String buddyFriendlyBearOffMany(String count, String from, String hit) {
    return 'Βγάλτε $count πούλια από $from $hit';
  }

  @override
  String buddySpeechIRolled(String dice) {
    return 'Έβαλα το $dice.';
  }

  @override
  String buddySpeechYouRolled(String dice) {
    return 'Κάνατε το $dice.';
  }

  @override
  String buddySpeechOpeningTie(String die) {
    return 'Και τα δύο κύλησαν $die. Κυλήστε ξανά.';
  }

  @override
  String get buddySpeechNoPlayYouTurn =>
      'Όχι παιχνίδι, οπότε είναι η σειρά σου.';

  @override
  String get buddySpeechNoPlayBuddyTurn =>
      'Χωρίς παιχνίδι, οπότε είναι η σειρά του Buddy.';

  @override
  String get buddySpeechNoPlayPass => 'Χωρίς παιχνίδι — η σειρά σας περνάει.';

  @override
  String get buddySpeechNoPlayBack =>
      'Χωρίς παιχνίδι, οπότε είναι πίσω σε εσάς.';

  @override
  String get buddySpeechIllegalPlay => 'Αυτό δεν είναι νόμιμο παιχνίδι.';

  @override
  String buddySpeechPlacementMismatch(String reason) {
    return 'Αυτό δεν είναι πολύ σωστό. $reason';
  }

  @override
  String buddyBoardMismatch(String details, String more) {
    return 'Ο πίνακας διαφέρει από το παιχνίδι: $details$more.';
  }

  @override
  String buddyConfirmRegionWrongCount(
    String region,
    String expected,
    String side,
    String observed,
  ) {
    return '$region: το παιχνίδι αναμένει $expected $side πούλια. η κάμερα βλέπει το $observed.';
  }

  @override
  String get buddySpeechSkippedCheck =>
      'Θα δεχτώ τον λόγο σου. Δεν μπορούσα να δω αυτή τη χώρα, οπότε αν έχουμε χωρίσει θα εμφανιστεί ως έργο που δεν μπορώ να διαβάσω.';

  @override
  String get buddySpeechBuddyDouble => 'διπλασιάζω — παίρνω ή ρίχνω;';

  @override
  String get buddySpeechYouDouble => 'Διπλασιάζεσαι.';

  @override
  String get buddySpeechBuddyTakes => 'παίρνω.';

  @override
  String get buddySpeechYouTake => 'Παίρνετε.';

  @override
  String get buddySpeechBuddyDrops => 'πέφτω.';

  @override
  String get buddySpeechYouDrop => 'Πέφτεις.';

  @override
  String buddySpeechGameWinnerBuddy(String points) {
    return 'Κερδίζω αυτό το παιχνίδι: $points.';
  }

  @override
  String buddySpeechGameWinnerYou(String points) {
    return 'Κερδίζετε αυτό το παιχνίδι: $points.';
  }

  @override
  String get buddySpeechMatchWinnerBuddy => 'Αυτό είναι το ταίρι για μένα.';

  @override
  String get buddySpeechMatchWinnerYou => 'Κερδίζεις τον αγώνα.';

  @override
  String get buddyTutorLastPlayBest =>
      'Το τελευταίο σας παιχνίδι ταίριαξε με τα καλύτερα του κινητήρα.';

  @override
  String get buddyTutorLastPlayClose =>
      'Το τελευταίο σου παιχνίδι ήταν κοντά στο καλύτερο του κινητήρα.';

  @override
  String buddyTutorPreferredMove(String move, String reason) {
    return 'Για το τελευταίο σας παιχνίδι, η μηχανή προτίμησε το $move. $reason';
  }

  @override
  String buddyTutorBarDifference(String best, String played) {
    return 'Αφήνει $best αντίθετα πούλια στη γραμμή αντί για $played.';
  }

  @override
  String buddyTutorBlotDifference(String best, String played) {
    return 'Αφήνει $best κηλίδες αντί για $played.';
  }

  @override
  String buddyTutorHomeDifference(String best, String played) {
    return 'Κατέχει $best πόντους αρχικής σελίδας αντί για $played.';
  }

  @override
  String buddyTutorOffDifference(String best, String played) {
    return 'Έχει απενεργοποιημένα $best πούλια αντί για $played.';
  }

  @override
  String get buddyTutorGeneralDifference =>
      'Η κατάταξη ζυγίζει τις εκτιμώμενες νίκες και τα γαμόνια. κανένα χαρακτηριστικό του πίνακα δεν το εξηγεί.';

  @override
  String buddySpeechPlay(String move) {
    return 'Παίξτε $move';
  }

  @override
  String buddySpeechBuddyRolledMove(String dice, String move) {
    return 'Έβαλα $dice — $move';
  }

  @override
  String get privacyDeletionReceiptCheck => 'Έλεγχος επιβεβαίωσης διαγραφής';

  @override
  String get privacyDeletionReceiptHelp =>
      'Αφού ζητήσετε διαγραφή, επιστρέψτε εδώ για να ελέγξετε αν ολοκληρώθηκε. Το ιδιωτικό αποδεικτικό σας παραμένει σε αυτή τη συσκευή και λειτουργεί μετά την αποσύνδεση. Οι έλεγχοι δεν δημιουργούν λογαριασμό. Οι επιβεβαιώσεις ολοκλήρωσης είναι διαθέσιμες στο διαδίκτυο για 90 ημέρες· διατηρήστε αυτή την εγκατάσταση μέχρι την επιβεβαίωση.';

  @override
  String get privacyDeletionReceiptNone =>
      'Δεν υπάρχει αποθηκευμένο αποδεικτικό διαγραφής σε αυτή τη συσκευή. Για παλαιότερα αιτήματα ή χαμένη συσκευή, επικοινωνήστε με την υποστήριξη.';

  @override
  String get privacyDeletionReceiptPending =>
      'Η διαγραφή δεν έχει επιβεβαιωθεί ακόμη. Η επεξεργασία μπορεί να διαρκέσει έως 30 ημέρες. Ελέγξτε ξανά αργότερα. Αν έχουν περάσει περισσότερες από 30 ημέρες, επικοινωνήστε με την υποστήριξη. Ένα μη διαθέσιμο ή ληγμένο αποδεικτικό δεν αποτελεί απόδειξη διαγραφής.';

  @override
  String get privacyDeletionReceiptComplete =>
      'Η διαγραφή ολοκληρώθηκε: όλα τα αιτήματα που είναι αποθηκευμένα σε αυτή τη συσκευή έχουν επιβεβαιωθεί ως ολοκληρωμένα. Αυτό δεν διαγράφει διαδικτυακή ταυτότητα που δημιουργήθηκε αργότερα. Το τοπικό ιστορικό και τα δεδομένα εκμάθησης διατηρούνται. Η Google ενδέχεται να διατηρεί αντίγραφα ασφαλείας και αρχεία ασφαλείας, όπως περιγράφεται στην πολιτική απορρήτου.';

  @override
  String get privacyDeletionReceiptFailed =>
      'Δεν ήταν δυνατός ο έλεγχος της επιβεβαίωσης διαγραφής. Δοκιμάστε ξανά όταν συνδεθείτε ή επικοινωνήστε με την υποστήριξη. Αυτό δεν επιβεβαιώνει την ολοκλήρωση.';
}
