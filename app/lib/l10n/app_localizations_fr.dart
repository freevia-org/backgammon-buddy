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
  String get tutorMoveExplanations => 'Explications des coups';

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
}
