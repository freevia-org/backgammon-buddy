// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get homeTagline => 'Progressez avec un tuteur';

  @override
  String get settings => 'Paramètres';

  @override
  String get playVsComputer => 'Jouer contre l’ordinateur';

  @override
  String get twoPlayers => 'Deux joueurs';

  @override
  String get playNearby => 'Jouer à proximité';

  @override
  String get playOnline => 'Jouer en ligne';

  @override
  String get learningPractice => 'Apprendre et s’entraîner';

  @override
  String get gamesArchive => 'Archives des parties';

  @override
  String get followSystem => 'Suivre la langue de l’appareil';

  @override
  String get white => 'Blancs';

  @override
  String get black => 'Noirs';

  @override
  String get random => 'Aléatoire';

  @override
  String get startMatch => 'Démarrer la partie';

  @override
  String get tutor => 'Tuteur';

  @override
  String get noMovesPass => 'Aucun coup : passer';

  @override
  String get undo => 'Annuler';

  @override
  String get confirm => 'Confirmer';

  @override
  String get roll => 'Lancer';

  @override
  String get hint => 'Indice';

  @override
  String get tutoringStyle => 'Style de tutorat';

  @override
  String get tutorStyleCoach => 'Coach';

  @override
  String get tutorStyleHintsOnly => 'Indices uniquement';

  @override
  String get tutorStyleTryFirst => 'Essayer d’abord';

  @override
  String get tutorCoachDescription =>
      'Conseils sur la position, retours sur les coups, indices et conseils sur le videau.';

  @override
  String get tutorHintsDescription =>
      'Les coups classés sont affichés sur demande. Les conseils en direct sur la position et les retours automatiques sont désactivés.';

  @override
  String get tutorTryFirstDescription =>
      'Jouez votre coup avant d’afficher les indices classés ou son évaluation ; les conseils sur la position restent actifs.';

  @override
  String get tutorCustomDescription =>
      'Mélange personnalisé. Modifiez les options ci-dessous.';

  @override
  String get tutorBestMoveHints => 'Indices pour le meilleur coup';

  @override
  String get tutorRevealRankedPlays =>
      'Afficher les coups classés pendant votre décision';

  @override
  String get tutorMoveExplanations => 'Explications du coup';

  @override
  String get tutorCompareEstimates =>
      'Comparer les estimations et les changements sur le plateau';

  @override
  String get tutorGameCommentary => 'Commentaires de partie';

  @override
  String get tutorPositionPrompts =>
      'Conseils de position et retour après chaque coup';

  @override
  String get tutorCubeAdvice => 'Conseils sur le videau';

  @override
  String get tutorMatchAwareCubeAdvice =>
      'Conseils de double, prise et passe tenant compte du score du match';

  @override
  String get tutorTryMoveFirst => 'Essayer un coup d’abord';

  @override
  String get tutorStageBeforeHints =>
      'Jouez votre coup avant d’afficher les indices ou son évaluation';

  @override
  String get tutorStaticEstimateNote =>
      'Évaluation statique rapide (0 pli, sans simulations) ; les notes décrivent les changements du plateau et les réponses possibles, sans prédire la suite avec certitude.';

  @override
  String get tutorWhatToWatchNext => 'À surveiller ensuite';

  @override
  String get tutorMoreBoardDetails => 'Plus de détails sur le plateau';

  @override
  String get tutorEstimatesAndHowTheyWork => 'Estimations et fonctionnement';

  @override
  String get tutorEstimateLimitations =>
      'Profondeur : évaluation neuronale statique après chaque coup légal (0 pli), sans simulations ni recherche des réponses futures. La MWC tient compte du score du match et du videau actuel pour pondérer les estimations, mais ne modélise pas les décisions futures sur le videau. Si le score est indisponible, l’équité sans videau correspond aux points attendus avec un videau à 1. Les observations décrivent le coup, et non le raisonnement interne du moteur neuronal. Des évaluations presque égales ne garantissent rien ; aucun intervalle de confiance n’est calibré.';

  @override
  String get tutorPointNumberNote =>
      'Les numéros de cases des notes pédagogiques sont comptés depuis le jan intérieur du joueur qui joue.';

  @override
  String get tutorHittingRollNote =>
      'Le nombre d’occasions de frapper inclut les 36 résultats ordonnés des dés et les frappes directes ou indirectes légales ; ce sont des possibilités, pas une prédiction du choix de l’adversaire.';

  @override
  String get tutorNoEvaluatedAlternatives =>
      'Aucune alternative n’a été évaluée pour ce coup.';

  @override
  String get tutorForcedPassNoDecision =>
      'Une passe forcée n’implique pas de décision de déplacement des pions.';

  @override
  String get settingsReset => 'Réinitialiser';

  @override
  String get settingsAppLanguage => 'Langue de l’application';

  @override
  String get settingsTheme => 'Thème';

  @override
  String get settingsThemeSystem => 'Système';

  @override
  String get settingsThemeLight => 'Clair';

  @override
  String get settingsThemeDark => 'Sombre';

  @override
  String get settingsAnimationSpeed => 'Vitesse des animations';

  @override
  String get settingsAnimationNone => 'Aucune';

  @override
  String get settingsAnimationNormal => 'Normale';

  @override
  String get settingsAnimationFast => 'Rapide';

  @override
  String get settingsDiceRollAnimation => 'Animation des dés';

  @override
  String get settingsDiceRollAnimationHelp =>
      'Faites rouler les dés avant chaque lancer';

  @override
  String get settingsDefaultMatchLength => 'Durée de match par défaut';

  @override
  String get settingsDefaultDifficulty => 'Difficulté par défaut';

  @override
  String get settingsDifficultyEasy => 'Facile';

  @override
  String get settingsDifficultyMedium => 'Moyenne';

  @override
  String get settingsDifficultyHard => 'Difficile';

  @override
  String get settingsDifficultyExpert => 'Expert';

  @override
  String get settingsTutorModeDefault => 'Mode tutoriel par défaut';

  @override
  String get settingsTutorAuto => 'Auto';

  @override
  String get settingsTutorOn => 'Activé';

  @override
  String get settingsTutorOff => 'Désactivé';

  @override
  String get settingsTutorModeHelp =>
      'Auto active le tutoriel à tous les niveaux de difficulté de l’ordinateur. Activé et Désactivé définissent le choix initial des matchs locaux. Les matchs à proximité et en ligne se jouent sans aide ; leurs parties sauvegardées peuvent être analysées ensuite. Les préférences pédagogiques ci-dessous sont enregistrées sur cet appareil.';

  @override
  String get settingsTutorPreferences => 'Préférences du tutoriel';

  @override
  String get settingsTutorPreferencesSubtitle =>
      'Valeurs par défaut enregistrées pour les prochains matchs';

  @override
  String get settingsTutorSaveError =>
      'Impossible d’enregistrer les préférences du tutoriel.';

  @override
  String get settingsGameplay => 'Jeu';

  @override
  String get settingsMoveHighlights => 'Surlignage des coups';

  @override
  String get settingsMoveHighlightsHelp =>
      'Entoure les pions sélectionnables et illumine les destinations';

  @override
  String get settingsDragToMove => 'Glisser pour déplacer';

  @override
  String get settingsDragToMoveHelp =>
      'Faites glisser un pion vers sa destination (les appuis fonctionnent toujours)';

  @override
  String get settingsCombinedMoves => 'Coups combinés';

  @override
  String get settingsCombinedMovesHelp =>
      'Un appui déplace un pion avec les deux dés';

  @override
  String get settingsRotateBoard => 'Faire pivoter le plateau entre les tours';

  @override
  String get settingsRotateBoardHelp =>
      'Jeu à plusieurs sur le même appareil : inverse la vue du joueur actif';

  @override
  String get settingsPassDevice => 'Écran de passage de l’appareil';

  @override
  String get settingsPassDeviceHelp =>
      'Masquer le plateau entre les tours en jeu à plusieurs';

  @override
  String get settingsShowScore => 'Afficher le score';

  @override
  String get settingsShowScoreHelp =>
      'Afficher le score actuel du match dans l’en-tête';

  @override
  String get settingsBuddyMode => 'Mode Buddy';

  @override
  String get settingsBuddyTerse => 'Bref';

  @override
  String get settingsBuddyFriendly => 'Convivial';

  @override
  String get settingsBuddyTerseHelp =>
      'Comment Buddy annonce un coup à voix haute : « 13/8, 24/22 », la notation réellement utilisée par deux joueurs devant le plateau.';

  @override
  String get settingsBuddyFriendlyHelp =>
      'Comment Buddy annonce un coup à voix haute : « Déplace un pion de 13 à 8, puis un autre de 24 à 22. »';

  @override
  String get settingsListenForDice => 'Écouter les dés';

  @override
  String get settingsListenForDiceHelp =>
      'Buddy examine le plateau plus tôt lorsqu’il entend un lancer. Désactivé ne change rien d’autre.';

  @override
  String get settingsDiagnostics => 'Diagnostic';

  @override
  String get settingsErrorLog => 'Journal des erreurs';

  @override
  String get settingsErrorLogHelp =>
      'Erreurs récentes, prêtes à être copiées dans un signalement';

  @override
  String get settingsReportBug => 'Signaler un bug';

  @override
  String get settingsReportBugHelp => 'Ouvrir un signalement guidé sur GitHub';

  @override
  String get settingsSuggestIdea => 'Suggérer une idée';

  @override
  String get settingsSuggestIdeaHelp =>
      'Aidez-nous à améliorer le tutoriel et le jeu';

  @override
  String get settingsAbout => 'À propos';

  @override
  String get settingsOpenSourceLicenses => 'Licences open source';

  @override
  String settingsAppVersion(Object version) {
    return 'Backgammon Buddy $version';
  }

  @override
  String get tutorPhraseGameFinished => 'Partie terminée.';

  @override
  String get tutorPhraseReviewFinishedGame =>
      'Rejouez les coups pour trouver une décision à travailler.';

  @override
  String get tutorPhraseCubeOffered => 'Le videau a été proposé.';

  @override
  String get tutorPhraseCubeDecisionPrompt =>
      'Décidez de prendre ou de passer avant de préparer un coup de pions.';

  @override
  String get tutorPhraseCubeScoreContext =>
      'Le score du match change la valeur de l’enjeu supplémentaire.';

  @override
  String get tutorPhraseResignationOffered =>
      'Une proposition d’abandon a été faite.';

  @override
  String get tutorPhraseResignationDecisionPrompt =>
      'Comparez les points proposés à la position avant d’accepter ou de continuer.';

  @override
  String get tutorPhraseNoLegalPlay => 'Aucun coup légal avec ce lancer.';

  @override
  String get tutorPhraseForcedPassPrompt =>
      'Une passe forcée n’est pas une erreur ; attends le prochain lancer.';

  @override
  String get tutorPhraseOnlyOneResult =>
      'Une seule position finale légale est possible.';

  @override
  String get tutorPhraseForcedTurnPrompt =>
      'Joue le tour forcé. Ce lancer ne comporte aucun choix à évaluer.';

  @override
  String get tutorPhrasePipCountsLevel => 'Les comptes de pips sont à égalité.';

  @override
  String tutorPhrasePipCountsAhead(int count) {
    return 'Vous avez $count pips d’avance.';
  }

  @override
  String tutorPhrasePipCountsBehind(int count) {
    return 'Vous avez $count pips de retard.';
  }

  @override
  String tutorPhrasePlayerHasCheckersOnBar(int count) {
    return 'Vous avez $count pions sur la barre : la réentrée passe d’abord.';
  }

  @override
  String get tutorPhraseEnterBeforeMoving =>
      'Rentrez un pion avant d’en déplacer un autre, puis cherchez une case sûre.';

  @override
  String tutorPhraseOpponentHomePoints(int count) {
    return 'L’adversaire a $count cases fermées dans son jan intérieur.';
  }

  @override
  String get tutorPhraseBearOffRace => 'Course à la sortie.';

  @override
  String get tutorPhrasePureRace => 'Une course sans contact.';

  @override
  String get tutorPhraseBearOffSpread =>
      'Sortez des pions tout en gardant une répartition utile pour le prochain lancer.';

  @override
  String get tutorPhraseBringRearCheckersHome =>
      'Ramenez les pions de derrière sans en entasser trop sur une case.';

  @override
  String get tutorPhraseArmiesHavePassed =>
      'Les camps se sont croisés ; aucun coup ne peut plus être frappé.';

  @override
  String tutorPhraseContactStillMatters(Object part) {
    return '$part Le contact compte toujours.';
  }

  @override
  String tutorPhraseOpponentHasCheckersOnBar(int count) {
    return 'L’adversaire a $count pions sur la barre.';
  }

  @override
  String get tutorPhraseKeepBoardClosed =>
      'Gardez le plateau fermé pendant que vous ramenez les pions restants à la maison.';

  @override
  String get tutorPhraseBuildOrPreserveHomeBoard =>
      'Construisez ou préservez votre jan intérieur pendant que l’adversaire tente de rentrer.';

  @override
  String tutorPhraseHomePointsCloseEntries(int count) {
    return 'Vous tenez $count cases de votre jan intérieur ; chacune bloque un numéro de rentrée.';
  }

  @override
  String tutorPhrasePrimeContact(int count) {
    return 'Contact avec une prime de $count cases.';
  }

  @override
  String get tutorPhraseExtendPrimeOrKeepSpares =>
      'Comparez l’allongement de la prime au maintien de pions en réserve pour la garder.';

  @override
  String tutorPhraseSpareCheckersCanMove(int count) {
    return '$count pions en réserve peuvent bouger sans ouvrir immédiatement leur case.';
  }

  @override
  String tutorPhraseAnchorContact(Object points) {
    return 'Contact avec un ancrage sur $points.';
  }

  @override
  String get tutorPhraseCompareAnchorProgressAhead =>
      'Comparez le retour des pions arrière à la sécurité de conserver votre ancrage.';

  @override
  String get tutorPhraseCompareAnchorProgressBehind =>
      'Gardez ce point d’appui sûr en tête tout en cherchant à frapper ou à améliorer votre plateau.';

  @override
  String get tutorPhrasePreserveAnchorFoothold =>
      'L’ancrage ne peut pas être frappé, mais ces pions ont encore un long chemin à parcourir.';

  @override
  String get tutorPhraseContactThreats =>
      'Le contact persiste : chaque camp peut encore menacer de frapper.';

  @override
  String get tutorPhraseLookForPointsAndSafety =>
      'Cherchez des cases utiles, puis évaluez le risque de laisser des pions seuls exposés.';

  @override
  String tutorPhraseHomePointsAndBlots(int count, int otherCount) {
    return 'Vous tenez $count cases de votre jan intérieur et laissez $otherCount blots exposés.';
  }

  @override
  String get tutorPhraseChooseCheckerPrompt =>
      'Choisissez un pion pour commencer votre coup.';

  @override
  String get tutorPhraseLegalPlayPrompt =>
      'Jouez un coup légal pour obtenir un commentaire.';

  @override
  String tutorPhraseStagedHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'pions adverses',
      one: 'pion adverse',
    );
    return 'Vous avez frappé $count $_temp0.';
  }

  @override
  String tutorPhraseStagedEnter(int count) {
    return 'Vous avez rentré $count pion(s) depuis la barre.';
  }

  @override
  String tutorPhraseStagedBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'pions',
      one: 'pion',
    );
    return 'Vous avez sorti $count $_temp0.';
  }

  @override
  String tutorPhraseStagedMakePoints(Object points) {
    return 'Vous avez fait $points.';
  }

  @override
  String tutorPhraseStagedBlot(int point) {
    return 'Le pion sur votre case $point est un blot pour le moment.';
  }

  @override
  String tutorPhraseStagedSpare(int point) {
    return 'Le pion en réserve sur votre case $point pourra bouger plus tard sans ouvrir la case.';
  }

  @override
  String tutorPhraseStagedPartialPrompt(Object part) {
    return '$part Utilise les dés encore jouables avant d’évaluer le coup complet.';
  }

  @override
  String get tutorPhraseStagedAllCheckersOff =>
      'Les 15 pions sont sortis : la partie est gagnée.';

  @override
  String get tutorPhraseStagedHitShortPlan =>
      'Frapper fait gagner du temps pendant que l’adversaire tente de rentrer.';

  @override
  String get tutorPhraseStagedEfficientBearOffPlan =>
      'Une sortie efficace retire des pions tout en laissant des nombres utiles pour le prochain lancer.';

  @override
  String get tutorPhraseStagedRaceHomePlan =>
      'Le plan de course consiste à ramener les pions arrière et à préparer de bonnes cases de sortie.';

  @override
  String get tutorPhraseStagedBearOffContactPlan =>
      'Sortir des pions fait avancer, mais le contact restant laisse un risque de frappe.';

  @override
  String get tutorPhraseStagedReentryPlan =>
      'La rentrée remet le pion en jeu ; cherchez ensuite une case d’arrivée sûre.';

  @override
  String get tutorPhraseStagedHomeBoardPlan =>
      'La nouvelle case de votre jan intérieur bloque un numéro de rentrée après une future frappe.';

  @override
  String get tutorPhraseStagedPrimePlan =>
      'Une prime plus longue ferme davantage de cases d’arrivée ; les pions en réserve aident à la garder.';

  @override
  String get tutorPhraseStagedLeaveAnchorPlan =>
      'Quitter l’ancrage fait avancer, mais vous perdez un point d’appui sûr.';

  @override
  String get tutorPhraseStagedNewAnchorPlan =>
      'Le nouvel ancrage offre un point d’appui sûr aux pions arrière.';

  @override
  String get tutorPhraseStagedCoverBlotPlan =>
      'Couvrir un blot retire une cible à l’adversaire.';

  @override
  String get tutorPhraseStagedSafetyTradeoffPlan =>
      'Le compromis oppose développement et sécurité : les pions utiles à la construction peuvent aussi devenir des cibles.';

  @override
  String tutorPhraseStagedCompletePrompt(Object part) {
    return '$part Le coup complet est prêt ; appuie sur « Confirmer » pour le jouer.';
  }

  @override
  String get tutorMoveForcedVerdict =>
      'Ce lancer ne laisse aucun choix de déplacement ; il n’est pas noté comme une décision.';

  @override
  String get tutorMoveTopVerdict =>
      'C’est le meilleur choix dans cette position.';

  @override
  String get tutorMoveAlternativeVerdict =>
      'Le moteur préfère un autre coup ici.';

  @override
  String tutorMoveEstimateDifference(Object loss) {
    return 'Écart par rapport au meilleur coup : $loss.';
  }

  @override
  String tutorMoveEstimateOutcomes(
    Object winPercent,
    Object winGammonPercent,
    Object loseGammonPercent,
  ) {
    return 'Après ce coup : $winPercent% de victoires, $winGammonPercent% de victoires par gammon ou mieux, et $loseGammonPercent% de défaites par gammon ou pire. Estimations du point de vue du joueur qui joue.';
  }

  @override
  String tutorMoveEstimateMatchChance(Object percent) {
    return 'Probabilité estimée de gagner le match : $percent%.';
  }

  @override
  String get tutorMovePlanAllCheckersOff =>
      'Les 15 pions sont sortis : la partie est gagnée.';

  @override
  String tutorMovePlanHit(Object homeBoardAdvice) {
    return 'Profite du coup frappé pour gagner du temps pendant que l’adversaire rentre. $homeBoardAdvice';
  }

  @override
  String get tutorMovePlanHitClosed =>
      'Garde fermés les points de ta maison pour rendre la rentrée plus difficile.';

  @override
  String get tutorMovePlanHitBuild =>
      'Ferme d’autres points dans ta maison pour compliquer la reprise après de futurs coups frappés.';

  @override
  String get tutorMovePlanRaceBearOff =>
      'Vise une sortie efficace : sors des pions tout en gardant des nombres utiles pour le prochain lancer.';

  @override
  String get tutorMovePlanRaceHome =>
      'Ramène les pions arrière dans ta maison et répartis-les sur des points utiles pour la sortie.';

  @override
  String get tutorMovePlanContactBearOff =>
      'Sors des pions, mais surveille les pions arrière adverses : tant qu’il y a contact, un pion découvert peut devenir une cible.';

  @override
  String get tutorMovePlanReentry =>
      'Rentre en jeu, puis cherche un point sûr pour le pion qui vient de rentrer.';

  @override
  String get tutorMovePlanHomeBoard =>
      'Renforce ta maison. Le nouveau point fermé rendra un futur coup frappé plus efficace en supprimant un nombre de rentrée.';

  @override
  String get tutorMovePlanPrime =>
      'Garde alignée ta rangée de points fermés. Conserve des pions de réserve pour ne pas devoir l’ouvrir sur un prochain lancer.';

  @override
  String get tutorMovePlanLeaveAnchor =>
      'Abandonner un ancrage fait avancer tes pions arrière, mais leur enlève un appui sûr. Surveille leur exposition pendant le retour.';

  @override
  String get tutorMovePlanNewAnchor =>
      'Utilise le nouvel ancrage comme appui sûr pendant que tu améliores le reste de ta position.';

  @override
  String get tutorMovePlanCoverBlot =>
      'Regroupe tes pions. Couvrir un blot supprime une cible tout en gardant des points d’arrivée possibles.';

  @override
  String get tutorMovePlanSafety =>
      'Trouve l’équilibre entre développement et sécurité : rapproche les bâtisseurs de points utiles et vérifie quels pions isolés peuvent être frappés.';

  @override
  String get tutorMoveObservationNoLegalPlay =>
      'Aucun déplacement légal de pion : il faut passer.';

  @override
  String tutorMoveObservationHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 's adverses',
      one: ' adverse',
    );
    return 'Frappe $count pion$_temp0 ; l’adversaire doit rentrer depuis la barre avant de déplacer ses autres pions.';
  }

  @override
  String tutorMoveObservationEntry(int count) {
    return 'Fait rentrer $count pion(s) depuis la barre.';
  }

  @override
  String tutorMoveObservationBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 's',
      one: '',
    );
    return 'Sort $count pion$_temp0.';
  }

  @override
  String tutorMoveObservationMadePoints(Object points) {
    return 'Forme $points. Au moins deux pions sécurisent un point et empêchent l’adversaire d’y atterrir.';
  }

  @override
  String tutorMoveObservationBrokenPoints(Object pointLabel, Object points) {
    return 'Abandonne les points formés $pointLabel $points. Ils ne bloquent plus l’adversaire.';
  }

  @override
  String tutorMoveObservationNoBlots(int previousCount) {
    return 'Ne laisse aucun pion isolé exposé (contre $previousCount auparavant). Il n’y a aucun pion seul à frapper.';
  }

  @override
  String tutorMoveObservationBlots(int count, int previousCount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 's isolés exposés',
      one: ' isolé exposé',
    );
    return 'Laisse $count pion$_temp0 (contre $previousCount auparavant). Vérifie si l’adversaire peut les atteindre avant de privilégier la sécurité à un autre avantage.';
  }

  @override
  String tutorMoveObservationPrimeRun(
    int count,
    int previousCount,
    Object primeAdvice,
  ) {
    return 'Plus longue rangée de points formés : $count (contre $previousCount auparavant). $primeAdvice';
  }

  @override
  String get tutorMoveObservationPrimeSix =>
      'Une prime de six points ne peut pas être franchie tant qu’elle reste fermée.';

  @override
  String get tutorMoveObservationPrimeBuild =>
      'Garde des bâtisseurs à proximité pour prolonger ou préserver cette rangée.';

  @override
  String tutorMoveObservationPrimeSpares(int count) {
    return '$count pions de réserve se trouvent au-delà des deux pions sur les points formés. Déplacer une réserve peut préserver le point ; déplacer l’un des deux derniers l’ouvre.';
  }

  @override
  String tutorMoveObservationAnchors(Object points, Object previousPoints) {
    return 'Ancrages dans la maison adverse : $points (contre $previousPoints auparavant). Garder un ancrage protège ces pions des coups frappés ; l’abandonner échange cet appui contre une progression dans la course.';
  }

  @override
  String get tutorMoveObservationPureRace =>
      'Course pure : les armées se sont dépassées et aucun camp n’est sur la barre. On ne peut plus frapper ; l’efficacité de la sortie compte.';

  @override
  String get tutorMoveObservationNoReplyHit =>
      'Aucun lancer légal suivant ne permet à l’adversaire de frapper un pion dans cette position. Le contact demeure, donc les prochains coups peuvent créer de nouvelles occasions.';

  @override
  String tutorMoveObservationReplyHit(
    int count,
    int total,
    int dieOne,
    int dieTwo,
    int point,
  ) {
    return 'L’adversaire peut frapper avec $count lancers sur $total. Par exemple, $dieOne–$dieTwo permet de frapper légalement ton point $point. La possibilité existe, sans garantie qu’elle soit choisie.';
  }

  @override
  String tutorMoveObservationOpponentBarHome(
    int closedPoints,
    Object entryAdvice,
  ) {
    return '$closedPoints points de ta maison sont fermés. $entryAdvice';
  }

  @override
  String get tutorMoveObservationAllEntriesClosed =>
      'L’adversaire ne peut pas rentrer tant qu’un point ne s’ouvre pas.';

  @override
  String get tutorMoveObservationOpenEntry =>
      'Un lancer utilisant un point d’entrée libre peut faire rentrer un pion depuis la barre.';

  @override
  String tutorMoveComparisonDetail(
    Object factors,
    Object delta,
    Object direction,
    Object scoreContext,
  ) {
    return '$factors Avec le meilleur coup, la probabilité estimée de victoire est $delta points de pourcentage $direction.$scoreContext';
  }

  @override
  String get tutorMoveComparisonHigher => 'plus élevée';

  @override
  String get tutorMoveComparisonLower => 'plus basse';

  @override
  String tutorMoveComparisonScoreContext(Object scoreContext) {
    return ' Il peut tout de même être mieux classé, car les gammons et backgammons ont une valeur différente avec le $scoreContext actuel.';
  }

  @override
  String get tutorMoveComparisonStake => 'score';

  @override
  String get tutorMoveComparisonMatchScore => 'score du match';

  @override
  String tutorMoveComparisonFactorBar(int bestCount, int playedCount) {
    return 'Le meilleur coup laisse $bestCount pions adverses sur la barre, contre $playedCount. Un pion sur la barre doit rentrer avant que l’adversaire puisse déplacer les autres.';
  }

  @override
  String tutorMoveComparisonFactorHomeBoard(
    int bestCount,
    int playedCount,
    Object entryDifference,
  ) {
    return 'Le meilleur coup garde $bestCount points de maison fermés, contre $playedCount, soit $entryDifference points d’entrée après un coup frappé.';
  }

  @override
  String get tutorMoveComparisonClosingMore => 'en fermant davantage';

  @override
  String get tutorMoveComparisonLeavingMore => 'en laissant davantage ouverts';

  @override
  String tutorMoveComparisonFactorShots(
    int bestCount,
    int playedCount,
    Object riskDifference,
  ) {
    return 'Le meilleur coup permet une frappe en réponse avec $bestCount lancers sur 36, contre $playedCount. $riskDifference';
  }

  @override
  String get tutorMoveComparisonReducesRisk =>
      'Cela réduit le risque immédiat d’être renvoyé sur la barre.';

  @override
  String get tutorMoveComparisonExtraExposure =>
      'Compare cette exposition supplémentaire aux gains du coup par ailleurs.';

  @override
  String tutorMoveComparisonFactorPrime(int bestCount, int playedCount) {
    return 'La plus longue rangée de points fermés du meilleur coup compte $bestCount points, contre $playedCount ; compare le blocage aux pions disponibles pour le préserver.';
  }

  @override
  String tutorMoveComparisonFactorAnchors(
    Object bestPoints,
    Object playedPoints,
  ) {
    return 'Le meilleur coup conserve $bestPoints ancrages, contre $playedPoints. Un ancrage garde un point d’arrivée sûr ; l’abandonner rapproche ces pions de la maison.';
  }

  @override
  String tutorMoveComparisonFactorBearOff(int bestCount, int playedCount) {
    return 'Le meilleur coup sort $bestCount pions, contre $playedCount. Chaque pion sorti est un pion de moins à enlever ensuite.';
  }

  @override
  String get tutorMoveComparisonFactorSimilarRisks =>
      'Les deux coups laissent la même exposition immédiate aux frappes, les mêmes points de maison, ancrages et pions sortis. Compare les points d’arrivée : au prochain lancer, ces pions pourraient servir autrement.';

  @override
  String get tutorMoveComparisonSummaryBar =>
      'Le meilleur coup envoie davantage de pions adverses sur la barre et retarde ses autres déplacements.';

  @override
  String get tutorMoveComparisonSummaryHomeBoard =>
      'Le meilleur coup ferme davantage de points de maison et rend la rentrée plus difficile après une frappe.';

  @override
  String get tutorMoveComparisonSummaryShots =>
      'Le meilleur coup offre moins de possibilités de frappe immédiate et réduit le risque d’être renvoyé sur la barre.';

  @override
  String get tutorMoveComparisonSummaryPrime =>
      'Le meilleur coup garde une rangée plus longue de points fermés.';

  @override
  String get tutorMoveComparisonSummaryAnchors =>
      'Le meilleur coup conserve davantage d’ancrages sûrs dans la maison adverse.';

  @override
  String get tutorMoveComparisonSummaryBearOff =>
      'Le meilleur coup sort davantage de pions, il en reste donc moins à enlever.';

  @override
  String tutorMoveComparisonSummaryBlots(int playedCount, int bestCount) {
    return 'Ce coup laisse $playedCount pions isolés ; le meilleur coup en laisse $bestCount.';
  }

  @override
  String tutorMoveComparisonSummarySafeAnchor(int point) {
    return 'Le meilleur coup garde un ancrage sûr au point $point.';
  }

  @override
  String get tutorMoveComparisonSummaryEntry =>
      'Le meilleur coup ferme davantage de points d’entrée au cas où un de tes pions serait frappé.';

  @override
  String get tutorMoveComparisonSummarySimilarRisks =>
      'Les coups laissent des risques immédiats similaires ; compare les points d’arrivée qui resteront utiles au prochain lancer.';

  @override
  String tutorMoveAssessmentEquityLoss(Object value) {
    return '$value d’équité';
  }

  @override
  String tutorMoveAssessmentMwcLoss(Object value) {
    return '$value points de pourcentage de chances de gagner le match';
  }

  @override
  String get tutorMovePointSingular => 'point';

  @override
  String get tutorMovePointPlural => 'points';

  @override
  String get tutorMoveNoPoints => 'aucun';

  @override
  String get gameTutorCommentaryOff =>
      'Les commentaires de la partie sont désactivés.';

  @override
  String get gameTutorToolsAvailable =>
      'Ouvre le tuteur pour accéder aux outils activés.';

  @override
  String get gameTutorNextRoll => 'Lance les dés.';

  @override
  String get gameTutorNoEvaluatedReview =>
      'Aucune explication évaluée n’est disponible pour ce coup enregistré.';

  @override
  String get gameTutorAnalysisUnavailable => 'analyse indisponible';

  @override
  String get gameTutorReviewing => 'analyse en cours…';

  @override
  String get gameTutorTryYourPlayFirst => 'Essaie d’abord ton propre coup.';

  @override
  String get gameTutorKeepBuilding => 'Continue à préparer ton coup.';

  @override
  String get gameTutorStageCompleteBeforeCoaching =>
      'Termine un coup légal avant d’afficher les conseils ou les indices.';

  @override
  String get gameTutorReadyToConfirm => 'Prêt à confirmer';

  @override
  String get gameTutorPlayTakingShape => 'Ton coup prend forme.';

  @override
  String get gameTutorConfirmOrUndo =>
      'Confirme pour jouer ou annule pour revoir ton choix.';

  @override
  String get gameTutorFinishDiceOrUndo =>
      'Joue les dés restants ou annule pour revoir ton choix.';

  @override
  String get gameTutorComputerConsidering =>
      'L’ordinateur réfléchit à son coup.';

  @override
  String get gameTutorComputerPlayReviewed =>
      'Son coup terminé sera analysé ici.';

  @override
  String get gameTutorYourPlay => 'Ton coup';

  @override
  String get gameTutorComputer => 'Ordinateur';

  @override
  String gameTutorPlayQuality(Object quality) {
    return 'Ton coup : $quality';
  }

  @override
  String get gameTutorForcedPlay => 'coup forcé';

  @override
  String get gameTutorTopChoice => 'meilleur choix';

  @override
  String get gameTutorSoundPlay => 'bon coup';

  @override
  String get gameTutorAnotherPlayMayFitBetter =>
      'Un autre coup pourrait mieux convenir.';

  @override
  String get gameTutorAnotherPlayFitsBetter =>
      'Un autre coup convient mieux à cette position.';

  @override
  String get gameTutorStrongerPlayAvailable =>
      'Un coup nettement meilleur était disponible.';

  @override
  String gameTutorPositionEdge(Object side) {
    return '$side a l’avantage selon l’estimation.';
  }

  @override
  String get gameTutorPositionEven => 'La position est à peu près équilibrée.';

  @override
  String tutorPlayedMove(Object move) {
    return 'Joué : $move';
  }

  @override
  String tutorBestMove(Object move) {
    return 'Meilleur coup : $move';
  }

  @override
  String get tutorShowRankedPlays => 'Afficher les coups classés';

  @override
  String get tutorReviewRecordedMove =>
      'Touchez un coup terminé dans le journal pour revoir ici la décision.';

  @override
  String get tutorTopPlays => 'Meilleurs coups';

  @override
  String get tutorNoHintsAvailable => 'Aucune suggestion disponible.';

  @override
  String get tutorPreviewThenConfirm =>
      'Touchez un coup pour le prévisualiser sur le plateau, puis confirmez.';

  @override
  String get tutorTopChoiceForPosition => 'Meilleur choix dans cette position';

  @override
  String get tutorAlternativePlay => 'Coup alternatif';

  @override
  String get tutorEngineEstimates => 'Estimations du moteur';

  @override
  String get tutorEstimateScope =>
      'Estimation à 0 pli · score et mise actuels · sans décisions de cube futures';

  @override
  String get tutorEquity => 'Équité';

  @override
  String get tutorMwcPercent => 'MWC %';

  @override
  String get tutorNearTiesNote =>
      'Une analyse plus approfondie peut départager des coups presque à égalité.';

  @override
  String get tutorWhyThisPlay => 'Pourquoi ce coup ?';

  @override
  String get tutorCompareAlternative => 'Comparer cette alternative';

  @override
  String get gameTutorCubeTake => 'Conseil : accepter';

  @override
  String get gameTutorCubePass => 'Conseil : passer';

  @override
  String get practiceScreenTitle => 'S’exercer sur une décision';

  @override
  String get practiceUnavailable =>
      'Cette position d’exercice n’est plus disponible.';

  @override
  String get practiceSubmitError =>
      'Cette tentative n’a pas pu être évaluée ou enregistrée. Ta progression n’a pas changé. Réessaie.';

  @override
  String practiceTurnLabel(Object side, Object dice) {
    return 'À $side de jouer · $dice';
  }

  @override
  String get practiceHistoricalScoreUnavailable =>
      'Score historique indisponible ; l’évaluation utilise l’équité sans cube.';

  @override
  String practiceScoreLine(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return 'Score : $whiteLabel $whiteScore – $blackLabel $blackScore, en $matchLength';
  }

  @override
  String get practiceCrawfordGame => ' · partie de Crawford';

  @override
  String get practiceNoDoublingCube => 'Sans videau.';

  @override
  String practiceCubeValue(int value) {
    return 'Videau $value.';
  }

  @override
  String get practiceHistoricalCubeUnknown =>
      'Règles historiques du videau inconnues.';

  @override
  String get practiceAfterBestPosition => 'Position après le meilleur coup';

  @override
  String get practiceAfterYourAnswerPosition => 'Position après ta réponse';

  @override
  String get practiceFindYourPlayPrompt =>
      'Joue ton coup sur le plateau, puis vérifie ta réponse. Aucun indice ne sera affiché.';

  @override
  String get practiceUndo => 'Annuler';

  @override
  String get practiceCheckAnswer => 'Vérifier la réponse';

  @override
  String get practiceRevealNoCredit => 'Révéler la réponse (sans crédit)';

  @override
  String get practiceAnswerRevealedNoCredit =>
      'Réponse révélée — aucun crédit de mémorisation.';

  @override
  String practiceGradeLine(Object verdict, Object loss) {
    return '$verdict · $loss';
  }

  @override
  String practiceBestMoveLine(Object move) {
    return 'Meilleur : $move';
  }

  @override
  String practiceOriginalGameLine(Object move, Object loss) {
    return 'Partie d’origine : $move · $loss';
  }

  @override
  String practiceYourAnswerLine(Object move) {
    return 'Ta réponse : $move';
  }

  @override
  String get practiceYourAnswerChip => 'Ta réponse';

  @override
  String get practiceBestPlayChip => 'Meilleur coup';

  @override
  String practiceNextReview(Object date) {
    return 'Prochaine révision : $date.';
  }

  @override
  String get practiceRecallCredit =>
      'Les réponses bonnes ou meilleures comptent comme un rappel réussi. Les répétitions anticipées ne rapprochent pas la prochaine révision.';

  @override
  String get practiceBackToLearning => 'Retour à l’apprentissage';

  @override
  String get practiceMarkBest => 'Meilleur';

  @override
  String get practiceMarkGood => 'Bon';

  @override
  String get practiceMarkDubious => 'Douteux';

  @override
  String get practiceMarkError => 'Erreur';

  @override
  String get practiceMarkBlunder => 'Gaffe';

  @override
  String get practiceMarkForced => 'Forcé';

  @override
  String get newMatchYourSide => 'Ton côté';

  @override
  String get newMatchTutorMode => 'Mode tuteur';

  @override
  String get newMatchTutorDescription =>
      'Apprends avec des indices, des explications et des commentaires sur la partie';

  @override
  String get newMatchTutoringOptions => 'Options de tutorat';

  @override
  String get newMatchTutoringOptionsDescription =>
      'Pour cette partie ; modifiable en cours de jeu';

  @override
  String get setupMatchLength => 'Longueur du match';

  @override
  String get setupDifficulty => 'Difficulté';

  @override
  String get setupDifficultyEasy => 'Facile';

  @override
  String get setupDifficultyMedium => 'Moyenne';

  @override
  String get setupDifficultyHard => 'Difficile';

  @override
  String get setupDifficultyExpert => 'Expert';

  @override
  String get setupPlayWithoutCube => 'Jouer sans videau';

  @override
  String get setupNoCubeThisMatch => 'Pas de videau pour ce match';

  @override
  String get analysisTitle => 'Analyse';

  @override
  String get gameMatchSummary => 'Résumé du match';

  @override
  String get gameAnalyzeGame => 'Analyser la partie';

  @override
  String get analysisMetricsTooltip => 'Que signifient ces chiffres ?';

  @override
  String analysisError(Object error) {
    return 'Échec de l’analyse de la partie : $error';
  }

  @override
  String get analysisNoPositions =>
      'Aucune position à afficher dans cette partie.';

  @override
  String get analysisInProgress => 'Analyse de la partie…';

  @override
  String analysisPercent(int percent) {
    return '$percent %';
  }

  @override
  String get analysisPlayed => 'Joué';

  @override
  String get analysisBest => 'Meilleur';

  @override
  String get analysisPrevious => 'Précédent';

  @override
  String get analysisNext => 'Suivant';

  @override
  String get analysisPositionBeforeCube =>
      'Position avant la décision du videau';

  @override
  String get analysisPositionAtPoint => 'Position à ce moment de la partie';

  @override
  String get analysisShowingBestBefore =>
      'Meilleur coup affiché dans la position précédant le coup';

  @override
  String get analysisShowingBefore => 'Position avant le coup affichée';

  @override
  String analysisVerdictLine(Object side, Object verdict, Object loss) {
    return '$side : $verdict$loss';
  }

  @override
  String analysisMoveLoss(Object loss) {
    return ' −$loss';
  }

  @override
  String get analysisExcludedFromAverages => ' · exclu des moyennes';

  @override
  String get analysisNoPlay => '(aucun coup)';

  @override
  String analysisBestMoveLine(Object move) {
    return 'Meilleur coup : $move';
  }

  @override
  String get analysisExplain => 'Expliquer';

  @override
  String get analysisSaveForPractice => 'Enregistrer pour s’exercer';

  @override
  String get analysisSaveError =>
      'Impossible d’enregistrer cette décision. Réessaie.';

  @override
  String analysisCubeInfo(
    Object side,
    Object action,
    Object mark,
    Object loss,
  ) {
    return '$side : $action · $mark · perte $loss';
  }

  @override
  String get analysisCubeDecision => 'Décision sur le videau';

  @override
  String analysisCubePlayed(Object action, Object percent) {
    return 'Joué : $action (chance de gagner le match : $percent %).';
  }

  @override
  String analysisCubeBest(Object action, Object percent) {
    return 'Meilleur : $action (chance de gagner le match : $percent %).';
  }

  @override
  String get analysisCubeEstimate =>
      'Estimation à 0 pli du point de vue du joueur au trait. Suppose une réponse optimale de prise ou de passe. Utilise une approximation de durée de vie du videau de 0,7 sur la branche où le double est pris, sans rechercher tous les futurs redoubles. Une analyse plus approfondie peut changer le résultat.';

  @override
  String get analysisClose => 'Fermer';

  @override
  String get analysisMoves => 'Coups';

  @override
  String get analysisForced => 'Forcé';

  @override
  String get analysisMarkBest => 'Meilleur';

  @override
  String get analysisMarkGood => 'Bon';

  @override
  String get analysisMarkDubious => 'Douteux';

  @override
  String get analysisMarkError => 'Erreur';

  @override
  String get analysisMarkBlunder => 'Gaffe';

  @override
  String analysisSummaryMeanLoss(Object loss) {
    return 'Perte moyenne $loss';
  }

  @override
  String analysisSummaryCheckerDecisions(int count) {
    return '$count décisions de pions';
  }

  @override
  String analysisSummaryBlunders(int count) {
    return 'Gaffes $count';
  }

  @override
  String analysisSummaryCubeLoss(Object loss) {
    return 'Perte au videau $loss';
  }

  @override
  String analysisRollWithoutDoubling(Object side) {
    return '$side lance sans doubler';
  }

  @override
  String get metricExplainerTitle => 'Comprendre les indicateurs';

  @override
  String get metricExplainerTooltip => 'Que signifient ces chiffres ?';

  @override
  String get metricExplainerMwcTitle => 'Chance de gagner le match (MWC)';

  @override
  String get metricExplainerMwcBody =>
      'Lorsque le score est connu, les coups sont classés selon leur chance estimée de gagner le match. La perte est exprimée en points de pourcentage (pp) : 1 pp fait passer de 51 % à 50 %. La mise actuelle du videau et les gammons/backgammons sont pris en compte. Les passes forcées et les lancers avec une seule position légale sont exclus des moyennes.';

  @override
  String get metricExplainerSearchTitle => 'Recherche et incertitude';

  @override
  String get metricExplainerSearchBody =>
      'Le classement des coups est une estimation statique à 0 pli après le coup, pas une simulation. Les valeurs de match utilisent une table d’équité sans futurs tours de videau. Les évaluations du videau utilisent une approximation partielle de durée de vie de 0,7 après une prise. Ce n’est pas une recherche complète avec videau. Les scores avec plus de 25 points de retard utilisent la limite de 25 de la table. Une analyse plus profonde peut modifier les résultats serrés ; aucun intervalle de confiance n’est calibré.';

  @override
  String get metricExplainerEquityTitle => 'Équité';

  @override
  String get metricExplainerEquityBody =>
      'Si le score est indisponible, l’équité sans videau indique la valeur moyenne d’une position, avec le videau à 1. +1,0 signifie un point attendu ; −0,5, une perte moyenne d’un demi-point.';

  @override
  String get metricExplainerEquityLossTitle => 'Perte d’équité (ex. −0,016)';

  @override
  String get metricExplainerEquityLossBody =>
      'Pour chaque coup, nous comparons ton choix au meilleur coup du moteur. La perte d’équité mesure la valeur attendue abandonnée. −0,016 signifie que le coup n’était que de 0,016 point inférieur au meilleur — un petit écart. 0,000 signifie que tu as trouvé le meilleur coup.';

  @override
  String get metricExplainerErrorRateTitle => 'Taux d’erreur';

  @override
  String get metricExplainerErrorRateBody =>
      'La perte moyenne regroupe tes décisions de pions évaluées dans l’unité affichée. Les décisions de videau ont leur propre moyenne. Un score plus bas se rapproche des meilleures estimations de ce moteur ; ce n’est pas une note de joueur calibrée.';

  @override
  String get metricExplainerMoveMarksTitle => 'Évaluation des coups';

  @override
  String get metricExplainerMoveMarksBody =>
      'Seuils pédagogiques MWC : Meilleur < 0,05 pp, Bon < 0,5 pp, Douteux < 1,5 pp, Erreur < 3 pp, Gaffe ≥ 3 pp. Ces seuils sont propres au produit, pas une mesure calibrée ni une note de tournoi.\n\nSeuils pédagogiques d’équité sans videau :';

  @override
  String get metricExplainerThresholdBest => 'perte < 0,001';

  @override
  String get metricExplainerThresholdGood => 'perte < 0,020';

  @override
  String get metricExplainerThresholdDubious => 'perte < 0,050';

  @override
  String get metricExplainerThresholdError => 'perte < 0,110';

  @override
  String get metricExplainerThresholdBlunder => 'perte ≥ 0,110';

  @override
  String get metricExplainerGotIt => 'Compris';

  @override
  String get historyTitle => 'Historique des matchs';

  @override
  String historyLoadFailed(Object error) {
    return 'Impossible de charger l’historique :\n$error';
  }

  @override
  String get historyEmpty => 'Aucun match joué pour le moment.';

  @override
  String get historyDeleteConfirmTitle => 'Supprimer ce match ?';

  @override
  String historyDeleteConfirmBody(Object scoreLine) {
    return '$scoreLine\n\nLe match et toutes les parties qu’il contient seront supprimés définitivement. Cette action est irréversible.';
  }

  @override
  String get actionCancel => 'Annuler';

  @override
  String get actionDelete => 'Supprimer';

  @override
  String get historyDeleteFailed => 'Impossible de supprimer ce match.';

  @override
  String get historyComplete => 'Terminé';

  @override
  String historyWinner(Object side) {
    return '$side a gagné';
  }

  @override
  String get historyUnfinished => 'Inachevé';

  @override
  String get historyMatchTitle => 'Match';

  @override
  String historyMatchLoadFailed(Object error) {
    return 'Impossible de charger le match :\n$error';
  }

  @override
  String historyGamesLoadFailed(Object error) {
    return 'Impossible de charger les parties :\n$error';
  }

  @override
  String get historyNoGames => 'Aucune partie enregistrée pour le moment.';

  @override
  String historyGameTitle(int number) {
    return 'Partie $number';
  }

  @override
  String get historyCrawford => 'Crawford';

  @override
  String historyScoreLine(int whiteScore, int blackScore, int matchLength) {
    return 'Blancs $whiteScore — $blackScore Noirs (en $matchLength)';
  }

  @override
  String get historyModeComputer => 'contre l’ordinateur';

  @override
  String get historyModeTwoPlayers => 'Deux joueurs';

  @override
  String get historyModeOnline => 'En ligne';

  @override
  String get historyModeNearby => 'Jouer à proximité';

  @override
  String get historyModeBuddy => 'Buddy';

  @override
  String get historyGameInProgress => 'En cours';

  @override
  String historyGameResult(Object side, int points, Object outcome) {
    return '$side gagne $points ($outcome)';
  }

  @override
  String get historyOutcomeSingle => 'simple';

  @override
  String get historyOutcomeGammon => 'gammon';

  @override
  String get historyOutcomeBackgammon => 'backgammon';

  @override
  String get learningRefreshTooltip => 'Actualiser la progression';

  @override
  String get learningOptions => 'Options d’apprentissage';

  @override
  String get learningResetMenu => 'Réinitialiser la progression des exercices';

  @override
  String get learningLoadFailed => 'Impossible de charger la progression.';

  @override
  String get actionRetry => 'Réessayer';

  @override
  String get learningHeading => 'Apprends de tes décisions';

  @override
  String get learningIntro =>
      'Ta progression reste sur cet appareil. Repère les thèmes récurrents, puis rejoue les positions enregistrées sans voir la réponse. Les Blancs et les Noirs peuvent être étudiés séparément.';

  @override
  String get learningBothSides => 'Les deux côtés';

  @override
  String get learningHumansOnly => 'Décisions humaines uniquement';

  @override
  String get learningHumanOnlyHelp =>
      'Désactive pour inclure les décisions de l’ordinateur et des adversaires à distance';

  @override
  String learningDecisionSummary(int decisions, int mistakes, int blunders) {
    return '$decisions décisions · $mistakes à améliorer · $blunders gaffes';
  }

  @override
  String learningAverageLoss(int decisions, Object loss) {
    return 'Perte moyenne ($decisions décisions) : $loss';
  }

  @override
  String get learningForcedDisclaimer =>
      'Les coups forcés sont exclus. Ce sont des estimations du moteur, pas une note de tournoi.';

  @override
  String learningGamesNeedingAnalysis(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Les # parties enregistrées doivent être analysées ou réanalysées.',
      one: 'La partie enregistrée doit être analysée ou réanalysée.',
    );
    return '$_temp0';
  }

  @override
  String get learningAnalyseSavedGames => 'Analyser les parties enregistrées';

  @override
  String get learningEmptyProfile =>
      'Joue et termine une partie pour créer ton profil d’apprentissage. Tu peux aussi enregistrer des décisions depuis la relecture.';

  @override
  String get learningOpenHistory => 'Ouvrir l’historique';

  @override
  String get learningRecurringThemes => 'Thèmes récurrents';

  @override
  String get learningNoThemes =>
      'Aucun thème d’erreur récurrent dans cette sélection pour le moment.';

  @override
  String learningThemeDecisions(int count) {
    return '$count décisions à revoir. Une position peut relever de plusieurs thèmes.';
  }

  @override
  String get learningSaveMistakes => 'Enregistrer ces erreurs pour s’exercer';

  @override
  String learningSavedMistakes(int count) {
    return '$count décisions dans ta liste d’exercices. Les éléments déjà enregistrés sont conservés.';
  }

  @override
  String get learningSaveMistakesFailed =>
      'Certaines décisions n’ont pas pu être enregistrées. Les enregistrements réussis sont conservés ; réessaie.';

  @override
  String get learningSpacedPractice => 'Entraînement espacé';

  @override
  String learningPracticeCounts(
    int due,
    int saved,
    int attempts,
    int successes,
  ) {
    return '$due à réviser · $saved enregistrées · $attempts tentatives · $successes rappels réussis';
  }

  @override
  String get learningIntervalsHelp =>
      'Les révisions dues réussies reviennent après 1, 3, 7, 14 et 30 jours. Les erreurs ou réponses révélées reviennent après 10 minutes. Les répétitions anticipées ne changent pas l’intervalle.';

  @override
  String get learningAnswerContext =>
      'Les résultats reflètent tes réponses ici, même si la position d’origine appartenait à un adversaire.';

  @override
  String get learningNoSavedPositions =>
      'Enregistre une décision depuis la relecture ou utilise le bouton des erreurs ci-dessus.';

  @override
  String learningPositionTitle(Object side, int gameId) {
    return 'Décision de $side · partie $gameId';
  }

  @override
  String learningReviewDue(Object date) {
    return 'À réviser le $date';
  }

  @override
  String get learningReadyToReview => 'Prêt à réviser';

  @override
  String learningSuccessStreak(int count) {
    return '$count révisions dues réussies';
  }

  @override
  String get learningRemoveTooltip => 'Retirer la décision enregistrée';

  @override
  String get learningRecentPractice => 'Exercices récents';

  @override
  String get learningAnswerRevealed => 'Réponse révélée';

  @override
  String get learningSuccessfulRecall => 'Rappel réussi';

  @override
  String get learningTryAgain => 'Réessayer cette décision';

  @override
  String learningAttemptSubtitle(Object date, int positionId) {
    return '$date · position enregistrée $positionId';
  }

  @override
  String get learningRemoveTitle => 'Supprimer cet exercice ?';

  @override
  String get learningRemoveBody =>
      'Cela supprime ses tentatives. La partie d’origine reste dans l’historique.';

  @override
  String get actionRemove => 'Retirer';

  @override
  String get learningRemoveFailed => 'Impossible de supprimer cet exercice.';

  @override
  String get learningResetTitle =>
      'Réinitialiser la progression des exercices ?';

  @override
  String get learningResetBody =>
      'Toutes les tentatives et les intervalles seront supprimés. Les exercices enregistrés et l’historique restent ; tous les exercices seront dus immédiatement.';

  @override
  String get learningResetAction => 'Réinitialiser la progression';

  @override
  String get learningResetFailed =>
      'Impossible de réinitialiser la progression.';

  @override
  String learningAnalysisProgress(int completed, int failed) {
    return '$completed parties analysées · $failed indisponibles.';
  }

  @override
  String learningAnalysisComplete(int completed) {
    return '$completed parties analysées.';
  }

  @override
  String learningAnalysisCompleteWithErrors(int completed, int failed) {
    return '$completed parties analysées ; $failed n’ont pas pu l’être. Réessaie quand le moteur sera prêt.';
  }

  @override
  String get learningThemeHitting => 'Attaque et tempo';

  @override
  String get learningThemeSafety => 'Pions isolés et sécurité';

  @override
  String get learningThemePointMaking => 'Construire des points';

  @override
  String get learningThemePrime => 'Primes et barrages';

  @override
  String get learningThemeAnchor => 'Ancres et échappée';

  @override
  String get learningThemeRace => 'Efficacité de course';

  @override
  String get learningThemeBearOff => 'Sortie des pions';

  @override
  String get learningThemeBarEntry => 'Entrée depuis la barre';

  @override
  String get learningThemeCube => 'Décisions sur le videau';

  @override
  String get analysisCubeNoDouble => 'Pas de double';

  @override
  String get analysisCubeDouble => 'Doubler';

  @override
  String get analysisCubeTake => 'Prendre';

  @override
  String get analysisCubePass => 'Passer';

  @override
  String get learningAnalysisStarting => 'Analyse des parties enregistrées…';

  @override
  String get tutorCubelessEstimateScope =>
      'Estimation sans cube à 0 pli · score indisponible';

  @override
  String get tutorLossPp => 'Perte en pp';

  @override
  String get tutorLoss => 'Perte';

  @override
  String get scoreSheetNoMoves => 'Aucun coup pour le moment';

  @override
  String get tutorOptions => 'Options de tutorat';

  @override
  String get tutorCollapseTooltip => 'Réduire le tuteur';

  @override
  String get tutorExpandTooltip => 'Développer le tuteur';

  @override
  String get onlineTitle => 'Jouer en ligne';

  @override
  String get onlineUnassistedNote =>
      'Les parties en ligne ne sont pas accompagnées par le tuteur. Analyse tes coups et entraîne-toi après la partie.';

  @override
  String get onlineNotConfiguredTitle =>
      'Le jeu en ligne n’est pas configuré dans cette version';

  @override
  String get onlineNotConfiguredBody =>
      'Cette version ne dispose pas de backend Firebase ; création et accès aux matchs sont indisponibles.';

  @override
  String get onlineErrorNoMatch =>
      'Aucun match ne correspond à ce code. Vérifie-le et réessaie.';

  @override
  String get onlineErrorSeatTaken =>
      'Ce match n’est plus ouvert : la place a été prise.';

  @override
  String get onlineErrorPermission => 'Tu n’as pas accès à ce match.';

  @override
  String get onlineErrorGeneric => 'Une erreur s’est produite. Réessaie.';

  @override
  String get onlineMatchFinished =>
      'Ce match est terminé ; il n’y a plus rien à reprendre.';

  @override
  String get onlineEnterCodeError => 'Saisis un code de match.';

  @override
  String get onlineOpponentShort => 'Adversaire';

  @override
  String get onlineMatchInProgress => 'Match en cours';

  @override
  String onlineResumePrompt(Object code) {
    return 'Tu jouais le match $code.';
  }

  @override
  String get onlineRejoin => 'Reprendre';

  @override
  String get onlineForgetMatch => 'Oublier ce match';

  @override
  String get onlineCreateTitle => 'Créer un match';

  @override
  String get onlineMatchLength => 'Longueur du match';

  @override
  String get onlineNoCubeTitle => 'Jouer sans videau';

  @override
  String get onlineNoCubeSubtitle => 'Pas de videau pour ce match';

  @override
  String get onlineCreate => 'Créer';

  @override
  String get onlineWaitingOpponent => 'En attente d’un adversaire…';

  @override
  String get onlineShareCode => 'Partager ce code';

  @override
  String get onlineCopyCode => 'Copier le code';

  @override
  String get onlineCodeCopied => 'Code copié';

  @override
  String get onlineJoinTitle => 'Rejoindre un match';

  @override
  String get onlineRoomCode => 'Code du match';

  @override
  String get onlineJoin => 'Rejoindre';

  @override
  String get lanTitle => 'Jouer à proximité';

  @override
  String get lanTabHost => 'Héberger';

  @override
  String get lanTabJoin => 'Rejoindre';

  @override
  String get lanUnassistedNote =>
      'Les parties locales ne sont pas accompagnées par le tuteur. Analyse tes coups et entraîne-toi après la partie.';

  @override
  String get lanGameStartFailed =>
      'Impossible de démarrer la partie. L’autre appareil peut réessayer de rejoindre.';

  @override
  String get lanHostPortInUse =>
      'Hébergement impossible : le port est déjà utilisé. Ferme toute autre instance de Backgammon Buddy et réessaie.';

  @override
  String get lanHostStartFailed =>
      'Impossible d’héberger. Vérifie ta connexion Wi-Fi et réessaie.';

  @override
  String get lanHostTitle => 'Héberger une partie';

  @override
  String get lanStartHosting => 'Démarrer l’hébergement';

  @override
  String get lanHostHelp =>
      'Les deux appareils doivent être sur le même Wi-Fi. Celui-ci lance les dés et tient le score.';

  @override
  String get lanWaitingPlayerTitle => 'En attente d’un joueur';

  @override
  String get lanRoomCodeInfo =>
      'Donne ce code à l’autre joueur. Il lui permet d’entrer ; l’application ne l’envoie jamais sur le réseau.';

  @override
  String get lanWaitingPlayer => 'En attente d’un joueur…';

  @override
  String get lanStopHosting => 'Arrêter l’hébergement';

  @override
  String lanFindNearbyPort(int port) {
    return 'Demande à l’autre appareil de chercher des parties proches. Écoute sur le port $port.';
  }

  @override
  String get lanOnNetwork => 'Sur ce réseau';

  @override
  String get lanCopyAddress => 'Copier l’adresse';

  @override
  String get lanAddressCopied => 'Adresse copiée';

  @override
  String get lanScanHostTitle => 'Scanner l’hôte';

  @override
  String get lanScanHostHelp =>
      'L’autre appareil affiche un QR code sur son écran d’hôte. Le scanner renseigne l’adresse et le code de la salle.';

  @override
  String get lanScanQr => 'Scanner le QR code';

  @override
  String get lanScannerUnavailable =>
      'Caméra ou autorisation indisponible. Saisis plutôt l’adresse et le code de salle ci-dessous.';

  @override
  String get lanInvalidQr =>
      'Ce QR code ne correspond pas à Backgammon Buddy. Scanne celui affiché sur l’écran d’hôte de l’autre appareil.';

  @override
  String get lanScannerFailed =>
      'Impossible d’ouvrir le scanner. Saisis l’adresse et le code ci-dessous.';

  @override
  String get lanNearbyGames => 'Parties à proximité';

  @override
  String get lanSearching => 'Recherche de parties à proximité…';

  @override
  String get lanNoGamesFound =>
      'Aucune partie trouvée. Vérifie que l’autre appareil héberge une partie et que les deux sont sur le même Wi-Fi, ou saisis son adresse.';

  @override
  String get lanStillSearching => 'Recherche en cours…';

  @override
  String get lanEnterAddress => 'Saisir une adresse';

  @override
  String get lanEnterAddressHelp =>
      'La découverte automatique ne fonctionne pas sur tous les réseaux et peut être entièrement bloquée sur iOS. L’écran d’hôte indique quoi saisir.';

  @override
  String get lanIpAddress => 'Adresse IP';

  @override
  String get lanPort => 'Port';

  @override
  String get lanInvalidPort => 'Saisis un port entre 1 et 65535.';

  @override
  String get lanEnterAddressError =>
      'Saisis l’adresse affichée sur l’autre appareil.';

  @override
  String get lanEnterRoomCodeError =>
      'Saisis le code à 4 chiffres de l’autre appareil.';

  @override
  String get lanJoinWrongCode =>
      'Code de salle incorrect. Vérifie les quatre chiffres.';

  @override
  String get lanJoinVersionMismatch =>
      'L’autre appareil utilise une version différente de Backgammon Buddy.';

  @override
  String get lanJoinHandshakeFailed =>
      'Cet appareil ne répond pas comme Backgammon Buddy. Vérifie l’adresse et le port.';

  @override
  String get lanJoinFailed =>
      'Impossible de rejoindre. Vérifie l’adresse et le code, puis réessaie.';

  @override
  String lanJoinTarget(Object name) {
    return 'Rejoindre $name';
  }

  @override
  String get lanJoinTargetHelp =>
      'Saisis le code à 4 chiffres affiché sur l’autre appareil.';

  @override
  String lanJoiningTarget(Object name) {
    return 'Connexion à $name';
  }

  @override
  String get lanConnect => 'Se connecter';

  @override
  String get lanBack => 'Retour';

  @override
  String get lanTryAgain => 'Réessayer';

  @override
  String get lanStatusBusy => 'Salle occupée — en attente…';

  @override
  String get lanStatusReconnecting => 'Connexion perdue — nouvelle tentative…';

  @override
  String get lanStatusConnected => 'Connecté — démarrage du match…';

  @override
  String get lanStatusFailed => 'Impossible de rejoindre.';

  @override
  String get lanStatusConnecting => 'Connexion…';

  @override
  String get diagnosticsCopySuccess => 'Diagnostics copiés';

  @override
  String get diagnosticsReviewTitle => 'Vérifier le rapport de diagnostic';

  @override
  String get diagnosticsPrivacyNotice =>
      'L’ouverture du brouillon enverra à GitHub les informations ci-dessous : version de l’application, plateforme et détails de l’erreur. Aucun problème public ne sera publié avant l’envoi. Si ces informations sont privées, annule et copie le rapport pour le préparer toi-même.';

  @override
  String get diagnosticsCancel => 'Annuler';

  @override
  String get diagnosticsOpenGitHub => 'Ouvrir GitHub';

  @override
  String get diagnosticsTitle => 'Diagnostics';

  @override
  String get diagnosticsReportTooltip => 'Signaler un problème sur GitHub';

  @override
  String get diagnosticsCopyTooltip => 'Copier dans le presse-papiers';

  @override
  String get diagnosticsClearTooltip => 'Effacer le journal';

  @override
  String get diagnosticsEmpty =>
      'Aucune erreur enregistrée.\n\nEn cas de problème, il sera consigné ici. Reviens copier les détails dans un rapport.';

  @override
  String gameHudNeutralScore(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore–$blackScore $blackLabel · en $matchLength';
  }

  @override
  String gameHudPlayerScore(
    Object you,
    int mine,
    int theirs,
    Object opponent,
    int matchLength,
  ) {
    return '$you $mine–$theirs $opponent · en $matchLength';
  }

  @override
  String get gameHudYou => 'Toi';

  @override
  String get gameHudAi => 'IA';

  @override
  String gameHudGameNumber(int number) {
    return 'Partie $number';
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
    return '$whiteLabel contre $blackLabel · $pipsLabel $whitePips–$blackPips';
  }

  @override
  String gameHudOpponentDetail(
    Object opponent,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'contre $opponent · $pipsLabel $mine–$theirs';
  }

  @override
  String gameHudOpponentDetailWithLevel(
    Object opponent,
    Object level,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'contre $opponent · $level · $pipsLabel $mine–$theirs';
  }

  @override
  String get gameHudPips => 'Pips';

  @override
  String get gameHudCrawford => 'Crawford';

  @override
  String get gameHudDouble => 'Doubler';

  @override
  String get gameHudMoreActions => 'Autres actions';

  @override
  String get gameHudSurrender => 'Abandonner…';

  @override
  String get gameHudThinking => 'Réflexion';

  @override
  String get gameHudDoubleBeforeRoll =>
      'Tu ne peux doubler qu’avant de lancer les dés, à ton tour.';

  @override
  String get gameHudNoDoubleCrawford =>
      'Pas de double pendant la partie de Crawford : elle décide le match.';

  @override
  String get gameHudOnlyCubeOwner =>
      'Seul le propriétaire du videau peut doubler ; il appartient à l’autre côté.';

  @override
  String get gameHudDoubleUnavailable =>
      'Le double est indisponible pour le moment.';

  @override
  String gameDialogScoreLine(
    Object whiteLabel,
    int whiteScore,
    int blackScore,
    Object blackLabel,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore — $blackScore $blackLabel (en $matchLength)';
  }

  @override
  String gameDialogPlayerWon(Object winner, Object points) {
    return '$winner gagne cette partie ($points).';
  }

  @override
  String gameDialogPlayerWonGammon(Object winner, Object points) {
    return '$winner gagne cette partie ($points, gammon).';
  }

  @override
  String gameDialogPlayerWonBackgammon(Object winner, Object points) {
    return '$winner gagne cette partie ($points, backgammon).';
  }

  @override
  String gameDialogPlayerWonDrop(Object winner, Object points, Object loser) {
    return '$winner gagne cette partie ($points) — $loser a refusé le double.';
  }

  @override
  String gameDialogPlayerWonResignation(
    Object winner,
    Object points,
    Object loser,
  ) {
    return '$winner gagne cette partie ($points) — $loser a abandonné.';
  }

  @override
  String get gameDialogPassDeviceTitle => 'Passer l’appareil';

  @override
  String gameDialogPlayersTurn(Object name) {
    return 'Au tour de $name';
  }

  @override
  String get gameDialogTapToContinue => 'Appuie pour continuer';

  @override
  String get gameDialogCubeOfferedTitle => 'Double proposé';

  @override
  String gameDialogCubeOfferMessage(
    Object doubler,
    int value,
    Object tutorLine,
  ) {
    return '$doubler propose un double à $value. Prendre ou passer ?$tutorLine';
  }

  @override
  String get gameDialogPass => 'Passer';

  @override
  String get gameDialogTake => 'Prendre';

  @override
  String get gameDialogResignationTitle => 'Abandon proposé';

  @override
  String gameDialogResignationMessage(Object resigner, Object value) {
    return '$resigner propose d’abandonner pour $value. Accepter ou refuser ?';
  }

  @override
  String get gameDialogResignSingle => 'partie simple';

  @override
  String get gameDialogResignGammon => 'gammon';

  @override
  String get gameDialogResignBackgammon => 'backgammon';

  @override
  String get gameDialogDecline => 'Refuser';

  @override
  String get gameDialogAccept => 'Accepter';

  @override
  String get gameDialogGameOverTitle => 'Partie terminée';

  @override
  String get gameDialogNextGame => 'Partie suivante';

  @override
  String get gameDialogMatchOverTitle => 'Match terminé';

  @override
  String get gameDialogNobody => 'Personne';

  @override
  String gameDialogMatchWinner(Object winner) {
    return '$winner gagne le match.';
  }

  @override
  String get gameDialogSavedToHistory => 'Enregistré dans l’historique';

  @override
  String get gameDialogDone => 'Terminé';

  @override
  String get gameTapNoLegalMove =>
      'Ce pion ne peut pas jouer avec les dés restants';

  @override
  String get gameTapNoLegalMoveUndo =>
      'Ce pion ne peut pas jouer avec les dés restants — essaie Annuler';

  @override
  String get gameDragHint =>
      'Conseil : fais glisser les pions ou touche-les — modifie ce réglage dans les paramètres';

  @override
  String get commonGotIt => 'Compris';

  @override
  String get gameHintStageBeforeHint =>
      'Joue d’abord un coup légal complet, puis demande un indice.';

  @override
  String get surrenderTitle => 'Abandonner';

  @override
  String surrenderNamedConcedes(String player) {
    return '$player abandonne la partie en cours.';
  }

  @override
  String get surrenderConcedes => 'Abandonne la partie en cours.';

  @override
  String surrenderAvailableAtNamedTurn(String player) {
    return 'Disponible au début du tour de $player';
  }

  @override
  String get surrenderAvailableAtYourTurn => 'Disponible au début de ton tour';

  @override
  String get commonCancel => 'Annuler';

  @override
  String get surrenderSingle => 'Simple (1)';

  @override
  String get surrenderGammon => 'Gammon (2)';

  @override
  String get surrenderBackgammon => 'Backgammon (3)';

  @override
  String get surrenderChoosePlayer => 'Qui abandonne cette partie ?';

  @override
  String get commonDone => 'Terminé';

  @override
  String get cubeDouble => 'Doubler';

  @override
  String get cubeBlockedOtherPlayersTurn => 'C’est au tour de l’autre joueur.';

  @override
  String get cubeBlockedCrawford =>
      'Le videau est désactivé pendant une partie de Crawford.';

  @override
  String get cubeBlockedOwnedByOther =>
      'Seul le propriétaire du videau peut doubler ; il appartient actuellement à l’autre côté.';

  @override
  String get cubeBlockedUnavailable =>
      'Le double n’est pas disponible pour le moment.';

  @override
  String get gameStatusRolling => 'Lancement des dés…';

  @override
  String get gameStatusThinking => 'Réflexion…';

  @override
  String gameStatusPlayersTurn(String player) {
    return 'Au tour de $player';
  }

  @override
  String get cubeAdviceOpponentTake => 'Doubler — l’adversaire devrait prendre';

  @override
  String get cubeAdviceOpponentPass => 'Doubler — l’adversaire devrait passer';

  @override
  String gameErrorBannerLabel(Object error) {
    return 'Erreur : $error';
  }

  @override
  String get privacyTitle => 'Confidentialité et données';

  @override
  String get privacyAppTitle => 'Backgammon Buddy par Freevia';

  @override
  String get privacyIntro =>
      'Cette page décrit la façon dont la version actuelle de l’application traite tes données.';

  @override
  String get privacyLocalTitle => 'Parties et tutorat sur ton appareil';

  @override
  String get privacyLocalBody =>
      'Les parties locales, les réglages, les analyses et la progression de l’entraînement sont enregistrés sur cet appareil. Le moteur de backgammon et les explications du tuteur s’exécutent ici. Supprime une partie enregistrée dans l’archive des parties pour supprimer aussi les exercices et tentatives d’entraînement associés. Supprime des exercices ou réinitialise la progression dans Apprentissage ; efface les rapports d’erreur locaux dans Réglages → Diagnostics. Les paramètres de sauvegarde de ton appareil peuvent aussi s’appliquer à l’historique des parties. Les identifiants de connexion en ligne sont conservés dans l’espace de stockage protégé de l’appareil.';

  @override
  String get privacyOnlineTitle => 'Jeu en ligne et à proximité';

  @override
  String get privacyOnlineBody =>
      'Le jeu en ligne envoie à Google Firebase un identifiant de joueur anonyme, les paramètres de la partie, les coups et les enregistrements de synchronisation des dés afin que les deux joueurs disputent la même partie. Supprimer l’historique de cet appareil ne supprime pas les données en ligne. Les parties hébergées expirent 30 jours après leur création ; un nettoyage planifié supprime leurs journaux dans le cloud. Les données des parties sont stockées dans l’UE ; Firebase Authentication traite les données de connexion aux États-Unis. Les connexions à Google sont chiffrées pendant le transfert. Le jeu à proximité échange des informations de partie avec l’autre appareil par une connexion locale non chiffrée ; utilise un réseau Wi-Fi de confiance.';

  @override
  String get privacyDiagnosticsTitle =>
      'Diagnostics facultatifs d’utilisation et de plantage';

  @override
  String get privacyDiagnosticsBody =>
      'Le partage est désactivé tant que tu ne l’actives pas dans Réglages. Si tu l’actives, Google Firebase reçoit des événements d’utilisation, des informations sur l’application et l’appareil, des mesures de performance et des rapports de plantage pour contribuer à l’amélioration de l’application. Tu peux désactiver le partage à tout moment pour arrêter toute nouvelle collecte facultative. Cela n’efface pas les données déjà envoyées. Les diagnostics locaux et les parties en ligne fonctionnent indépendamment de ce choix.';

  @override
  String get privacyCameraTitle => 'Caméra pour les codes QR à proximité';

  @override
  String get privacyCameraBody =>
      'La caméra facultative scanne les codes QR des parties à proximité. Les images sont traitées sur ton appareil ; elles ne sont ni enregistrées ni envoyées. Tu peux refuser l’accès à la caméra et saisir manuellement l’adresse de l’hôte. Cette version n’utilise pas le microphone et ne permet pas de jouer sur un plateau physique.';

  @override
  String get privacyFeedbackTitle => 'Commentaires que tu choisis d’envoyer';

  @override
  String get privacyFeedbackBody =>
      'Les commentaires ouvrent un brouillon de ticket GitHub que tu peux vérifier. Son ouverture transmet à GitHub la version de l’application et la plateforme ; les commentaires envoyés depuis Diagnostics peuvent aussi transmettre des détails sur l’erreur. Aucun ticket n’est publié avant que tu l’envoies. Les tickets peuvent être publics ; retire donc les informations privées avant l’envoi.';

  @override
  String get privacyContactTitle => 'Contact confidentialité';

  @override
  String get privacyReadPolicy => 'Lire la politique de confidentialité';

  @override
  String get privacyPolicyOpenFailed =>
      'Impossible d’ouvrir la politique de confidentialité.';

  @override
  String get privacySupportTitle => 'Aide et assistance';

  @override
  String get privacySupportOpenFailed =>
      'Impossible d’ouvrir l’assistance. Contacte support@freevia.org.';

  @override
  String get privacyDeleteConfirmTitle =>
      'Supprimer l’identité et les données en ligne ?';

  @override
  String get privacyDeleteConfirmBody =>
      'Cette action met immédiatement fin à l’accès des deux joueurs aux parties dans le cloud de cette identité et demande la suppression de l’identité et des journaux partagés des parties en ligne sous 30 jours. Google peut prendre jusqu’à 180 jours après la suppression du compte pour retirer les données Authentication de ses systèmes actifs et de sauvegarde. L’historique local et l’entraînement restent sur cet appareil. Les diagnostics facultatifs déjà envoyés sont distincts ; contacte privacy@freevia.org à leur sujet. Cette demande est irréversible.';

  @override
  String get privacyRequestDeletion => 'Demander la suppression';

  @override
  String get privacyDeleteSectionTitle => 'Supprimer les données en ligne';

  @override
  String get privacyDeleteInstructions =>
      'Utilise la connexion enregistrée sur cet appareil pour vérifier que le compte t’appartient. Un identifiant de joueur ou un code d’invitation ne suffit pas à prouver que tu en es propriétaire. Les joueurs qui jouent uniquement en local n’ont pas besoin de compte en ligne.';

  @override
  String get privacySendingRequest => 'Envoi de la demande…';

  @override
  String get privacyDeleteAction =>
      'Supprimer l’identité et les données en ligne';

  @override
  String get privacyDeleteRequested =>
      'La suppression a été demandée. Cette identité en ligne est déconnectée. Ses données dans le cloud seront supprimées sous 30 jours. Si tu recommences à jouer en ligne, une nouvelle identité sera créée. Google peut prendre jusqu’à 180 jours pour supprimer les données Authentication. Pour obtenir de l’aide, contacte privacy@freevia.org.';

  @override
  String get privacyDeleteRequestedSignOutFailed =>
      'La suppression a été demandée. Les données dans le cloud seront supprimées sous 30 jours. L’appareil n’a pas pu effacer la connexion enregistrée, mais l’identité en ligne est bloquée et ne peut plus accéder aux parties. Google peut prendre jusqu’à 180 jours pour supprimer les données Authentication. Pour obtenir de l’aide, contacte privacy@freevia.org.';

  @override
  String get privacyDeleteNoIdentity =>
      'Aucune identité en ligne utilisable n’est enregistrée sur cet appareil. Aucun compte n’a été créé. Si tu as déjà joué en ligne, contacte privacy@freevia.org pour obtenir de l’aide ; les parties hébergées expirent après 30 jours.';

  @override
  String get privacyDeleteRequestFailed =>
      'Impossible de confirmer la demande de suppression. Vérifie ta connexion et réessaie, ou contacte privacy@freevia.org.';

  @override
  String get privacyConsentTitle =>
      'Partager les données d’utilisation et de plantage ?';

  @override
  String get privacyConsentBody =>
      'Cela envoie à Google Firebase des événements d’utilisation, des informations sur l’application et l’appareil, des rapports de plantage et des mesures de performance. Le partage est facultatif. Les parties et le tutorat fonctionnent sans lui ; tu peux le désactiver à nouveau dans Réglages.';

  @override
  String get privacyKeepOff => 'Laisser désactivé';

  @override
  String get privacyShareDiagnostics => 'Partager les diagnostics';

  @override
  String get privacySaveFailed =>
      'Impossible d’enregistrer le choix de confidentialité. Réessaie.';

  @override
  String get privacySettingsSubtitle =>
      'Ce qui reste sur ton appareil et ce qui est partagé';

  @override
  String get privacyDiagnosticsSettingTitle =>
      'Partager les diagnostics d’utilisation et de plantage';

  @override
  String get privacyDiagnosticsSettingSubtitle =>
      'Facultatif · désactivé par défaut';

  @override
  String get lanScanToJoin => 'Scanner pour rejoindre';

  @override
  String get lanScanHostCode => 'Scanner le code de l’hôte';

  @override
  String get lanEnterAddressInstead => 'Saisir l’adresse à la place';

  @override
  String get lanQrAccessibilityLabel => 'Code QR pour rejoindre cette partie';

  @override
  String get lanJoinInstruction =>
      'Sur l’autre appareil, ouvre Jeu à proximité, choisis Rejoindre, puis scanne ce code QR.';

  @override
  String get lanTorch => 'Lampe torche';

  @override
  String get lanCameraPermissionDenied =>
      'Backgammon Buddy ne peut pas utiliser l’appareil photo. Autorise l’accès dans les réglages de l’appareil ou saisis manuellement l’adresse affichée sur l’autre appareil.';

  @override
  String get lanCameraUnsupported =>
      'Cet appareil ne peut pas scanner les codes QR. Saisis manuellement l’adresse affichée sur l’autre appareil.';

  @override
  String get lanCameraStartFailed =>
      'Impossible de démarrer l’appareil photo. Saisis manuellement l’adresse affichée sur l’autre appareil.';

  @override
  String get lanPointCameraAtQr =>
      'Pointe l’appareil photo vers le code QR sur l’autre appareil.';

  @override
  String get physicalBuddyUnavailableTitle => 'Backgammon Buddy';

  @override
  String get physicalBuddyUnavailableBody =>
      'Le jeu sur un plateau physique n’est pas disponible dans cette version. Les parties à l’écran, le tutorat et l’entraînement sont accessibles depuis l’accueil.';

  @override
  String get homePlayWithBuddy => 'Jouer avec Buddy';

  @override
  String get homeBuddyShort => 'Buddy';

  @override
  String boardSemanticsLabel(Object status) {
    return 'Plateau de backgammon. $status';
  }

  @override
  String get boardWhiteToRoll => 'Aux blancs de lancer les dés.';

  @override
  String get boardBlackToRoll => 'Aux noirs de lancer les dés.';

  @override
  String boardWhiteToMove(Object die1, Object die2) {
    return 'Aux blancs de jouer ; lance $die1 et $die2.';
  }

  @override
  String boardBlackToMove(Object die1, Object die2) {
    return 'Aux noirs de jouer ; lance $die1 et $die2.';
  }

  @override
  String get boardDoubleOffered => 'Un double est proposé.';

  @override
  String get boardResignationOffered => 'Une partie abandonnée est proposée.';

  @override
  String get boardGameOver => 'La partie est terminée.';

  @override
  String feedbackBugTitle(Object version, Object platform) {
    return '[Bug] : Backgammon Buddy $version ($platform)';
  }

  @override
  String get feedbackIdeaTitle => '[Idée] : Backgammon Buddy';

  @override
  String get feedbackBugSummary =>
      'Remplace ce texte par une brève description de ce qui s’est passé.';

  @override
  String get feedbackBugReproduction =>
      'Remplace ce texte par les étapes qui ont mené au problème.';

  @override
  String get feedbackBugExpected =>
      'Remplace ce texte par le résultat auquel tu t’attendais.';

  @override
  String get feedbackIdeaNeed =>
      'Remplace ce texte par ce que tu voulais faire ou apprendre.';

  @override
  String get feedbackIdeaSuggestion =>
      'Remplace ce texte par le changement qui te serait utile.';

  @override
  String get feedbackExcerptTruncated =>
      '(extrait tronqué — utilise « Copier dans le presse-papiers » sur l’écran Diagnostics pour obtenir le journal complet)';

  @override
  String get boardWhiteToMoveNoRoll => 'Aux blancs de jouer.';

  @override
  String get boardBlackToMoveNoRoll => 'Aux noirs de jouer.';

  @override
  String get feedbackFieldVersion => 'Version de l’application';

  @override
  String get feedbackFieldPlatform => 'Plateforme';

  @override
  String get feedbackFieldSummary => 'Que s’est-il passé ?';

  @override
  String get feedbackFieldReproduction => 'Étapes pour reproduire le problème';

  @override
  String get feedbackFieldExpected => 'Résultat attendu';

  @override
  String get feedbackFieldNeed => 'Ce que tu voulais faire';

  @override
  String get feedbackFieldIdea => 'Modification suggérée';

  @override
  String get buddySetupTitle => 'Jouez avec Buddy';

  @override
  String get buddySetupSideLabel => 'Buddy joue';

  @override
  String get buddySetupSeatLabel => 'Votre siège';

  @override
  String get buddySetupSeatNear => 'Par téléphone';

  @override
  String get buddySetupSeatFar => 'Opposé';

  @override
  String get buddySetupSeatHelp =>
      'De quel côté du tableau vous vous trouvez. C\'est ainsi que Buddy numérote les points et comment il indique votre dé d\'ouverture à partir du sien.';

  @override
  String get buddySetupVoiceLabel => 'Comment Buddy parle';

  @override
  String get buddySetupVoiceTerse => 'Laconique';

  @override
  String get buddySetupVoiceFriendly => 'Amical';

  @override
  String get buddySetupVoiceTerseHelp =>
      '« 13/8, 24/22 » — notation, la façon dont deux joueurs sur un échiquier parlent réellement.';

  @override
  String get buddySetupVoiceFriendlyHelp =>
      '\"Déplacez un pion du 13 au 8 et un autre du 24 au 22.\"';

  @override
  String get buddySetupTutorHelp =>
      'Les commentaires du tuteur et les explications des mouvements suivent vos préférences de tuteur enregistrées dans Paramètres. Buddy donne des commentaires occasionnels après vos parties ; les dés tapés et les mouvements manuels fonctionnent de la même manière.';

  @override
  String get buddySetupCalibrate => 'Calibrer la carte';

  @override
  String get buddyFixAim => 'Fixer l\'objectif';

  @override
  String get buddyWaitingForOpening =>
      'Buddy attend le lancer qui lance le match.';

  @override
  String get buddyPromptLostBoard =>
      'Buddy a perdu le tableau. Fixez le but et le match continue là où il s\'est arrêté.';

  @override
  String get buddyPromptWaitingPicture =>
      'En attente d\'une image que Buddy peut lire. Rien n\'est perdu.';

  @override
  String get buddyPromptTypeDice =>
      'Buddy ne trouve pas les dés. Tapez plutôt le rouleau.';

  @override
  String get buddyPromptPlay =>
      'Faites votre jeu sur le plateau. Appuyez-le ici si Buddy ne le voit pas.';

  @override
  String get buddyPromptWhichPlay => 'De quelle pièce s\'agissait-il ?';

  @override
  String get buddyPromptCube => 'Buddy double. Vous prenez ou vous passez ?';

  @override
  String get buddyPromptMakeMove =>
      'Faites le mouvement de Buddy sur le plateau, puis Buddy continuera.';

  @override
  String get buddyPromptThinking => 'Buddy réfléchit.';

  @override
  String get buddyPromptWaitingCalibration => 'En attente d\'un calibrage.';

  @override
  String get buddyPromptMirrorNoDetail =>
      'Buddy ne voit toujours pas son mouvement. Le tableau ci-dessous est la position qu’il occupe.';

  @override
  String get buddyPromptNotLegal => 'Ce n’est pas un jeu légal.';

  @override
  String buddyPromptNotLegalReason(String reason) {
    return 'Ce n’est pas un jeu légal. $reason';
  }

  @override
  String get buddyThrowOpening =>
      'Lancez les dés d’ouverture — un dé chacun. Le résultat le plus élevé détermine qui commence.';

  @override
  String get buddyThrowUser => 'Lancez vos dés.';

  @override
  String get buddyThrowBuddy => 'Lancez les dés de Buddy.';

  @override
  String get buddyMatchOver => 'Le match est terminé.';

  @override
  String get buddyYouWin => 'Vous gagnez le match.';

  @override
  String get buddyBuddyWins => 'Buddy remporte le match.';

  @override
  String get buddyDoubleNoGame =>
      'Il n’y a pas encore de jeu à doubler – le lancer d’ouverture vient en premier.';

  @override
  String get buddyDoubleBeforeRoll =>
      'Vous ne pouvez doubler qu\'avant de lancer, à votre tour.';

  @override
  String get buddyDoubleCrawford =>
      'Pas de double dans le jeu Crawford – ce jeu unique décide du match.';

  @override
  String get buddyDoubleNotOwner =>
      'Seul le propriétaire du cube peut doubler, et l\'autre côté en est actuellement propriétaire.';

  @override
  String get buddyDoubleUnavailable =>
      'Le doublement n’est pas disponible pour le moment.';

  @override
  String get buddyLookingAtBoard => 'Buddy regarde le tableau.';

  @override
  String get buddyCameraPlayFallback =>
      'Vous pouvez toujours jouer le match : tapez chaque lancer sur le tapis de dés et appuyez sur votre jeu sur le tableau ci-dessous.';

  @override
  String get buddySkipCheck => 'Ignorer cette vérification';

  @override
  String get buddyFixedIt => 'je l\'ai réparé';

  @override
  String get buddyDrop => 'Baisse';

  @override
  String get buddyTake => 'Prendre';

  @override
  String get buddyDone => 'Fait';

  @override
  String get buddyTranscriptLabel => 'Ce que Buddy a dit';

  @override
  String get buddyUndo => 'Défaire';

  @override
  String get buddyConfirm => 'Confirmer';

  @override
  String get buddyDice => 'Dés';

  @override
  String get buddyDouble => 'Double';

  @override
  String get buddyDicePadTitle => 'Quel résultat avez-vous obtenu ?';

  @override
  String get buddyEnterRoll => 'Entrez le rouleau';

  @override
  String get buddyContextBeforeGame => 'Jouez avec Buddy';

  @override
  String buddyContextMatchScore(
    String you,
    String buddy,
    String length,
    String number,
  ) {
    return 'Vous $you–$buddy Buddy · à $length · Jeu $number';
  }

  @override
  String get buddyCameraUnavailable =>
      'La caméra n\'a pas pu démarrer. Vérifiez les autorisations et réessayez.';

  @override
  String get buddyCameraPermission =>
      'Backgammon Buddy n\'a ​​pas la permission d\'utiliser la caméra. Autorisez l\'accès à la caméra dans les paramètres de votre appareil et réessayez.';

  @override
  String get buddyCalibrationTitle => 'Montrer le tableau à Buddy';

  @override
  String get buddyCalibrationCornersFold =>
      'Faites glisser les quatre poignées extérieures sur les coins du feutre – et non sur le bord en bois – et les quatre petites sur les coutures où la charnière rencontre les bords éloignés et proches.';

  @override
  String get buddyCalibrationCornersFlat =>
      'Faites glisser chaque poignée sur un coin du feutre – la surface de jeu, pas le bord en bois qui l\'entoure.';

  @override
  String get buddyCalibrationCheckLines =>
      'Vérifiez ensuite les douze lignes de chaque moitié : chacune doit longer un point de votre tableau. Une ligne qui manque son objectif est une poignée qui a besoin d’être poussée.';

  @override
  String get buddyCalibrationSeatQuestion =>
      'Quelle moitié est votre tableau d’origine ?';

  @override
  String get buddyCalibrationSeatHelp =>
      'La moitié la plus proche du bas de l’image. C\'est ce qui fixe les numéros de points, de sorte que les lignes ci-dessus se déplacent avec.';

  @override
  String get buddyCalibrationCaptureWait =>
      'Tenez le téléphone immobile. Buddy attend que la situation se stabilise avant d\'apprendre ce tableau.';

  @override
  String get buddyCalibrationConfirmQuestion => 'Est-ce votre tableau ?';

  @override
  String get buddyCalibrationConfirmFallback =>
      'Buddy regarde le tableau qu\'il vient d\'apprendre.';

  @override
  String get buddyCalibrationConfirmHelp =>
      'Les hommes dessinés sur l\'image sont ce que Buddy pense être sur le tableau. Si l’un d’entre eux est au mauvais endroit, recommencez – cela coûte quelques secondes maintenant et une partie plus tard.';

  @override
  String get buddyCalibrationNext => 'Suivant';

  @override
  String get buddyCalibrationBack => 'Dos';

  @override
  String get buddyCalibrationCapture => 'Capturer';

  @override
  String get buddyCalibrationStartOver => 'Recommencer';

  @override
  String get buddyCalibrationLooksRight => 'Ça a l\'air bien';

  @override
  String get buddyCalibrationCornersInvalid =>
      'Ces quatre poignées ne dessinent pas une planche : l’une d’elles en a croisé une autre. Faites-les glisser vers les coins du feutre.';

  @override
  String get buddyCalibrationPrepTitle => 'Trois choses d\'abord';

  @override
  String get buddyCalibrationRemoveDiceTitle => 'Retirez les dés du plateau.';

  @override
  String get buddyCalibrationRemoveDiceBody =>
      'Buddy apprend maintenant le plateau vide. Un dé laissé sur le tapis serait appris comme faisant partie du plateau, et Buddy ne pourrait plus voir les dés pendant cette session.';

  @override
  String get buddyCalibrationSetupCheckersTitle =>
      'Préparez les hommes pour le début d’un match.';

  @override
  String get buddyCalibrationSetupCheckersBody =>
      'Trente pions dans des endroits connus, c\'est ainsi que Buddy apprend les deux couleurs de ce tableau sans qu\'on lui dise ce qu\'elles sont.';

  @override
  String get buddyCalibrationFitBoardTitle =>
      'Ajustez tout le terrain de jeu dans l’image.';

  @override
  String get buddyCalibrationFitBoardBody =>
      'Laissez ensuite le téléphone là où il se trouve. S\'il bouge, Buddy le dira et vous pourrez repousser les coins.';

  @override
  String get buddyCalibrationBoardKind =>
      'De quel type de planche s\'agit-il ?';

  @override
  String get buddyCalibrationFlatBoard => 'Planche plate';

  @override
  String get buddyCalibrationFoldingBoard => 'Étui pliable';

  @override
  String get buddyCalibrationBoardKindHelp =>
      'Une planche pliante a besoin de quatre poignées supplémentaires sur les coutures des charnières.';

  @override
  String get buddyCalibrationNoCameraBody =>
      'Le mode Buddy surveille une vraie carte, elle ne peut donc pas démarrer sans la caméra. Tout le reste de l’application n’est pas affecté.';

  @override
  String buddyHandleHingeSeam(int number) {
    return 'Couture charnière $number de 4';
  }

  @override
  String buddyHandleCorner(int number) {
    return 'Coin de planche $number de 4';
  }

  @override
  String get buddyNudgeLeft => 'Coup de pouce vers la gauche';

  @override
  String get buddyNudgeRight => 'Poussez à droite';

  @override
  String get buddyNudgeUp => 'Poussez vers le haut';

  @override
  String get buddyNudgeDown => 'Poussez vers le bas';

  @override
  String get buddyCalibrationProblemCorners =>
      'Ces quatre coins ne délimitent pas une planche. Faites glisser chaque poignée sur un coin du terrain de jeu et réessayez.';

  @override
  String get buddyCalibrationProblemFoldCorners =>
      'Ces huit points ne constituent pas une planche pliante. Mettez-en quatre sur les coins du terrain de jeu et quatre sur les coutures des charnières, puis réessayez.';

  @override
  String get buddyCalibrationProblemUnreadable =>
      'Je n\'arrive pas à distinguer le tableau lui-même : chaque partie est recouverte, ou perdue dans l\'ombre ou l\'éblouissement. Videz le tableau, ajoutez un peu de lumière et réessayez.';

  @override
  String buddyCalibrationProblemRegionUnreadable(String region) {
    return 'Je n\'arrive pas à distinguer $region – quelque chose repose peut-être dessus, ou ce coin du tableau est peut-être trop sombre pour être lu. Effacez-le ou ajoutez de la lumière et réessayez.';
  }

  @override
  String get buddyCalibrationProblemColours =>
      'Les deux jeux de dames se ressemblent trop vus d’ici. Plus de lumière, ou un angle avec moins d\'éblouissement sur le tableau, règle généralement le problème.';

  @override
  String buddyCalibrationProblemWrongChecker(int number) {
    return 'Les pions ne sont pas dans la position de départ — le point $number a la mauvaise couleur. Préparez le plateau pour le début d’une partie, puis calibrez-le à nouveau.';
  }

  @override
  String get buddyCalibrationProblemOverexposed =>
      'Il y a tellement de lumière sur le tableau que ses couleurs se fondent les unes dans les autres. Baissez la lumière ou déplacez le téléphone pour que la lampe ne lui renvoie pas directement la lumière.';

  @override
  String get buddyCalibrationProblemReadBack =>
      'Je peux lire ce tableau, mais pas comme un jeu sur le point de commencer. Préparez les hommes pour le début d’une partie, puis calibrez à nouveau.';

  @override
  String get buddyCalibrationProblemStacks =>
      'Je peux lire ce tableau, mais je ne peux pas déterminer à quelle distance un pion se trouve derrière un autre à partir d\'ici - donc je me tromperais sur les chiffres. Un peu plus de lumière sur les points proches, ou un angle de caméra légèrement plus élevé, règle généralement le problème.';

  @override
  String get buddyCalibrationProblemNotVisible =>
      'Je ne peux pas voir tout le tableau. Reculez le téléphone ou faites glisser les coins sur le terrain de jeu.';

  @override
  String buddyConfirmBoardOutOfFrame(String region) {
    return 'Je ne peux plus voir l\'ensemble du tableau – $region est en dehors de l\'image. Alignez à nouveau la caméra ou revérifiez les coins.';
  }

  @override
  String get buddyConfirmStartingPosition =>
      'Cela ressemble à la position de départ.';

  @override
  String get buddyConfirmNoCheckers =>
      'Je ne vois pas de pion partout où le jeu commence. Préparez les hommes pour le début d’un match et réessayez.';

  @override
  String buddyConfirmWrongPosition(String details, String more) {
    return 'Le plateau n\'est pas configuré pour le début d\'une partie : $details$more.';
  }

  @override
  String buddyConfirmRegionEmpty(String region, String side) {
    return '$region semble vide, mais le jeu commence ici avec $side';
  }

  @override
  String buddyConfirmRegionUnexpected(String region, String side) {
    return '$region contient $side, mais le jeu commence avec celui-ci vide';
  }

  @override
  String buddyConfirmRegionWrongSide(
    String region,
    String observed,
    String expected,
  ) {
    return '$region contient $observed, où le jeu commence par $expected';
  }

  @override
  String get buddyReadabilityMotion =>
      'Attendez un instant – je perds le tableau pendant que le téléphone bouge.';

  @override
  String get buddyReadabilityWrongFrame =>
      'L\'image qu\'on me donne n\'est pas celle sur laquelle ce tableau a été installé, je ne peux donc rien y aligner. Réinstallez le tableau à partir d’ici.';

  @override
  String get buddyReadabilityBlur =>
      'L\'image est trop molle pour lire le tableau. Donnez à l\'appareil photo un moment pour faire la mise au point.';

  @override
  String get buddyReadabilityCalibrationStale =>
      'Le tableau n\'est pas là où il était lorsque je l\'ai appris. Alignez à nouveau les coins et je reprendrai le jeu directement.';

  @override
  String get buddyReadabilityOccluded =>
      'Quelque chose recouvre une partie du tableau. Je continuerai dès que ce sera clair.';

  @override
  String get buddyReadabilityClear => 'Je peux voir le tableau.';

  @override
  String get buddyReadabilityColorChanged =>
      'La lumière sur le tableau a changé de couleur, le tableau ne ressemble donc plus à celui que j\'ai appris. Alignez à nouveau les coins sous cette lumière et je reprendrai le jeu directement.';

  @override
  String get buddyReadabilityTooDark =>
      'Il fait trop sombre pour lire le tableau. Un peu plus de lumière et je continue là où nous en étions.';

  @override
  String get buddyReadabilityTooBright =>
      'Il y a tellement de lumière sur le tableau que ses couleurs se croisent. Baissez-le ou déplacez le téléphone pour que la lampe ne brille pas directement vers lui.';

  @override
  String buddyPromptBeliefMirror(String reason) {
    return 'Buddy ne peut toujours pas voir son mouvement – ​​$reason.';
  }

  @override
  String buddyCameraUnavailablePlay(String cameraMessage) {
    return '$cameraMessage\n\nVous pouvez toujours jouer le match : tapez chaque lancer sur le tapis de dés et appuyez sur votre jeu sur le tableau ci-dessous.';
  }

  @override
  String get buddyCameraGenericError =>
      'La caméra n\'a pas pu démarrer. Vérifiez les autorisations et réessayez.';

  @override
  String buddyRegionPoint(int number) {
    return 'le point $number';
  }

  @override
  String get buddyRegionBar => 'le bar';

  @override
  String get buddyRegionWhiteTray => 'Le plateau d\'ours de White';

  @override
  String get buddyRegionBlackTray => 'Le plateau d\'ours de Black';

  @override
  String get buddyRegionDiceZone => 'le milieu du plateau';

  @override
  String get buddyCalibrationProblemVisible =>
      'Je ne peux pas voir tout le tableau. Reculez le téléphone ou faites glisser les coins sur le terrain de jeu.';

  @override
  String buddyConfirmMore(int number) {
    return '(et $number plus)';
  }

  @override
  String get buddyDiceOpeningCaption =>
      'Un dé chacun. Le résultat le plus élevé détermine qui commence.';

  @override
  String get buddyDiceOpeningFirst => 'Dé des Blancs';

  @override
  String get buddyDiceOpeningSecond => 'Dé des Noirs';

  @override
  String get buddyDiceRegularCaption =>
      'Les deux visages sur la table, dans n\'importe quel ordre.';

  @override
  String get buddyDiceRegularFirst => 'Un dé';

  @override
  String get buddyDiceRegularSecond => 'L\'autre';

  @override
  String get evaluationEngine => 'Moteur d’évaluation';

  @override
  String get parallelEngineAnalysis => 'Analyser avec les deux moteurs';

  @override
  String get parallelEngineExplanation =>
      'Comparez les conseils distincts de wildbg et GNUbg dans le tuteur.';

  @override
  String get engineComparison => 'Comparaison des moteurs';

  @override
  String get engineWinChance => 'Chance de victoire';
}
