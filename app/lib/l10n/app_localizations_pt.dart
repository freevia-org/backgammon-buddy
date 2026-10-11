// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get homeTagline => 'Melhore seu jogo com um tutor';

  @override
  String get settings => 'Configurações';

  @override
  String get playVsComputer => 'Jogar contra o computador';

  @override
  String get twoPlayers => 'Dois jogadores';

  @override
  String get playNearby => 'Jogar nas proximidades';

  @override
  String get playOnline => 'Jogar online';

  @override
  String get learningPractice => 'Aprender e praticar';

  @override
  String get gamesArchive => 'Arquivo de partidas';

  @override
  String get followSystem => 'Seguir o idioma do dispositivo';

  @override
  String get white => 'Brancas';

  @override
  String get black => 'Pretas';

  @override
  String get random => 'Aleatório';

  @override
  String get startMatch => 'Iniciar partida';

  @override
  String get tutor => 'Tutor';

  @override
  String get noMovesPass => 'Sem jogadas — passar';

  @override
  String get undo => 'Desfazer';

  @override
  String get confirm => 'Confirmar';

  @override
  String get roll => 'Rolar';

  @override
  String get hint => 'Dica';

  @override
  String get tutoringStyle => 'Estilo de tutoria';

  @override
  String get tutorStyleCoach => 'Treinador';

  @override
  String get tutorStyleHintsOnly => 'Só dicas';

  @override
  String get tutorStyleTryFirst => 'Tente primeiro';

  @override
  String get tutorCoachDescription =>
      'Sugestões sobre a posição, comentários sobre as jogadas, dicas e conselhos sobre o dado de dobrar.';

  @override
  String get tutorHintsDescription =>
      'Jogadas classificadas quando solicitado. As sugestões em tempo real sobre a posição e os comentários automáticos sobre as jogadas ficam desativados.';

  @override
  String get tutorTryFirstDescription =>
      'Experimente a sua jogada antes de ver a classificação ou a avaliação; as sugestões sobre a posição continuam ativadas.';

  @override
  String get tutorCustomDescription =>
      'Combinação personalizada. Ajuste as opções abaixo como preferir.';

  @override
  String get tutorBestMoveHints => 'Dicas para a melhor jogada';

  @override
  String get tutorRevealRankedPlays =>
      'Mostrar as jogadas classificadas enquanto decide';

  @override
  String get tutorMoveExplanations => 'Explicações das jogadas';

  @override
  String get tutorCompareEstimates =>
      'Compare estimativas e alterações no tabuleiro';

  @override
  String get tutorGameCommentary => 'Comentários sobre a partida';

  @override
  String get tutorPositionPrompts =>
      'Sugestões sobre a posição e comentários após cada jogada';

  @override
  String get tutorCubeAdvice => 'Conselhos sobre o dado de dobrar';

  @override
  String get tutorMatchAwareCubeAdvice =>
      'Sugestões para dobrar, aceitar ou passar, tendo em conta o resultado da partida';

  @override
  String get tutorTryMoveFirst => 'Experimente primeiro uma jogada';

  @override
  String get tutorStageBeforeHints =>
      'Experimente a sua jogada antes de mostrar as dicas ou a avaliação';

  @override
  String get tutorStaticEstimateNote =>
      'Estimativa estática rápida (0-ply, sem simulações); as notas descrevem alterações no tabuleiro e respostas possíveis, não garantem o que vai acontecer.';

  @override
  String get tutorWhatToWatchNext => 'O que observar a seguir';

  @override
  String get tutorMoreBoardDetails => 'Mais detalhes sobre o tabuleiro';

  @override
  String get tutorEstimatesAndHowTheyWork => 'As estimativas e como funcionam';

  @override
  String get tutorEstimateLimitations =>
      'Profundidade: avaliação neural estática após cada jogada legal (0-ply), sem simulações nem pesquisa de respostas futuras. O MWC, que tem em conta o resultado, pondera as estimativas com base no resultado da partida e no dado atual; não modela futuras decisões sobre o dado. Se o resultado não estiver disponível, a equity sem dado corresponde aos pontos esperados com o dado no valor 1. As observações sobre o tabuleiro descrevem a jogada, não o raciocínio interno da rede neural. Resultados próximos não significam certeza; não existe um intervalo de confiança calibrado.';

  @override
  String get tutorPointNumberNote =>
      'Os números dos pontos nas notas de aprendizagem são contados a partir do campo interno do jogador que está a jogar.';

  @override
  String get tutorHittingRollNote =>
      'A contagem de lançamentos que permitem bater inclui os 36 resultados ordenados dos dados e as batidas legais diretas ou indiretas; são oportunidades, não uma previsão da escolha do adversário.';

  @override
  String get tutorNoEvaluatedAlternatives =>
      'Não há alternativas avaliadas disponíveis para esta jogada.';

  @override
  String get tutorForcedPassNoDecision =>
      'Uma passagem forçada não implica uma decisão sobre o movimento das peças.';
}
