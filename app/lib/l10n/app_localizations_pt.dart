// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Backgammon Buddy';

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

  @override
  String get settingsReset => 'Repor';

  @override
  String get settingsAppLanguage => 'Idioma da aplicação';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get settingsThemeSystem => 'Sistema';

  @override
  String get settingsThemeLight => 'Claro';

  @override
  String get settingsThemeDark => 'Escuro';

  @override
  String get settingsAnimationSpeed => 'Velocidade da animação';

  @override
  String get settingsAnimationNone => 'Nenhuma';

  @override
  String get settingsAnimationNormal => 'Normal';

  @override
  String get settingsAnimationFast => 'Rápida';

  @override
  String get settingsDiceRollAnimation => 'Animação do lançamento dos dados';

  @override
  String get settingsDiceRollAnimationHelp =>
      'Agite os dados antes de cada lançamento';

  @override
  String get settingsDefaultMatchLength => 'Duração predefinida da partida';

  @override
  String get settingsDefaultDifficulty => 'Dificuldade predefinida';

  @override
  String get settingsDifficultyEasy => 'Fácil';

  @override
  String get settingsDifficultyMedium => 'Média';

  @override
  String get settingsDifficultyHard => 'Difícil';

  @override
  String get settingsDifficultyExpert => 'Especialista';

  @override
  String get settingsTutorModeDefault => 'Modo de tutor predefinido';

  @override
  String get settingsTutorAuto => 'Automático';

  @override
  String get settingsTutorOn => 'Ativado';

  @override
  String get settingsTutorOff => 'Desativado';

  @override
  String get settingsTutorModeHelp =>
      'Automático ativa o tutor em qualquer nível do computador. Ativado e Desativado definem a opção inicial para partidas locais. As partidas próximas e online não têm assistência; pode rever as partidas guardadas mais tarde. As preferências de aprendizagem abaixo são guardadas neste dispositivo.';

  @override
  String get settingsTutorPreferences => 'Preferências do tutor';

  @override
  String get settingsTutorPreferencesSubtitle =>
      'Predefinições para futuras partidas';

  @override
  String get settingsTutorSaveError =>
      'Não foi possível guardar as preferências do tutor.';

  @override
  String get settingsGameplay => 'Jogo';

  @override
  String get settingsMoveHighlights => 'Realce das jogadas';

  @override
  String get settingsMoveHighlightsHelp =>
      'Circunda as peças que pode selecionar e ilumina os destinos possíveis';

  @override
  String get settingsDragToMove => 'Arrastar para mover';

  @override
  String get settingsDragToMoveHelp =>
      'Arraste uma peça até ao destino (os toques também funcionam)';

  @override
  String get settingsCombinedMoves => 'Jogadas combinadas';

  @override
  String get settingsCombinedMovesHelp =>
      'Com um toque, uma peça percorre os valores dos dois dados';

  @override
  String get settingsRotateBoard => 'Rodar o tabuleiro entre turnos';

  @override
  String get settingsRotateBoardHelp =>
      'Jogo por turnos no mesmo dispositivo: vira a vista para o jogador ativo';

  @override
  String get settingsPassDevice => 'Ecrã para passar o dispositivo';

  @override
  String get settingsPassDeviceHelp =>
      'Oculte o tabuleiro entre turnos no jogo por turnos no mesmo dispositivo';

  @override
  String get settingsShowScore => 'Mostrar pontuação';

  @override
  String get settingsShowScoreHelp =>
      'Mostra a pontuação atual da partida no cabeçalho';

  @override
  String get settingsBuddyMode => 'Estilo do Buddy';

  @override
  String get settingsBuddyTerse => 'Sucinto';

  @override
  String get settingsBuddyFriendly => 'Amigável';

  @override
  String get settingsBuddyTerseHelp =>
      'Como o Buddy diz uma jogada em voz alta: «13/8, 24/22» — a notação usada pelos jogadores ao tabuleiro.';

  @override
  String get settingsBuddyFriendlyHelp =>
      'Como o Buddy diz uma jogada em voz alta: «Move uma peça de 13 para 8 e outra de 24 para 22.»';

  @override
  String get settingsListenForDice => 'Ouvir os dados';

  @override
  String get settingsListenForDiceHelp =>
      'O Buddy observa o tabuleiro mais cedo quando ouve um lançamento. Desativar esta opção não altera mais nada.';

  @override
  String get settingsDiagnostics => 'Diagnóstico';

  @override
  String get settingsErrorLog => 'Registo de erros';

  @override
  String get settingsErrorLogHelp =>
      'Erros recentes, prontos a copiar para uma comunicação de erro';

  @override
  String get settingsReportBug => 'Comunicar um erro';

  @override
  String get settingsReportBugHelp => 'Abre um formulário orientado no GitHub';

  @override
  String get settingsSuggestIdea => 'Sugerir uma ideia';

  @override
  String get settingsSuggestIdeaHelp => 'Ajude-nos a melhorar o tutor e o jogo';

  @override
  String get settingsAbout => 'Sobre';

  @override
  String get settingsOpenSourceLicenses => 'Licenças de código aberto';

  @override
  String settingsAppVersion(Object version) {
    return 'Backgammon Buddy $version';
  }

  @override
  String get tutorPhraseGameFinished => 'Partida terminada.';

  @override
  String get tutorPhraseReviewFinishedGame =>
      'Reveja as jogadas para encontrar uma decisão que possa treinar.';

  @override
  String get tutorPhraseCubeOffered => 'Foi proposto o cubo de dobragem.';

  @override
  String get tutorPhraseCubeDecisionPrompt =>
      'Decida se aceita a dobragem ou passa antes de planear uma jogada com as peças.';

  @override
  String get tutorPhraseCubeScoreContext =>
      'A pontuação da partida altera o valor da aposta adicional.';

  @override
  String get tutorPhraseResignationOffered => 'Foi proposta a desistência.';

  @override
  String get tutorPhraseResignationDecisionPrompt =>
      'Compare os pontos oferecidos com a posição antes de aceitar ou continuar.';

  @override
  String get tutorPhraseNoLegalPlay =>
      'Não há jogada legal com este lançamento.';

  @override
  String get tutorPhraseForcedPassPrompt =>
      'Passar por obrigação não é um erro; aguarde pelo próximo lançamento.';

  @override
  String get tutorPhraseOnlyOneResult => 'Só existe uma posição final legal.';

  @override
  String get tutorPhraseForcedTurnPrompt =>
      'Faça a jogada obrigatória. Este lançamento não permite escolher entre jogadas.';

  @override
  String get tutorPhrasePipCountsLevel =>
      'As contagens de pips estão empatadas.';

  @override
  String tutorPhrasePipCountsAhead(int count) {
    return 'Está $count pips à frente.';
  }

  @override
  String tutorPhrasePipCountsBehind(int count) {
    return 'Está $count pips atrás.';
  }

  @override
  String tutorPhrasePlayerHasCheckersOnBar(int count) {
    return 'Tem $count peças na barra: primeiro, tem de as reentrar.';
  }

  @override
  String get tutorPhraseEnterBeforeMoving =>
      'Reentre as peças da barra antes de mover outras; depois procure uma casa segura para aterrar.';

  @override
  String tutorPhraseOpponentHomePoints(int count) {
    return 'O adversário tem $count casas fechadas no seu tabuleiro interno.';
  }

  @override
  String get tutorPhraseBearOffRace => 'Corrida para retirar as peças.';

  @override
  String get tutorPhrasePureRace => 'Uma corrida pura.';

  @override
  String get tutorPhraseBearOffSpread =>
      'Retire peças do tabuleiro sem perder uma distribuição útil para o próximo lançamento.';

  @override
  String get tutorPhraseBringRearCheckersHome =>
      'Traga as peças mais atrasadas para casa sem acumular demasiadas numa só casa.';

  @override
  String get tutorPhraseArmiesHavePassed =>
      'As peças já se cruzaram; não é possível fazer mais capturas.';

  @override
  String tutorPhraseContactStillMatters(Object part) {
    return '$part Ainda há contacto.';
  }

  @override
  String tutorPhraseOpponentHasCheckersOnBar(int count) {
    return 'O adversário tem $count peças na barra.';
  }

  @override
  String get tutorPhraseKeepBoardClosed =>
      'Mantenha as casas fechadas enquanto traz as restantes peças para casa.';

  @override
  String get tutorPhraseBuildOrPreserveHomeBoard =>
      'Construa ou mantenha fechado o seu tabuleiro interno enquanto o adversário tenta reentrar.';

  @override
  String tutorPhraseHomePointsCloseEntries(int count) {
    return 'Tem $count pontos fechados no tabuleiro interno; cada um bloqueia um número de entrada.';
  }

  @override
  String tutorPhrasePrimeContact(int count) {
    return 'Contacto com uma sequência de $count casas consecutivas.';
  }

  @override
  String get tutorPhraseExtendPrimeOrKeepSpares =>
      'Compare prolongar a sequência com guardar peças de reserva para a manter.';

  @override
  String tutorPhraseSpareCheckersCanMove(int count) {
    return 'Pode mover $count peças de reserva sem abrir imediatamente a respetiva casa.';
  }

  @override
  String tutorPhraseAnchorContact(Object points) {
    return 'Contacto com um ponto de ancoragem em $points.';
  }

  @override
  String get tutorPhraseCompareAnchorProgressAhead =>
      'Compare o avanço das peças atrasadas com a segurança de manter o seu ponto de ancoragem.';

  @override
  String get tutorPhraseCompareAnchorProgressBehind =>
      'Tenha em conta o ponto seguro enquanto procura uma captura ou melhora o tabuleiro.';

  @override
  String get tutorPhrasePreserveAnchorFoothold =>
      'O ponto de ancoragem não pode ser capturado, mas essas peças ainda têm um longo caminho até casa.';

  @override
  String get tutorPhraseContactThreats =>
      'Ainda há contacto: ambos os lados podem ameaçar capturas.';

  @override
  String get tutorPhraseLookForPointsAndSafety =>
      'Procure casas úteis e depois avalie o risco de deixar peças isoladas expostas.';

  @override
  String tutorPhraseHomePointsAndBlots(int count, int otherCount) {
    return 'Tem $count casas no tabuleiro interno e deixa $otherCount peças isoladas expostas.';
  }

  @override
  String get tutorPhraseChooseCheckerPrompt =>
      'Escolha uma peça para iniciar a sua jogada.';

  @override
  String get tutorPhraseLegalPlayPrompt =>
      'Faça uma jogada legal para ver os comentários.';

  @override
  String tutorPhraseStagedHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count peças do adversário',
      one: 'uma peça do adversário',
    );
    return 'Capturou $_temp0.';
  }

  @override
  String tutorPhraseStagedEnter(int count) {
    return 'Reentrou $count peças a partir da barra.';
  }

  @override
  String tutorPhraseStagedBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count peças do tabuleiro',
      one: 'uma peça do tabuleiro',
    );
    return 'Retirou $_temp0.';
  }

  @override
  String tutorPhraseStagedMakePoints(Object points) {
    return 'Fechou $points.';
  }

  @override
  String tutorPhraseStagedBlot(int point) {
    return 'Por agora, a peça na sua casa $point está isolada e exposta.';
  }

  @override
  String tutorPhraseStagedSpare(int point) {
    return 'A peça de reserva na sua casa $point poderá mover-se mais tarde sem abrir a casa.';
  }

  @override
  String tutorPhraseStagedPartialPrompt(Object part) {
    return '$part Use os restantes dados que ainda pode jogar antes de avaliar a jogada completa.';
  }

  @override
  String get tutorPhraseStagedAllCheckersOff =>
      'Já retirou as 15 peças: ganhou a partida.';

  @override
  String get tutorPhraseStagedHitShortPlan =>
      'A captura ganha tempo enquanto o adversário tenta reentrar.';

  @override
  String get tutorPhraseStagedEfficientBearOffPlan =>
      'Retirar peças com eficiência deixa valores úteis para o próximo lançamento.';

  @override
  String get tutorPhraseStagedRaceHomePlan =>
      'Na corrida, traga para casa as peças atrasadas e mantenha casas úteis para as retirar.';

  @override
  String get tutorPhraseStagedBearOffContactPlan =>
      'Retirar peças faz avançar, mas o contacto restante ainda permite capturas.';

  @override
  String get tutorPhraseStagedReentryPlan =>
      'A reentrada põe a peça novamente em jogo; depois, procure uma casa segura para aterrar.';

  @override
  String get tutorPhraseStagedHomeBoardPlan =>
      'A nova casa no tabuleiro interno bloqueia um número de entrada se houver uma captura mais tarde.';

  @override
  String get tutorPhraseStagedPrimePlan =>
      'A sequência mais longa fecha mais casas de aterragem; as peças de reserva ajudam a mantê-la.';

  @override
  String get tutorPhraseStagedLeaveAnchorPlan =>
      'Abandonar o ponto de ancoragem faz avançar, mas perde um apoio seguro.';

  @override
  String get tutorPhraseStagedNewAnchorPlan =>
      'O novo ponto de ancoragem dá às peças atrasadas um apoio seguro.';

  @override
  String get tutorPhraseStagedCoverBlotPlan =>
      'Cobrir uma peça exposta retira um alvo ao adversário.';

  @override
  String get tutorPhraseStagedSafetyTradeoffPlan =>
      'É um equilíbrio entre desenvolvimento e segurança: peças úteis para construir também podem tornar-se alvos.';

  @override
  String tutorPhraseStagedCompletePrompt(Object part) {
    return '$part A jogada completa está preparada; toque em Confirmar para a executar.';
  }

  @override
  String get tutorMoveForcedVerdict =>
      'Este lançamento não permite escolher uma jogada com as peças; não é avaliado como uma decisão.';

  @override
  String get tutorMoveTopVerdict => 'A melhor escolha para esta posição.';

  @override
  String get tutorMoveAlternativeVerdict =>
      'O motor prefere outra jogada nesta posição.';

  @override
  String tutorMoveEstimateDifference(Object loss) {
    return 'Diferença em relação à melhor jogada: $loss.';
  }

  @override
  String tutorMoveEstimateOutcomes(
    Object winPercent,
    Object winGammonPercent,
    Object loseGammonPercent,
  ) {
    return 'Depois desta jogada: $winPercent% de hipóteses estimadas de vitória, $winGammonPercent% de vitória por gamão ou melhor e $loseGammonPercent% de derrota por gamão ou pior. São estimativas do ponto de vista de quem joga.';
  }

  @override
  String tutorMoveEstimateMatchChance(Object percent) {
    return 'Probabilidade estimada de vencer o encontro: $percent%.';
  }

  @override
  String get tutorMovePlanAllCheckersOff =>
      'As 15 peças já saíram do tabuleiro: ganhou a partida.';

  @override
  String tutorMovePlanHit(Object homeBoardAdvice) {
    return 'Use a captura para ganhar tempo enquanto o adversário reentra. $homeBoardAdvice';
  }

  @override
  String get tutorMovePlanHitClosed =>
      'Mantenha fechadas as casas do seu tabuleiro interno para dificultar a reentrada.';

  @override
  String get tutorMovePlanHitBuild =>
      'Feche mais casas no seu tabuleiro interno para tornar mais difícil recuperar de capturas futuras.';

  @override
  String get tutorMovePlanRaceBearOff =>
      'Procure retirar as peças com eficiência: tire-as do tabuleiro e deixe valores úteis para o próximo lançamento.';

  @override
  String get tutorMovePlanRaceHome =>
      'Traga as peças mais atrasadas para casa e distribua-as por casas úteis para as retirar.';

  @override
  String get tutorMovePlanContactBearOff =>
      'Retire peças do jogo, mas vigie as peças atrasadas do adversário: enquanto houver contacto, uma peça isolada durante a saída pode tornar-se um alvo.';

  @override
  String get tutorMovePlanReentry =>
      'Volte ao jogo e procure uma casa segura para a peça que reentrou.';

  @override
  String get tutorMovePlanHomeBoard =>
      'Reforce o seu tabuleiro interno. A nova casa fechada torna uma futura captura mais forte, bloqueando um número de entrada.';

  @override
  String get tutorMovePlanPrime =>
      'Mantenha unida a sequência de casas fechadas. Guarde peças de reserva para que os próximos lançamentos não o obriguem a abri-la.';

  @override
  String get tutorMovePlanLeaveAnchor =>
      'Abandonar uma âncora faz avançar as peças atrasadas, mas perde um apoio seguro. Proteja-as enquanto regressam a casa.';

  @override
  String get tutorMovePlanNewAnchor =>
      'Use a nova âncora como apoio seguro enquanto melhora o resto da posição.';

  @override
  String get tutorMovePlanCoverBlot =>
      'Junte as suas peças. Cobrir uma peça isolada exposta elimina esse alvo e mantém disponíveis casas úteis para as próximas jogadas.';

  @override
  String get tutorMovePlanSafety =>
      'Equilibre desenvolvimento e segurança: aproxime as peças de construção das casas úteis e verifique quais as peças isoladas que podem ser capturadas.';

  @override
  String get tutorMoveObservationNoLegalPlay =>
      'Não há jogada legal com as peças: tem de passar a vez.';

  @override
  String tutorMoveObservationHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count peças do adversário',
      one: 'uma peça do adversário',
    );
    return 'Captura $_temp0; o adversário tem de reentrar as peças da barra antes de mover as restantes.';
  }

  @override
  String tutorMoveObservationEntry(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Reentra $count peças a partir da barra.',
      one: 'Reentra uma peça a partir da barra.',
    );
    return '$_temp0';
  }

  @override
  String tutorMoveObservationBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count peças',
      one: 'uma peça',
    );
    return 'Retira $_temp0 do tabuleiro.';
  }

  @override
  String tutorMoveObservationMadePoints(Object points) {
    return 'Fecha $points. Duas ou mais peças ocupam uma casa segura e impedem o adversário de aterrar nela.';
  }

  @override
  String tutorMoveObservationBrokenPoints(Object pointLabel, Object points) {
    return 'Abre casas que estavam fechadas ($pointLabel): $points. Essas casas deixam de impedir o adversário de aterrar nelas.';
  }

  @override
  String tutorMoveObservationNoBlots(int previousCount) {
    return 'Não deixa peças isoladas expostas (antes: $previousCount). O adversário não tem peças isoladas para capturar.';
  }

  @override
  String tutorMoveObservationBlots(int count, int previousCount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count peças isoladas expostas',
      one: 'uma peça isolada exposta',
    );
    return 'Deixa $_temp0 (antes: $previousCount). Veja se o adversário as consegue alcançar antes de preferir segurança a outro ganho.';
  }

  @override
  String tutorMoveObservationPrimeRun(
    int count,
    int previousCount,
    Object primeAdvice,
  ) {
    return 'Maior sequência de casas fechadas: $count (antes: $previousCount). $primeAdvice';
  }

  @override
  String get tutorMoveObservationPrimeSix =>
      'Uma sequência de seis casas fechadas não pode ser atravessada enquanto se mantiver intacta.';

  @override
  String get tutorMoveObservationPrimeBuild =>
      'Mantenha peças de construção por perto se quiser prolongar ou preservar esta sequência.';

  @override
  String tutorMoveObservationPrimeSpares(int count) {
    return 'Há $count peças de reserva além das duas que mantêm as casas fechadas. Mover uma reserva pode preservar a casa; mover uma das duas últimas abre-a.';
  }

  @override
  String tutorMoveObservationAnchors(Object points, Object previousPoints) {
    return 'Âncoras no tabuleiro interno do adversário: $points (antes: $previousPoints). Manter uma âncora protege essas peças de capturas; abandoná-la troca esse apoio seguro por avanço na corrida.';
  }

  @override
  String get tutorMoveObservationPureRace =>
      'Corrida pura: as peças já se cruzaram e nenhum jogador tem peças na barra. Já não é possível capturar; importa retirar as peças com eficiência.';

  @override
  String get tutorMoveObservationNoReplyHit =>
      'Nesta posição, nenhum lançamento legal seguinte permite ao adversário capturar uma peça sua. Ainda há contacto, por isso jogadas futuras podem criar novas oportunidades de captura.';

  @override
  String tutorMoveObservationReplyHit(
    int count,
    int total,
    int dieOne,
    int dieTwo,
    int point,
  ) {
    return 'O adversário pode capturar em $count de $total lançamentos. Por exemplo, $dieOne–$dieTwo permite uma captura legal na sua casa $point. A captura é possível, mas não é certo que o adversário a escolha.';
  }

  @override
  String tutorMoveObservationOpponentBarHome(
    int closedPoints,
    Object entryAdvice,
  ) {
    return 'Casas fechadas no seu tabuleiro interno: $closedPoints. $entryAdvice';
  }

  @override
  String get tutorMoveObservationAllEntriesClosed =>
      'O adversário não pode reentrar até uma casa ficar aberta.';

  @override
  String get tutorMoveObservationOpenEntry =>
      'Um lançamento que use uma casa de entrada aberta pode trazer uma peça da barra de volta ao jogo.';

  @override
  String tutorMoveComparisonDetail(
    Object factors,
    Object delta,
    Object direction,
    Object scoreContext,
  ) {
    return '$factors A probabilidade estimada de vitória da melhor jogada é $delta pontos percentuais $direction.$scoreContext';
  }

  @override
  String get tutorMoveComparisonHigher => 'mais alta';

  @override
  String get tutorMoveComparisonLower => 'mais baixa';

  @override
  String tutorMoveComparisonScoreContext(Object scoreContext) {
    return ' Ainda pode ficar melhor classificada porque gamões e backgamões têm valores diferentes com o $scoreContext atual.';
  }

  @override
  String get tutorMoveComparisonStake => 'valor da aposta';

  @override
  String get tutorMoveComparisonMatchScore => 'resultado do encontro';

  @override
  String tutorMoveComparisonFactorBar(int bestCount, int playedCount) {
    return 'Peças do adversário na barra com a melhor jogada: $bestCount, em vez de $playedCount. Uma peça na barra tem de reentrar antes de o adversário poder mover as restantes.';
  }

  @override
  String tutorMoveComparisonFactorHomeBoard(
    int bestCount,
    int playedCount,
    Object entryDifference,
  ) {
    return 'Casas fechadas no seu tabuleiro interno com a melhor jogada: $bestCount, em vez de $playedCount na jogada feita. Depois de uma captura, $entryDifference.';
  }

  @override
  String get tutorMoveComparisonClosingMore =>
      'há menos números de entrada disponíveis';

  @override
  String get tutorMoveComparisonLeavingMore =>
      'há mais números de entrada disponíveis';

  @override
  String tutorMoveComparisonFactorShots(
    int bestCount,
    int playedCount,
    Object riskDifference,
  ) {
    return 'A melhor jogada permite uma captura de resposta em $bestCount dos 36 lançamentos, em vez de $playedCount. $riskDifference';
  }

  @override
  String get tutorMoveComparisonReducesRisk =>
      'Isso reduz o risco imediato de voltar à barra.';

  @override
  String get tutorMoveComparisonExtraExposure =>
      'Compare essa exposição adicional com o que a jogada ganha noutros aspetos.';

  @override
  String tutorMoveComparisonFactorPrime(int bestCount, int playedCount) {
    return 'A maior sequência de casas fechadas tem $bestCount pontos com a melhor jogada, em vez de $playedCount. Compare a barreira com as peças disponíveis para a manter intacta.';
  }

  @override
  String tutorMoveComparisonFactorAnchors(
    Object bestPoints,
    Object playedPoints,
  ) {
    return 'Âncoras com a melhor jogada: $bestPoints, em vez de $playedPoints. Manter uma âncora preserva uma casa segura para aterrar; abandoná-la aproxima essas peças de casa.';
  }

  @override
  String tutorMoveComparisonFactorBearOff(int bestCount, int playedCount) {
    return 'Número de peças já retiradas com a melhor jogada: $bestCount, em vez de $playedCount. Cada peça retirada é menos uma para tirar mais tarde.';
  }

  @override
  String get tutorMoveComparisonFactorSimilarRisks =>
      'As duas jogadas deixam o mesmo risco imediato de captura, o mesmo número de casas fechadas no tabuleiro interno e as mesmas âncoras e peças retiradas. Compare as casas de aterragem: o próximo lançamento pode usar essas peças de outra forma.';

  @override
  String get tutorMoveComparisonSummaryBar =>
      'A melhor jogada deixa mais peças do adversário na barra e atrasa as restantes jogadas.';

  @override
  String get tutorMoveComparisonSummaryHomeBoard =>
      'A melhor jogada fecha mais casas no tabuleiro interno, dificultando a reentrada depois de uma captura.';

  @override
  String get tutorMoveComparisonSummaryShots =>
      'A melhor jogada permite menos lançamentos imediatos de captura, reduzindo o risco de voltar à barra.';

  @override
  String get tutorMoveComparisonSummaryPrime =>
      'A melhor jogada mantém uma sequência mais longa de casas fechadas.';

  @override
  String get tutorMoveComparisonSummaryAnchors =>
      'A melhor jogada mantém mais âncoras seguras no tabuleiro interno do adversário.';

  @override
  String get tutorMoveComparisonSummaryBearOff =>
      'A melhor jogada retira mais peças, deixando menos para tirar depois.';

  @override
  String tutorMoveComparisonSummaryBlots(int playedCount, int bestCount) {
    return 'Esta jogada deixa $playedCount peças isoladas expostas; a melhor deixa $bestCount.';
  }

  @override
  String tutorMoveComparisonSummarySafeAnchor(int point) {
    return 'A melhor jogada mantém uma âncora segura na casa $point.';
  }

  @override
  String get tutorMoveComparisonSummaryEntry =>
      'A melhor jogada fecha mais casas de entrada caso uma das suas peças seja capturada.';

  @override
  String get tutorMoveComparisonSummarySimilarRisks =>
      'As jogadas deixam riscos imediatos semelhantes; compare quais as casas de aterragem que continuam úteis no próximo lançamento.';

  @override
  String tutorMoveAssessmentEquityLoss(Object value) {
    return '$value de equidade perdida';
  }

  @override
  String tutorMoveAssessmentMwcLoss(Object value) {
    return '$value pp de probabilidade de vencer o encontro (MWC)';
  }

  @override
  String get tutorMovePointSingular => 'casa';

  @override
  String get tutorMovePointPlural => 'casas';

  @override
  String get tutorMoveNoPoints => 'nenhuma';

  @override
  String get gameTutorCommentaryOff =>
      'Os comentários sobre a partida estão desativados.';

  @override
  String get gameTutorToolsAvailable =>
      'Abra o tutor para aceder às ferramentas ativadas.';

  @override
  String get gameTutorNextRoll => 'Lance os dados novamente.';

  @override
  String get gameTutorNoEvaluatedReview =>
      'Não há uma explicação avaliada disponível para esta jogada guardada.';

  @override
  String get gameTutorAnalysisUnavailable => 'análise indisponível';

  @override
  String get gameTutorReviewing => 'a analisar…';

  @override
  String get gameTutorTryYourPlayFirst => 'Experimente primeiro a sua jogada.';

  @override
  String get gameTutorKeepBuilding => 'Continue a preparar a sua jogada.';

  @override
  String get gameTutorStageCompleteBeforeCoaching =>
      'Prepare uma jogada legal completa antes de revelar comentários ou sugestões.';

  @override
  String get gameTutorReadyToConfirm => 'Pronto para confirmar';

  @override
  String get gameTutorPlayTakingShape => 'A sua jogada está a ganhar forma.';

  @override
  String get gameTutorConfirmOrUndo =>
      'Confirme para jogar ou anule para voltar a pensar.';

  @override
  String get gameTutorFinishDiceOrUndo =>
      'Jogue os dados restantes ou anule para voltar a pensar.';

  @override
  String get gameTutorComputerConsidering =>
      'O computador está a pensar na própria jogada.';

  @override
  String get gameTutorComputerPlayReviewed =>
      'A jogada completa será analisada aqui.';

  @override
  String get gameTutorYourPlay => 'A sua jogada';

  @override
  String get gameTutorComputer => 'Computador';

  @override
  String gameTutorPlayQuality(Object quality) {
    return 'A sua jogada: $quality';
  }

  @override
  String get gameTutorForcedPlay => 'jogada obrigatória';

  @override
  String get gameTutorTopChoice => 'melhor escolha';

  @override
  String get gameTutorSoundPlay => 'boa jogada';

  @override
  String get gameTutorAnotherPlayMayFitBetter =>
      'talvez outra jogada se adapte melhor';

  @override
  String get gameTutorAnotherPlayFitsBetter =>
      'outra jogada adapta-se melhor a esta posição';

  @override
  String get gameTutorStrongerPlayAvailable =>
      'havia uma jogada claramente melhor';

  @override
  String gameTutorPositionEdge(Object side) {
    return '$side tem a vantagem estimada.';
  }

  @override
  String get gameTutorPositionEven =>
      'A posição está aproximadamente equilibrada.';

  @override
  String tutorPlayedMove(Object move) {
    return 'Jogada realizada: $move';
  }

  @override
  String tutorBestMove(Object move) {
    return 'Melhor jogada: $move';
  }

  @override
  String get tutorShowRankedPlays => 'Mostrar jogadas classificadas';

  @override
  String get tutorReviewRecordedMove =>
      'Toque numa jogada concluída no registo para rever aqui a decisão.';

  @override
  String get tutorTopPlays => 'Melhores jogadas';

  @override
  String get tutorNoHintsAvailable => 'Sem sugestões disponíveis.';

  @override
  String get tutorPreviewThenConfirm =>
      'Toque numa jogada para a pré-visualizar no tabuleiro e, em seguida, confirme.';

  @override
  String get tutorTopChoiceForPosition => 'Melhor escolha para esta posição';

  @override
  String get tutorAlternativePlay => 'Jogada alternativa';

  @override
  String get tutorEngineEstimates => 'Estimativas do motor';

  @override
  String get tutorEstimateScope =>
      'Estimativa de 0-ply · pontuação e aposta atuais · sem futuras decisões do cubo';

  @override
  String get tutorEquity => 'Equidade';

  @override
  String get tutorMwcPercent => 'MWC %';

  @override
  String get tutorNearTiesNote =>
      'Uma análise mais profunda pode alterar a ordem entre jogadas quase empatadas.';

  @override
  String get tutorWhyThisPlay => 'Porquê esta jogada?';

  @override
  String get tutorCompareAlternative => 'Comparar esta alternativa';

  @override
  String get gameTutorCubeTake => 'Tutor: aceitar';

  @override
  String get gameTutorCubePass => 'Tutor: passar';

  @override
  String get practiceScreenTitle => 'Pratica uma decisão';

  @override
  String get practiceUnavailable =>
      'Esta posição de treino já não está disponível.';

  @override
  String get practiceSubmitError =>
      'Não foi possível avaliar nem guardar esta tentativa. O teu progresso não foi alterado. Tenta novamente.';

  @override
  String practiceTurnLabel(Object side, Object dice) {
    return 'Vez de $side · $dice';
  }

  @override
  String get practiceHistoricalScoreUnavailable =>
      'Pontuação histórica indisponível; a avaliação usa equity sem cubo.';

  @override
  String practiceScoreLine(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return 'Resultado: $whiteLabel $whiteScore – $blackLabel $blackScore, até $matchLength';
  }

  @override
  String get practiceCrawfordGame => ' · partida Crawford';

  @override
  String get practiceNoDoublingCube => 'Sem cubo de dobragem.';

  @override
  String practiceCubeValue(int value) {
    return 'Cubo $value.';
  }

  @override
  String get practiceHistoricalCubeUnknown =>
      'Regras históricas do cubo desconhecidas.';

  @override
  String get practiceAfterBestPosition => 'Posição após a melhor jogada';

  @override
  String get practiceAfterYourAnswerPosition => 'Posição após a tua resposta';

  @override
  String get practiceFindYourPlayPrompt =>
      'Faz a tua jogada no tabuleiro e verifica a resposta. Não são mostradas dicas.';

  @override
  String get practiceUndo => 'Anular';

  @override
  String get practiceCheckAnswer => 'Verificar resposta';

  @override
  String get practiceRevealNoCredit => 'Revelar resposta (sem crédito)';

  @override
  String get practiceAnswerRevealedNoCredit =>
      'Resposta revelada — sem crédito de recordação.';

  @override
  String practiceGradeLine(Object verdict, Object loss) {
    return '$verdict · $loss';
  }

  @override
  String practiceBestMoveLine(Object move) {
    return 'Melhor: $move';
  }

  @override
  String practiceOriginalGameLine(Object move, Object loss) {
    return 'Partida original: $move · $loss';
  }

  @override
  String practiceYourAnswerLine(Object move) {
    return 'A tua resposta: $move';
  }

  @override
  String get practiceYourAnswerChip => 'A tua resposta';

  @override
  String get practiceBestPlayChip => 'Melhor jogada';

  @override
  String practiceNextReview(Object date) {
    return 'Próxima revisão: $date.';
  }

  @override
  String get practiceRecallCredit =>
      'As respostas boas ou melhores contam como recordação bem-sucedida. As repetições antecipadas não avançam o calendário.';

  @override
  String get practiceBackToLearning => 'Voltar à aprendizagem';

  @override
  String get practiceMarkBest => 'Melhor';

  @override
  String get practiceMarkGood => 'Boa';

  @override
  String get practiceMarkDubious => 'Duvidosa';

  @override
  String get practiceMarkError => 'Erro';

  @override
  String get practiceMarkBlunder => 'Erro grave';

  @override
  String get practiceMarkForced => 'Forçada';

  @override
  String get newMatchYourSide => 'O teu lado';

  @override
  String get newMatchTutorMode => 'Modo tutor';

  @override
  String get newMatchTutorDescription =>
      'Aprende com dicas, explicações e comentários sobre a partida';

  @override
  String get newMatchTutoringOptions => 'Opções de tutoria';

  @override
  String get newMatchTutoringOptionsDescription =>
      'Para esta partida; ajustáveis durante o jogo';

  @override
  String get setupMatchLength => 'Duração da partida';

  @override
  String get setupDifficulty => 'Dificuldade';

  @override
  String get setupDifficultyEasy => 'Fácil';

  @override
  String get setupDifficultyMedium => 'Média';

  @override
  String get setupDifficultyHard => 'Difícil';

  @override
  String get setupDifficultyExpert => 'Especialista';

  @override
  String get setupPlayWithoutCube => 'Jogar sem cubo';

  @override
  String get setupNoCubeThisMatch => 'Sem cubo de dobragem nesta partida';

  @override
  String get analysisTitle => 'Análise';

  @override
  String get gameMatchSummary => 'Resumo da partida';

  @override
  String get gameAnalyzeGame => 'Analisar partida';

  @override
  String get analysisMetricsTooltip => 'O que significam estes números?';

  @override
  String analysisError(Object error) {
    return 'Falha ao analisar a partida: $error';
  }

  @override
  String get analysisNoPositions =>
      'Esta partida não tem posições para mostrar.';

  @override
  String get analysisInProgress => 'A analisar a partida…';

  @override
  String analysisPercent(int percent) {
    return '$percent%';
  }

  @override
  String get analysisPlayed => 'Jogada';

  @override
  String get analysisBest => 'Melhor';

  @override
  String get analysisPrevious => 'Anterior';

  @override
  String get analysisNext => 'Seguinte';

  @override
  String get analysisPositionBeforeCube => 'Posição antes da decisão do cubo';

  @override
  String get analysisPositionAtPoint => 'Posição neste ponto da partida';

  @override
  String get analysisShowingBestBefore =>
      'A mostrar a melhor jogada na posição anterior ao lance';

  @override
  String get analysisShowingBefore => 'A mostrar a posição antes da jogada';

  @override
  String analysisVerdictLine(Object side, Object verdict, Object loss) {
    return '$side: $verdict$loss';
  }

  @override
  String analysisMoveLoss(Object loss) {
    return ' −$loss';
  }

  @override
  String get analysisExcludedFromAverages => ' · excluído das médias';

  @override
  String get analysisNoPlay => '(sem jogada)';

  @override
  String analysisBestMoveLine(Object move) {
    return 'Melhor jogada: $move';
  }

  @override
  String get analysisExplain => 'Explicar';

  @override
  String get analysisSaveForPractice => 'Guardar para praticar';

  @override
  String get analysisSaveError =>
      'Não foi possível guardar esta decisão. Tente novamente.';

  @override
  String analysisCubeInfo(
    Object side,
    Object action,
    Object mark,
    Object loss,
  ) {
    return '$side: $action · $mark · perda $loss';
  }

  @override
  String get analysisCubeDecision => 'Decisão do cubo';

  @override
  String analysisCubePlayed(Object action, Object percent) {
    return 'Jogada: $action (probabilidade de ganhar a partida: $percent%).';
  }

  @override
  String analysisCubeBest(Object action, Object percent) {
    return 'Melhor: $action (probabilidade de ganhar a partida: $percent%).';
  }

  @override
  String get analysisCubeEstimate =>
      'Estimativa 0-ply na perspetiva do jogador que tem a vez. Pressupõe uma resposta ideal de aceitar ou passar. Usa uma aproximação de vida do cubo de 0,7 no ramo de duplo aceite, não uma pesquisa completa de redobramentos futuros. Uma análise mais profunda pode alterar a resposta.';

  @override
  String get analysisClose => 'Fechar';

  @override
  String get analysisMoves => 'Jogadas';

  @override
  String get analysisForced => 'Forçada';

  @override
  String get analysisMarkBest => 'Melhor';

  @override
  String get analysisMarkGood => 'Boa';

  @override
  String get analysisMarkDubious => 'Duvidosa';

  @override
  String get analysisMarkError => 'Erro';

  @override
  String get analysisMarkBlunder => 'Erro grave';

  @override
  String analysisSummaryMeanLoss(Object loss) {
    return 'Perda média $loss';
  }

  @override
  String analysisSummaryCheckerDecisions(int count) {
    return '$count decisões de peças';
  }

  @override
  String analysisSummaryBlunders(int count) {
    return 'Erros graves $count';
  }

  @override
  String analysisSummaryCubeLoss(Object loss) {
    return 'Perda do cubo $loss';
  }

  @override
  String analysisRollWithoutDoubling(Object side) {
    return '$side lança sem dobrar';
  }

  @override
  String get metricExplainerTitle => 'Compreender as métricas';

  @override
  String get metricExplainerTooltip => 'O que significam estes números?';

  @override
  String get metricExplainerMwcTitle =>
      'Probabilidade de ganhar a partida (MWC)';

  @override
  String get metricExplainerMwcBody =>
      'Quando o resultado é conhecido, as jogadas são classificadas pela probabilidade estimada de ganhar a partida. A perda é expressa em pontos percentuais (pp): 1 pp significa passar de 51% para 50%. Inclui a aposta atual do cubo e os resultados de gamão/backgamão. Passes forçados e lançamentos com uma única posição legal são excluídos das médias.';

  @override
  String get metricExplainerSearchTitle => 'Pesquisa e incerteza';

  @override
  String get metricExplainerSearchBody =>
      'As classificações das jogadas são estimativas estáticas a 0-ply após a jogada, não simulações. Os valores da partida usam uma tabela de equidade sem turnos futuros do cubo. As análises do cubo usam uma aproximação parcial de vida do cubo de 0,7 nos duplos aceites. Não é uma pesquisa completa com cubo. Desvantagens acima de 25 usam o limite de 25 da tabela. Resultados muito próximos podem mudar com uma análise mais profunda; não existe um intervalo de confiança calibrado.';

  @override
  String get metricExplainerEquityTitle => 'Equidade';

  @override
  String get metricExplainerEquityBody =>
      'Se o resultado não estiver disponível, a equidade sem cubo indica quantos pontos vale uma posição em média, com o cubo em 1. +1,0 significa esperar ganhar um ponto; −0,5 significa esperar perder meio ponto.';

  @override
  String get metricExplainerEquityLossTitle =>
      'Perda de equidade (ex.: −0,016)';

  @override
  String get metricExplainerEquityLossBody =>
      'Comparamos cada jogada com a melhor jogada do motor. A perda de equidade é o valor esperado que a tua jogada deixou escapar. −0,016 significa que foi apenas 0,016 pontos pior — um pequeno deslize. 0,000 significa que encontraste a melhor jogada.';

  @override
  String get metricExplainerErrorRateTitle => 'Taxa de erro';

  @override
  String get metricExplainerErrorRateBody =>
      'A perda média calcula a média das decisões de peças avaliadas na unidade apresentada. As decisões do cubo têm uma média própria. Um valor menor aproxima-se das melhores estimativas do motor; não é uma classificação calibrada do jogador.';

  @override
  String get metricExplainerMoveMarksTitle => 'Classificação das jogadas';

  @override
  String get metricExplainerMoveMarksBody =>
      'Escalões didáticos de MWC: Melhor < 0,05 pp, Boa < 0,5 pp, Duvidosa < 1,5 pp, Erro < 3 pp, Erro grave ≥ 3 pp. São escalões de aprendizagem do produto, não uma medida calibrada nem uma classificação de torneio.\n\nEscalões didáticos de equidade sem cubo:';

  @override
  String get metricExplainerThresholdBest => 'perda < 0,001';

  @override
  String get metricExplainerThresholdGood => 'perda < 0,020';

  @override
  String get metricExplainerThresholdDubious => 'perda < 0,050';

  @override
  String get metricExplainerThresholdError => 'perda < 0,110';

  @override
  String get metricExplainerThresholdBlunder => 'perda ≥ 0,110';

  @override
  String get metricExplainerGotIt => 'Percebi';

  @override
  String get historyTitle => 'Histórico de partidas';

  @override
  String historyLoadFailed(Object error) {
    return 'Não foi possível carregar o histórico:\n$error';
  }

  @override
  String get historyEmpty => 'Ainda não jogaste nenhuma partida.';

  @override
  String get historyDeleteConfirmTitle => 'Eliminar esta partida?';

  @override
  String historyDeleteConfirmBody(Object scoreLine) {
    return '$scoreLine\n\nA partida e todos os jogos registados serão eliminados permanentemente. Esta ação não pode ser anulada.';
  }

  @override
  String get actionCancel => 'Cancelar';

  @override
  String get actionDelete => 'Eliminar';

  @override
  String get historyDeleteFailed => 'Não foi possível eliminar a partida.';

  @override
  String get historyComplete => 'Concluída';

  @override
  String historyWinner(Object side) {
    return '$side ganhou';
  }

  @override
  String get historyUnfinished => 'Inacabada';

  @override
  String get historyMatchTitle => 'Partida';

  @override
  String historyMatchLoadFailed(Object error) {
    return 'Não foi possível carregar a partida:\n$error';
  }

  @override
  String historyGamesLoadFailed(Object error) {
    return 'Não foi possível carregar os jogos:\n$error';
  }

  @override
  String get historyNoGames => 'Ainda não há jogos registados.';

  @override
  String historyGameTitle(int number) {
    return 'Jogo $number';
  }

  @override
  String get historyCrawford => 'Crawford';

  @override
  String historyScoreLine(int whiteScore, int blackScore, int matchLength) {
    return 'Brancas $whiteScore — $blackScore Pretas (até $matchLength)';
  }

  @override
  String get historyModeComputer => 'contra o computador';

  @override
  String get historyModeTwoPlayers => 'Dois jogadores';

  @override
  String get historyModeOnline => 'Online';

  @override
  String get historyModeNearby => 'Jogar nas proximidades';

  @override
  String get historyModeBuddy => 'Buddy';

  @override
  String get historyGameInProgress => 'Em curso';

  @override
  String historyGameResult(Object side, int points, Object outcome) {
    return '$side ganha $points ($outcome)';
  }

  @override
  String get historyOutcomeSingle => 'simples';

  @override
  String get historyOutcomeGammon => 'gamão';

  @override
  String get historyOutcomeBackgammon => 'backgamão';

  @override
  String get learningRefreshTooltip => 'Atualizar progresso de aprendizagem';

  @override
  String get learningOptions => 'Opções de aprendizagem';

  @override
  String get learningResetMenu => 'Repor progresso dos exercícios';

  @override
  String get learningLoadFailed =>
      'Não foi possível carregar o progresso de aprendizagem.';

  @override
  String get actionRetry => 'Tentar novamente';

  @override
  String get learningHeading => 'Aprende com as tuas decisões';

  @override
  String get learningIntro =>
      'O progresso fica neste dispositivo. Revê temas recorrentes e tenta novamente as posições guardadas sem veres a resposta. Podes rever Brancas e Pretas separadamente.';

  @override
  String get learningBothSides => 'Ambos os lados';

  @override
  String get learningHumansOnly => 'Só decisões humanas';

  @override
  String get learningHumanOnlyHelp =>
      'Desativa para incluir decisões do computador e de jogadores remotos';

  @override
  String learningDecisionSummary(int decisions, int mistakes, int blunders) {
    return '$decisions decisões · $mistakes a melhorar · $blunders erros graves';
  }

  @override
  String learningAverageLoss(int decisions, Object loss) {
    return 'Perda média ($decisions decisões): $loss';
  }

  @override
  String get learningForcedDisclaimer =>
      'As jogadas forçadas são excluídas. São estimativas do motor, não uma classificação de torneio.';

  @override
  String learningGamesNeedingAnalysis(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Os $count jogos guardados precisam de análise ou de uma nova análise.',
      one: 'O jogo guardado precisa de análise ou de uma nova análise.',
    );
    return '$_temp0';
  }

  @override
  String get learningAnalyseSavedGames => 'Analisar jogos guardados';

  @override
  String get learningEmptyProfile =>
      'Joga e termina uma partida para criar o teu perfil de aprendizagem. Também podes guardar decisões individuais a partir da revisão.';

  @override
  String get learningOpenHistory => 'Abrir histórico de partidas';

  @override
  String get learningRecurringThemes => 'Temas recorrentes';

  @override
  String get learningNoThemes =>
      'Ainda não existem temas de erro recorrentes nesta seleção.';

  @override
  String learningThemeDecisions(int count) {
    return '$count decisões a rever. Uma posição pode ter mais de um tema.';
  }

  @override
  String get learningSaveMistakes => 'Guardar estes erros para praticar';

  @override
  String learningSavedMistakes(int count) {
    return '$count decisões estão na tua lista de prática. As que já estavam guardadas são mantidas.';
  }

  @override
  String get learningSaveMistakesFailed =>
      'Não foi possível guardar algumas decisões. As guardadas com sucesso são mantidas; tenta novamente.';

  @override
  String get learningSpacedPractice => 'Prática espaçada';

  @override
  String learningPracticeCounts(
    int due,
    int saved,
    int attempts,
    int successes,
  ) {
    return '$due para rever agora · $saved guardadas · $attempts tentativas · $successes recordações bem-sucedidas';
  }

  @override
  String get learningIntervalsHelp =>
      'As revisões devidas e bem-sucedidas regressam após 1, 3, 7, 14 e 30 dias. Erros ou respostas reveladas regressam após 10 minutos. Repetições antecipadas não alteram o intervalo.';

  @override
  String get learningAnswerContext =>
      'Os resultados refletem as tuas respostas aqui, mesmo quando a posição original pertencia a um adversário.';

  @override
  String get learningNoSavedPositions =>
      'Guarda uma decisão a partir da revisão ou usa o botão de erros acima.';

  @override
  String learningPositionTitle(Object side, int gameId) {
    return 'Decisão de $side · jogo $gameId';
  }

  @override
  String learningReviewDue(Object date) {
    return 'Rever $date';
  }

  @override
  String get learningReadyToReview => 'Pronto para rever';

  @override
  String learningSuccessStreak(int count) {
    return '$count revisões devidas bem-sucedidas';
  }

  @override
  String get learningRemoveTooltip => 'Remover decisão guardada';

  @override
  String get learningRecentPractice => 'Prática recente';

  @override
  String get learningAnswerRevealed => 'Resposta revelada';

  @override
  String get learningSuccessfulRecall => 'Recordação bem-sucedida';

  @override
  String get learningTryAgain => 'Tentar novamente esta decisão';

  @override
  String learningAttemptSubtitle(Object date, int positionId) {
    return '$date · posição guardada $positionId';
  }

  @override
  String get learningRemoveTitle => 'Remover este exercício?';

  @override
  String get learningRemoveBody =>
      'Isto remove as tentativas de prática. A partida original continua no histórico.';

  @override
  String get actionRemove => 'Remover';

  @override
  String get learningRemoveFailed => 'Não foi possível remover este exercício.';

  @override
  String get learningResetTitle => 'Repor o progresso da prática?';

  @override
  String get learningResetBody =>
      'Todas as tentativas e intervalos de revisão serão removidos. Os exercícios guardados e o histórico mantêm-se; todos os exercícios ficam devidos agora.';

  @override
  String get learningResetAction => 'Repor progresso';

  @override
  String get learningResetFailed => 'Não foi possível repor o progresso.';

  @override
  String learningAnalysisProgress(int completed, int failed) {
    return 'Partidas analisadas: $completed · indisponíveis: $failed.';
  }

  @override
  String learningAnalysisComplete(int completed) {
    return '$completed partidas analisadas.';
  }

  @override
  String learningAnalysisCompleteWithErrors(int completed, int failed) {
    return 'Foram analisadas $completed partidas; não foi possível analisar $failed. Tenta novamente quando o motor estiver pronto.';
  }

  @override
  String get learningThemeHitting => 'Ataque e ritmo';

  @override
  String get learningThemeSafety => 'Blots e segurança';

  @override
  String get learningThemePointMaking => 'Construção de pontos';

  @override
  String get learningThemePrime => 'Primas e bloqueios';

  @override
  String get learningThemeAnchor => 'Âncoras e fuga';

  @override
  String get learningThemeRace => 'Eficiência na corrida';

  @override
  String get learningThemeBearOff => 'Retirar peças';

  @override
  String get learningThemeBarEntry => 'Entrada da barra';

  @override
  String get learningThemeCube => 'Decisões do cubo';

  @override
  String get analysisCubeNoDouble => 'Não dobrar';

  @override
  String get analysisCubeDouble => 'Dobrar';

  @override
  String get analysisCubeTake => 'Aceitar';

  @override
  String get analysisCubePass => 'Passar';

  @override
  String get learningAnalysisStarting => 'A analisar partidas guardadas…';

  @override
  String get tutorCubelessEstimateScope =>
      'Estimativa sem cubo a 0 ply · pontuação indisponível';

  @override
  String get tutorLossPp => 'Perda pp';

  @override
  String get tutorLoss => 'Perda';

  @override
  String get scoreSheetNoMoves => 'Ainda sem jogadas';

  @override
  String get tutorOptions => 'Opções de tutoria';

  @override
  String get tutorCollapseTooltip => 'Recolher tutor';

  @override
  String get tutorExpandTooltip => 'Expandir tutor';

  @override
  String get onlineTitle => 'Jogar online';

  @override
  String get onlineUnassistedNote =>
      'As partidas online não têm tutor em direto. Revê as jogadas e pratica os erros depois da partida.';

  @override
  String get onlineNotConfiguredTitle =>
      'O jogo online não está configurado nesta versão';

  @override
  String get onlineNotConfiguredBody =>
      'Esta versão não tem um backend Firebase ligado, por isso não é possível criar ou entrar em partidas.';

  @override
  String get onlineErrorNoMatch =>
      'Não existe nenhuma partida com esse código. Verifica-o e tenta novamente.';

  @override
  String get onlineErrorSeatTaken =>
      'A partida já não está aberta — o lugar foi ocupado.';

  @override
  String get onlineErrorPermission => 'Não tens acesso a esta partida.';

  @override
  String get onlineErrorGeneric => 'Ocorreu um erro. Tenta novamente.';

  @override
  String get onlineMatchFinished =>
      'A partida terminou e já não pode ser retomada.';

  @override
  String get onlineEnterCodeError => 'Introduz o código da partida.';

  @override
  String get onlineOpponentShort => 'Adversário';

  @override
  String get onlineMatchInProgress => 'Partida em curso';

  @override
  String onlineResumePrompt(Object code) {
    return 'Estavas a jogar a partida $code.';
  }

  @override
  String get onlineRejoin => 'Retomar';

  @override
  String get onlineForgetMatch => 'Esquecer esta partida';

  @override
  String get onlineCreateTitle => 'Criar partida';

  @override
  String get onlineMatchLength => 'Duração da partida';

  @override
  String get onlineNoCubeTitle => 'Jogar sem cubo';

  @override
  String get onlineNoCubeSubtitle => 'Sem cubo de dobragem nesta partida';

  @override
  String get onlineCreate => 'Criar';

  @override
  String get onlineWaitingOpponent => 'À espera do adversário…';

  @override
  String get onlineShareCode => 'Partilhar este código';

  @override
  String get onlineCopyCode => 'Copiar código';

  @override
  String get onlineCodeCopied => 'Código copiado';

  @override
  String get onlineJoinTitle => 'Entrar numa partida';

  @override
  String get onlineRoomCode => 'Código da partida';

  @override
  String get onlineJoin => 'Entrar';

  @override
  String get lanTitle => 'Jogar nas proximidades';

  @override
  String get lanTabHost => 'Alojar';

  @override
  String get lanTabJoin => 'Entrar';

  @override
  String get lanUnassistedNote =>
      'As partidas locais não têm tutor em direto. Revê as jogadas e pratica os erros depois da partida.';

  @override
  String get lanGameStartFailed =>
      'Não foi possível iniciar o jogo. O outro dispositivo pode tentar entrar novamente.';

  @override
  String get lanHostPortInUse =>
      'Não foi possível alojar: a porta já está a ser usada. Fecha outras cópias do Backgammon Buddy e tenta novamente.';

  @override
  String get lanHostStartFailed =>
      'Não foi possível alojar. Verifica o Wi-Fi e tenta novamente.';

  @override
  String get lanHostTitle => 'Alojar uma partida';

  @override
  String get lanStartHosting => 'Começar a alojar';

  @override
  String get lanHostHelp =>
      'Os dois dispositivos têm de estar na mesma rede Wi-Fi. Este lança os dados e mantém o resultado.';

  @override
  String get lanWaitingPlayerTitle => 'À espera de um jogador';

  @override
  String get lanRoomCodeInfo =>
      'Diz este código ao outro jogador. Permite-lhe entrar e a aplicação nunca o envia pela rede.';

  @override
  String get lanWaitingPlayer => 'À espera de um jogador…';

  @override
  String get lanStopHosting => 'Parar alojamento';

  @override
  String lanFindNearbyPort(int port) {
    return 'Pede ao outro dispositivo que procure partidas próximas. À escuta na porta $port.';
  }

  @override
  String get lanOnNetwork => 'Nesta rede';

  @override
  String get lanCopyAddress => 'Copiar endereço';

  @override
  String get lanAddressCopied => 'Endereço copiado';

  @override
  String get lanScanHostTitle => 'Digitalizar o anfitrião';

  @override
  String get lanScanHostHelp =>
      'O outro dispositivo apresenta um código QR no ecrã de anfitrião. Ao digitalizá-lo, o endereço e o código da sala são preenchidos.';

  @override
  String get lanScanQr => 'Digitalizar código QR';

  @override
  String get lanScannerUnavailable =>
      'Câmara ou permissão indisponível. Introduz abaixo o endereço e o código da sala.';

  @override
  String get lanInvalidQr =>
      'Este código QR não é do Backgammon Buddy. Digitaliza o que aparece no ecrã de anfitrião do outro dispositivo.';

  @override
  String get lanScannerFailed =>
      'Não foi possível abrir o leitor. Introduz abaixo o endereço e o código.';

  @override
  String get lanNearbyGames => 'Partidas próximas';

  @override
  String get lanSearching => 'A procurar partidas próximas…';

  @override
  String get lanNoGamesFound =>
      'Não foram encontradas partidas. Confirma que o outro dispositivo está a alojar e que ambos usam a mesma rede Wi-Fi, ou introduz o endereço abaixo.';

  @override
  String get lanStillSearching => 'À procura…';

  @override
  String get lanEnterAddress => 'Introduzir endereço';

  @override
  String get lanEnterAddressHelp =>
      'A deteção automática não funciona em todas as redes e pode estar totalmente bloqueada no iOS. O ecrã de anfitrião indica o que tens de escrever.';

  @override
  String get lanIpAddress => 'Endereço IP';

  @override
  String get lanPort => 'Porta';

  @override
  String get lanInvalidPort => 'Introduz uma porta entre 1 e 65535.';

  @override
  String get lanEnterAddressError =>
      'Introduz o endereço apresentado no outro dispositivo.';

  @override
  String get lanEnterRoomCodeError =>
      'Introduz o código de 4 dígitos do outro dispositivo.';

  @override
  String get lanJoinWrongCode =>
      'Código da sala incorreto. Confirma os quatro dígitos.';

  @override
  String get lanJoinVersionMismatch =>
      'O outro dispositivo está a executar uma versão diferente do Backgammon Buddy.';

  @override
  String get lanJoinHandshakeFailed =>
      'O dispositivo não respondeu como o Backgammon Buddy. Verifica o endereço e a porta.';

  @override
  String get lanJoinFailed =>
      'Não foi possível entrar. Verifica o endereço e o código e tenta novamente.';

  @override
  String lanJoinTarget(Object name) {
    return 'Entrar em $name';
  }

  @override
  String get lanJoinTargetHelp =>
      'Introduz o código de 4 dígitos apresentado no outro dispositivo.';

  @override
  String lanJoiningTarget(Object name) {
    return 'A ligar a $name';
  }

  @override
  String get lanConnect => 'Ligar';

  @override
  String get lanBack => 'Voltar';

  @override
  String get lanTryAgain => 'Tentar novamente';

  @override
  String get lanStatusBusy => 'Sala ocupada — a aguardar…';

  @override
  String get lanStatusReconnecting => 'Ligação perdida — a tentar novamente…';

  @override
  String get lanStatusConnected => 'Ligado — a iniciar a partida…';

  @override
  String get lanStatusFailed => 'Não foi possível entrar.';

  @override
  String get lanStatusConnecting => 'A ligar…';

  @override
  String get diagnosticsCopySuccess => 'Diagnóstico copiado';

  @override
  String get diagnosticsReviewTitle => 'Rever relatório de diagnóstico';

  @override
  String get diagnosticsPrivacyNotice =>
      'Ao abrir o rascunho, os dados abaixo serão enviados para o GitHub, incluindo a versão da aplicação, a plataforma e detalhes do erro. Nenhum problema público será publicado até o enviares. Se estes dados forem privados, cancela e usa Copiar para preparar o relatório.';

  @override
  String get diagnosticsCancel => 'Cancelar';

  @override
  String get diagnosticsOpenGitHub => 'Abrir GitHub';

  @override
  String get diagnosticsTitle => 'Diagnóstico';

  @override
  String get diagnosticsReportTooltip => 'Comunicar um problema no GitHub';

  @override
  String get diagnosticsCopyTooltip => 'Copiar para a área de transferência';

  @override
  String get diagnosticsClearTooltip => 'Limpar registo';

  @override
  String get diagnosticsEmpty =>
      'Não há erros registados.\n\nSe algo correr mal, ficará registado aqui. Volta para copiar os detalhes para um relatório de erro.';

  @override
  String gameHudNeutralScore(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore–$blackScore $blackLabel · até $matchLength';
  }

  @override
  String gameHudPlayerScore(
    Object you,
    int mine,
    int theirs,
    Object opponent,
    int matchLength,
  ) {
    return '$you $mine–$theirs $opponent · até $matchLength';
  }

  @override
  String get gameHudYou => 'Tu';

  @override
  String get gameHudAi => 'IA';

  @override
  String gameHudGameNumber(int number) {
    return 'Jogo $number';
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
    return '$whiteLabel contra $blackLabel · $pipsLabel $whitePips–$blackPips';
  }

  @override
  String gameHudOpponentDetail(
    Object opponent,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'contra $opponent · $pipsLabel $mine–$theirs';
  }

  @override
  String gameHudOpponentDetailWithLevel(
    Object opponent,
    Object level,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'contra $opponent · $level · $pipsLabel $mine–$theirs';
  }

  @override
  String get gameHudPips => 'Pips';

  @override
  String get gameHudCrawford => 'Crawford';

  @override
  String get gameHudDouble => 'Dobrar';

  @override
  String get gameHudMoreActions => 'Mais ações';

  @override
  String get gameHudSurrender => 'Desistir…';

  @override
  String get gameHudThinking => 'A pensar';

  @override
  String get gameHudDoubleBeforeRoll =>
      'Só podes dobrar antes de lançar, na tua vez.';

  @override
  String get gameHudNoDoubleCrawford =>
      'Não há dobragens no jogo Crawford — este jogo decide a partida.';

  @override
  String get gameHudOnlyCubeOwner =>
      'Só o dono do cubo pode dobrar e, neste momento, pertence ao outro lado.';

  @override
  String get gameHudDoubleUnavailable => 'Não é possível dobrar agora.';

  @override
  String gameDialogScoreLine(
    Object whiteLabel,
    int whiteScore,
    int blackScore,
    Object blackLabel,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore — $blackScore $blackLabel (até $matchLength)';
  }

  @override
  String gameDialogPlayerWon(Object winner, Object points) {
    return '$winner ganha este jogo ($points).';
  }

  @override
  String gameDialogPlayerWonGammon(Object winner, Object points) {
    return '$winner ganha este jogo ($points, gamão).';
  }

  @override
  String gameDialogPlayerWonBackgammon(Object winner, Object points) {
    return '$winner ganha este jogo ($points, backgamão).';
  }

  @override
  String gameDialogPlayerWonDrop(Object winner, Object points, Object loser) {
    return '$winner ganha este jogo ($points) — $loser recusou o duplo.';
  }

  @override
  String gameDialogPlayerWonResignation(
    Object winner,
    Object points,
    Object loser,
  ) {
    return '$winner ganha este jogo ($points) — $loser desistiu.';
  }

  @override
  String get gameDialogPassDeviceTitle => 'Passa o dispositivo';

  @override
  String gameDialogPlayersTurn(Object name) {
    return 'Vez de $name';
  }

  @override
  String get gameDialogTapToContinue => 'Toca para continuar';

  @override
  String get gameDialogCubeOfferedTitle => 'Duplo oferecido';

  @override
  String gameDialogCubeOfferMessage(
    Object doubler,
    int value,
    Object tutorLine,
  ) {
    return '$doubler propõe dobrar para $value. Aceitar ou passar?$tutorLine';
  }

  @override
  String get gameDialogPass => 'Passar';

  @override
  String get gameDialogTake => 'Aceitar';

  @override
  String get gameDialogResignationTitle => 'Desistência proposta';

  @override
  String gameDialogResignationMessage(Object resigner, Object value) {
    return '$resigner propõe desistir por $value. Aceitar ou recusar?';
  }

  @override
  String get gameDialogResignSingle => 'jogo simples';

  @override
  String get gameDialogResignGammon => 'gamão';

  @override
  String get gameDialogResignBackgammon => 'backgamão';

  @override
  String get gameDialogDecline => 'Recusar';

  @override
  String get gameDialogAccept => 'Aceitar';

  @override
  String get gameDialogGameOverTitle => 'Fim do jogo';

  @override
  String get gameDialogNextGame => 'Jogo seguinte';

  @override
  String get gameDialogMatchOverTitle => 'Fim da partida';

  @override
  String get gameDialogNobody => 'Ninguém';

  @override
  String gameDialogMatchWinner(Object winner) {
    return '$winner ganha a partida.';
  }

  @override
  String get gameDialogSavedToHistory => 'Guardado no histórico';

  @override
  String get gameDialogDone => 'Concluído';

  @override
  String get gameTapNoLegalMove =>
      'Esta peça não pode mover-se com os dados restantes';

  @override
  String get gameTapNoLegalMoveUndo =>
      'Esta peça não pode mover-se com os dados restantes — tenta anular';

  @override
  String get gameDragHint =>
      'Dica: arrasta as peças ou toca nelas — altera isto nas Definições';

  @override
  String get commonGotIt => 'Percebi';

  @override
  String get gameHintStageBeforeHint =>
      'Faz primeiro uma jogada legal completa e depois pede uma dica.';

  @override
  String get surrenderTitle => 'Desistir';

  @override
  String surrenderNamedConcedes(String player) {
    return '$player desiste do jogo atual.';
  }

  @override
  String get surrenderConcedes => 'Desiste do jogo atual.';

  @override
  String surrenderAvailableAtNamedTurn(String player) {
    return 'Disponível no início da vez de $player';
  }

  @override
  String get surrenderAvailableAtYourTurn => 'Disponível no início da tua vez';

  @override
  String get commonCancel => 'Cancelar';

  @override
  String get surrenderSingle => 'Simples (1)';

  @override
  String get surrenderGammon => 'Gamão (2)';

  @override
  String get surrenderBackgammon => 'Backgamão (3)';

  @override
  String get surrenderChoosePlayer => 'Quem desiste deste jogo?';

  @override
  String get commonDone => 'Concluído';

  @override
  String get cubeDouble => 'Dobrar';

  @override
  String get cubeBlockedOtherPlayersTurn => 'É a vez do outro jogador.';

  @override
  String get cubeBlockedCrawford =>
      'O cubo não está disponível na partida Crawford.';

  @override
  String get cubeBlockedOwnedByOther =>
      'Só o dono do cubo pode dobrar e, neste momento, pertence ao outro lado.';

  @override
  String get cubeBlockedUnavailable => 'Não é possível dobrar agora.';

  @override
  String get gameStatusRolling => 'A lançar…';

  @override
  String get gameStatusThinking => 'A pensar…';

  @override
  String gameStatusPlayersTurn(String player) {
    return 'Vez de $player';
  }

  @override
  String get cubeAdviceOpponentTake => 'Dobrar — o adversário deve aceitar';

  @override
  String get cubeAdviceOpponentPass => 'Dobrar — o adversário deve passar';

  @override
  String gameErrorBannerLabel(Object error) {
    return 'Erro: $error';
  }

  @override
  String get privacyTitle => 'Privacidade e dados';

  @override
  String get privacyAppTitle => 'Backgammon Buddy por Freevia';

  @override
  String get privacyIntro =>
      'Esta página descreve como o aplicativo atual lida com seus dados.';

  @override
  String get privacyLocalTitle =>
      'Jogos e aulas particulares no seu dispositivo';

  @override
  String get privacyLocalBody =>
      'Partidas locais, configurações, análises e progresso dos exercícios ficam armazenados neste dispositivo. O mecanismo do jogo e as explicações do tutor são executados aqui. Apagar uma partida salva no Arquivo de jogos também apaga os exercícios de prática salvos e as tentativas correspondentes. Apague exercícios individualmente ou redefina o progresso em Aprendizado e prática; apague os relatórios de erro locais em Configurações → Diagnósticos. O histórico de partidas também pode ser incluído nos backups do dispositivo. As credenciais de login online ficam no armazenamento protegido do dispositivo.';

  @override
  String get privacyOnlineTitle => 'Jogo online e nas proximidades';

  @override
  String get privacyOnlineBody =>
      'O jogo online envia ao Google Firebase um identificador anônimo de jogador, as configurações da partida, as jogadas e registros do protocolo de sincronização dos dados, para que ambos os jogadores possam jogar a mesma partida. Apagar o Histórico neste dispositivo não apaga os registros online. As partidas hospedadas expiram 30 dias após a criação; uma limpeza programada remove os registros da nuvem. Os registros das partidas são armazenados na UE; o Firebase Authentication processa dados de login nos Estados Unidos. As conexões online com o Google usam criptografia durante a transmissão. Nas partidas próximas, as informações da partida são trocadas com o outro dispositivo por uma conexão local sem criptografia; use uma rede Wi-Fi confiável.';

  @override
  String get privacyDiagnosticsTitle =>
      'Diagnósticos opcionais de uso e falhas';

  @override
  String get privacyDiagnosticsBody =>
      'O compartilhamento permanece desativado até que você o ative em Configurações. Se ativado, o Google Firebase recebe eventos de uso, informações sobre o app e o dispositivo, métricas de desempenho e relatórios de falhas para ajudar a melhorar o app. Você pode desativar o compartilhamento a qualquer momento para interromper a coleta opcional de novos dados. Isso não apaga os dados já enviados. Os diagnósticos locais e as partidas online não dependem dessa opção.';

  @override
  String get privacyCameraTitle => 'Câmera para códigos QR próximos';

  @override
  String get privacyCameraBody =>
      'A câmera opcional lê os códigos QR para partidas próximas. As imagens são processadas no dispositivo e não são salvas nem enviadas. Você pode negar o acesso à câmera e digitar manualmente o endereço do anfitrião. Esta versão não usa o microfone nem permite jogar com um tabuleiro físico.';

  @override
  String get privacyFeedbackTitle => 'Feedback que você escolhe enviar';

  @override
  String get privacyFeedbackBody =>
      'O feedback abre um rascunho de issue no GitHub para você revisar. Abrir o rascunho envia ao GitHub a versão do app e a plataforma; o feedback enviado pela tela Diagnósticos também pode incluir detalhes do erro. A issue só é publicada quando você a envia. Issues podem ser públicas, então remova informações privadas antes de enviar.';

  @override
  String get privacyContactTitle => 'Contato de privacidade';

  @override
  String get privacyReadPolicy => 'Leia a política de privacidade';

  @override
  String get privacyPolicyOpenFailed =>
      'Não foi possível abrir a política de privacidade.';

  @override
  String get privacySupportTitle => 'Ajuda e suporte';

  @override
  String get privacySupportOpenFailed =>
      'Não foi possível abrir o suporte. Entre em contato com support@freevia.org.';

  @override
  String get privacyDeleteConfirmTitle => 'Excluir identidade e dados online?';

  @override
  String get privacyDeleteConfirmBody =>
      'O acesso dos dois jogadores às partidas na nuvem associadas a esta identidade é encerrado imediatamente. A exclusão da identidade e dos registros compartilhados das partidas online é solicitada para ocorrer em até 30 dias. O Google pode levar até 180 dias após a exclusão da conta para remover os dados de autenticação dos sistemas ativos e de backup. O Histórico local e os exercícios de prática permanecem neste dispositivo. Os diagnósticos opcionais enviados anteriormente são tratados separadamente; entre em contato com privacy@freevia.org sobre eles. Esta solicitação não pode ser desfeita.';

  @override
  String get privacyRequestDeletion => 'Solicitar exclusão';

  @override
  String get privacyDeleteSectionTitle => 'Exclusão de dados online';

  @override
  String get privacyDeleteInstructions =>
      'Use o login salvo neste dispositivo para confirmar que a identidade é sua. Um identificador de jogador ou código de convite, sozinho, não comprova que ela pertence a você. Quem joga apenas localmente não precisa de uma conta online.';

  @override
  String get privacySendingRequest => 'Enviando solicitação…';

  @override
  String get privacyDeleteAction => 'Excluir identidade e dados online';

  @override
  String get privacyDeleteRequested =>
      'Solicitação de exclusão registrada. Esta identidade online foi desconectada. Os dados dela na nuvem serão excluídos em até 30 dias. Ao iniciar um novo jogo online, uma nova identidade será criada. A remoção dos dados de autenticação pelo Google pode levar até 180 dias. Para obter ajuda, entre em contato com privacy@freevia.org.';

  @override
  String get privacyDeleteRequestedSignOutFailed =>
      'Solicitação de exclusão registrada. Os dados na nuvem serão excluídos em até 30 dias. Não foi possível apagar as credenciais salvas neste dispositivo, mas a identidade online foi bloqueada para novos acessos às partidas. A remoção dos dados de autenticação pelo Google pode levar até 180 dias. Para obter ajuda, entre em contato com privacy@freevia.org.';

  @override
  String get privacyDeleteNoIdentity =>
      'Nenhuma identidade online válida está salva neste dispositivo. Nenhuma nova conta foi criada. Se você já jogou online, entre em contato com privacy@freevia.org para obter ajuda; as partidas hospedadas expiram 30 dias após a criação.';

  @override
  String get privacyDeleteRequestFailed =>
      'Não foi possível confirmar a solicitação de exclusão. Verifique sua conexão e tente novamente ou entre em contato com privacy@freevia.org.';

  @override
  String get privacyConsentTitle =>
      'Compartilhar uso e diagnósticos de falhas?';

  @override
  String get privacyConsentBody =>
      'Este recurso envia eventos de uso, informações sobre o app e o dispositivo, relatórios de falhas e métricas de desempenho ao Google Firebase. O compartilhamento é opcional. Os jogos e a tutoria funcionam com o compartilhamento desativado; você pode ativá-lo ou desativá-lo em Configurações.';

  @override
  String get privacyKeepOff => 'Manter desativado';

  @override
  String get privacyShareDiagnostics => 'Compartilhar diagnósticos';

  @override
  String get privacySaveFailed =>
      'Não foi possível salvar a opção de privacidade. Por favor, tente novamente.';

  @override
  String get privacySettingsSubtitle =>
      'O que permanece no seu dispositivo e o que é compartilhado';

  @override
  String get privacyDiagnosticsSettingTitle =>
      'Compartilhe uso e diagnósticos de falhas';

  @override
  String get privacyDiagnosticsSettingSubtitle =>
      'Opcional · desativado por padrão';

  @override
  String get lanScanToJoin => 'Digitalize para participar';

  @override
  String get lanScanHostCode => 'Digitalize o código do host';

  @override
  String get lanEnterAddressInstead => 'Digite o endereço';

  @override
  String get lanQrAccessibilityLabel => 'Código QR para entrar neste jogo';

  @override
  String get lanJoinInstruction =>
      'No outro dispositivo, abra Jogar por Perto, escolha Entrar e leia este código QR.';

  @override
  String get lanTorch => 'Flash';

  @override
  String get lanCameraPermissionDenied =>
      'Backgammon Buddy não pode usar a câmera. Permita o acesso à câmera nas configurações do dispositivo ou insira manualmente o endereço mostrado no outro dispositivo.';

  @override
  String get lanCameraUnsupported =>
      'Este dispositivo não pode ler códigos QR. Insira o endereço mostrado no outro dispositivo manualmente.';

  @override
  String get lanCameraStartFailed =>
      'A câmera não pôde ser iniciada. Insira o endereço mostrado no outro dispositivo manualmente.';

  @override
  String get lanPointCameraAtQr =>
      'Aponte a câmera para o código QR no outro dispositivo.';

  @override
  String get physicalBuddyUnavailableTitle => 'Backgammon Buddy';

  @override
  String get physicalBuddyUnavailableBody =>
      'O jogo em um tabuleiro físico não está disponível nesta versão. Jogos na tela, tutoria e prática estão disponíveis na tela inicial.';

  @override
  String get homePlayWithBuddy => 'Jogar com o Buddy';

  @override
  String get homeBuddyShort => 'Buddy';

  @override
  String boardSemanticsLabel(Object status) {
    return 'Tabuleiro de gamão. $status';
  }

  @override
  String get boardWhiteToRoll => 'É a vez das brancas lançarem os dados.';

  @override
  String get boardBlackToRoll => 'É a vez das pretas lançarem os dados.';

  @override
  String boardWhiteToMove(Object die1, Object die2) {
    return 'É a vez das brancas; os dados são $die1 e $die2.';
  }

  @override
  String boardBlackToMove(Object die1, Object die2) {
    return 'É a vez das pretas; os dados são $die1 e $die2.';
  }

  @override
  String get boardDoubleOffered => 'Foi oferecido dobrar o cubo.';

  @override
  String get boardResignationOffered => 'Foi oferecida uma rendição.';

  @override
  String get boardGameOver => 'O jogo acabou.';

  @override
  String feedbackBugTitle(Object version, Object platform) {
    return '[Erro]: Backgammon Buddy $version ($platform)';
  }

  @override
  String get feedbackIdeaTitle => '[Ideia]: Backgammon Buddy';

  @override
  String get feedbackBugSummary =>
      'Substitua isso por uma breve descrição do que aconteceu.';

  @override
  String get feedbackBugReproduction =>
      'Substitua isso pelas etapas que levaram ao problema.';

  @override
  String get feedbackBugExpected =>
      'Substitua isso pelo que você esperava que acontecesse.';

  @override
  String get feedbackIdeaNeed =>
      'Substitua isso pelo que você queria fazer ou aprender.';

  @override
  String get feedbackIdeaSuggestion =>
      'Substitua isso pela alteração que você acharia útil.';

  @override
  String get feedbackExcerptTruncated =>
      '(truncado — use Copiar para a área de transferência na tela Diagnóstico para obter o log completo)';

  @override
  String get boardWhiteToMoveNoRoll => 'É a vez das brancas.';

  @override
  String get boardBlackToMoveNoRoll => 'É a vez das pretas.';

  @override
  String get feedbackFieldVersion => 'Versão do aplicativo';

  @override
  String get feedbackFieldPlatform => 'Plataforma';

  @override
  String get feedbackFieldSummary => 'O que aconteceu';

  @override
  String get feedbackFieldReproduction => 'Passos para reproduzir';

  @override
  String get feedbackFieldExpected => 'Resultado esperado';

  @override
  String get feedbackFieldNeed => 'O que você queria fazer';

  @override
  String get feedbackFieldIdea => 'Alteração sugerida';

  @override
  String get buddySetupTitle => 'Jogar com o Buddy';

  @override
  String get buddySetupSideLabel => 'O Buddy joga';

  @override
  String get buddySetupSeatLabel => 'O seu lado';

  @override
  String get buddySetupSeatNear => 'Perto do telemóvel';

  @override
  String get buddySetupSeatFar => 'Do lado oposto';

  @override
  String get buddySetupSeatHelp =>
      'Em que lado do tabuleiro está? É assim que o Buddy numera os pontos e distingue o seu dado inicial do dele.';

  @override
  String get buddySetupVoiceLabel => 'Como fala o Buddy';

  @override
  String get buddySetupVoiceTerse => 'Conciso';

  @override
  String get buddySetupVoiceFriendly => 'Descontraído';

  @override
  String get buddySetupVoiceTerseHelp =>
      '“13/8, 24/22” — a notação que dois jogadores usam ao tabuleiro.';

  @override
  String get buddySetupVoiceFriendlyHelp =>
      '“Mova uma peça de 13 para 8 e outra de 24 para 22.”';

  @override
  String get buddySetupTutorHelp =>
      'Os comentários e explicações de jogadas seguem as preferências do Tutor guardadas nas Definições. O Buddy dá algum feedback após as suas jogadas; introduzir os dados e mover as peças manualmente funciona da mesma forma.';

  @override
  String get buddySetupCalibrate => 'Calibrar o tabuleiro';

  @override
  String get buddyFixAim => 'Ajustar a orientação';

  @override
  String get buddyWaitingForOpening =>
      'O Buddy está à espera do lançamento que inicia a partida.';

  @override
  String get buddyPromptLostBoard =>
      'O Buddy perdeu o tabuleiro. Ajuste a orientação e a partida continua de onde parou.';

  @override
  String get buddyPromptWaitingPicture =>
      'À espera de uma imagem que o Buddy consiga ler. Não perdeu nada.';

  @override
  String get buddyPromptTypeDice =>
      'O Buddy não consegue encontrar os dados. Introduza o lançamento.';

  @override
  String get buddyPromptPlay =>
      'Faça a sua jogada no tabuleiro. Se o Buddy não a detetar, indique-a aqui.';

  @override
  String get buddyPromptWhichPlay => 'Que jogada fez?';

  @override
  String get buddyPromptCube => 'O Buddy dobra. Aceita ou desiste?';

  @override
  String get buddyPromptMakeMove =>
      'Faça a jogada do Buddy no tabuleiro; depois, ele continuará.';

  @override
  String get buddyPromptThinking => 'O Buddy está a pensar.';

  @override
  String get buddyPromptWaitingCalibration => 'À espera da calibração.';

  @override
  String get buddyPromptMirrorNoDetail =>
      'O Buddy ainda não consegue ver a sua jogada. O tabuleiro abaixo mostra a posição que está a acompanhar.';

  @override
  String get buddyPromptNotLegal => 'Essa jogada não é válida.';

  @override
  String buddyPromptNotLegalReason(String reason) {
    return 'Essa jogada não é válida. $reason';
  }

  @override
  String get buddyThrowOpening =>
      'Lance os dados iniciais — um dado para cada jogador.';

  @override
  String get buddyThrowUser => 'Lance os seus dados.';

  @override
  String get buddyThrowBuddy => 'Lance os dados do Buddy.';

  @override
  String get buddyMatchOver => 'A partida terminou.';

  @override
  String get buddyYouWin => 'Ganhou a partida.';

  @override
  String get buddyBuddyWins => 'O Buddy ganhou a partida.';

  @override
  String get buddyDoubleNoGame =>
      'Ainda não há jogo para dobrar — primeiro é preciso lançar os dados iniciais.';

  @override
  String get buddyDoubleBeforeRoll =>
      'Só pode dobrar na sua vez e antes de lançar os dados.';

  @override
  String get buddyDoubleCrawford =>
      'Não há duplicação no jogo de Crawford — este jogo único decide a partida.';

  @override
  String get buddyDoubleNotOwner =>
      'Só quem tem o cubo pode dobrar; neste momento, pertence ao outro lado.';

  @override
  String get buddyDoubleUnavailable => 'Não é possível dobrar neste momento.';

  @override
  String get buddyLookingAtBoard => 'O Buddy está a olhar para o tabuleiro.';

  @override
  String get buddyCameraPlayFallback =>
      'Ainda pode jogar a partida: introduza cada lançamento no teclado dos dados e faça as jogadas no tabuleiro abaixo.';

  @override
  String get buddySkipCheck => 'Ignorar esta verificação';

  @override
  String get buddyFixedIt => 'Já corrigi';

  @override
  String get buddyDrop => 'Desistir';

  @override
  String get buddyTake => 'Aceitar';

  @override
  String get buddyDone => 'Concluído';

  @override
  String get buddyTranscriptLabel => 'O que o Buddy disse';

  @override
  String get buddyUndo => 'Anular';

  @override
  String get buddyConfirm => 'Confirmar';

  @override
  String get buddyDice => 'Dados';

  @override
  String get buddyDouble => 'Dobrar';

  @override
  String get buddyDicePadTitle => 'Que dados lançou?';

  @override
  String get buddyEnterRoll => 'Introduzir lançamento';

  @override
  String get buddyContextBeforeGame => 'Jogar com o Buddy';

  @override
  String buddyContextMatchScore(
    String you,
    String buddy,
    String length,
    String number,
  ) {
    return 'Tu $you–$buddy Buddy · até $length · Jogo $number';
  }

  @override
  String get buddyCameraUnavailable =>
      'Não foi possível iniciar a câmara. Verifique as permissões e tente novamente.';

  @override
  String get buddyCameraPermission =>
      'O Backgammon Buddy não tem permissão para usar a câmara. Ative o acesso à câmara nas definições do dispositivo e tente novamente.';

  @override
  String get buddyCalibrationTitle => 'Mostre o tabuleiro ao Buddy';

  @override
  String get buddyCalibrationCornersFold =>
      'Arraste as quatro marcas exteriores para os cantos do pano — não para a moldura de madeira — e as quatro pequenas para as junções da dobradiça com as bordas de cima e de baixo.';

  @override
  String get buddyCalibrationCornersFlat =>
      'Arraste cada marca para um canto do pano, a superfície de jogo, e não para a moldura de madeira.';

  @override
  String get buddyCalibrationCheckLines =>
      'Depois, verifique as doze linhas em cada metade: todas devem acompanhar um ponto do tabuleiro. Se alguma falhar o ponto, ajuste a marca correspondente.';

  @override
  String get buddyCalibrationSeatQuestion => 'Qual metade é o seu campo?';

  @override
  String get buddyCalibrationSeatHelp =>
      'A metade mais próxima da parte inferior da imagem. Isto define a numeração dos pontos, e as linhas acima acompanham-na.';

  @override
  String get buddyCalibrationCaptureWait =>
      'Mantenha o telemóvel imóvel. O Buddy espera que a imagem estabilize para aprender este tabuleiro.';

  @override
  String get buddyCalibrationConfirmQuestion => 'Este é o seu tabuleiro?';

  @override
  String get buddyCalibrationConfirmFallback =>
      'O Buddy está a observar o tabuleiro que acabou de aprender.';

  @override
  String get buddyCalibrationConfirmHelp =>
      'As peças desenhadas sobre a imagem mostram o que o Buddy pensa que está no tabuleiro. Se alguma estiver no sítio errado, comece de novo — agora demora segundos, mais tarde pode custar uma partida.';

  @override
  String get buddyCalibrationNext => 'Seguinte';

  @override
  String get buddyCalibrationBack => 'Voltar';

  @override
  String get buddyCalibrationCapture => 'Capturar';

  @override
  String get buddyCalibrationStartOver => 'Começar de novo';

  @override
  String get buddyCalibrationLooksRight => 'Parece correto';

  @override
  String get buddyCalibrationCornersInvalid =>
      'Estas quatro marcas não delimitam um tabuleiro — uma cruzou-se com outra. Arraste-as novamente para os cantos do pano.';

  @override
  String get buddyCalibrationPrepTitle => 'Primeiro, três coisas';

  @override
  String get buddyCalibrationRemoveDiceTitle => 'Retire os dados do tabuleiro.';

  @override
  String get buddyCalibrationRemoveDiceBody =>
      'O Buddy vai aprender o tabuleiro sem peças. Se deixar um dado no pano, ele será aprendido como parte do tabuleiro e o Buddy deixará de conseguir ver os dados nesta sessão.';

  @override
  String get buddyCalibrationSetupCheckersTitle =>
      'Prepare as peças para o início de uma partida.';

  @override
  String get buddyCalibrationSetupCheckersBody =>
      'As trinta peças nas posições conhecidas permitem ao Buddy aprender as duas cores do tabuleiro sem precisar que lhas indique.';

  @override
  String get buddyCalibrationFitBoardTitle => 'Enquadre todo o campo de jogo.';

  @override
  String get buddyCalibrationFitBoardBody =>
      'Depois, deixe o telemóvel onde está. Se ele se mexer, o Buddy avisa e pode reajustar os cantos.';

  @override
  String get buddyCalibrationBoardKind => 'Que tipo de tabuleiro tem?';

  @override
  String get buddyCalibrationFlatBoard => 'Tabuleiro plano';

  @override
  String get buddyCalibrationFoldingBoard => 'Tabuleiro dobrável';

  @override
  String get buddyCalibrationBoardKindHelp =>
      'Um tabuleiro dobrável precisa de mais quatro marcas nas junções da dobradiça.';

  @override
  String get buddyCalibrationNoCameraBody =>
      'O modo Buddy observa um tabuleiro real, por isso não pode iniciar sem a câmara. O resto da aplicação continua a funcionar normalmente.';

  @override
  String buddyHandleHingeSeam(int number) {
    return 'Junção da dobradiça $number de 4';
  }

  @override
  String buddyHandleCorner(int number) {
    return 'Canto do tabuleiro $number de 4';
  }

  @override
  String get buddyNudgeLeft => 'Ajustar para a esquerda';

  @override
  String get buddyNudgeRight => 'Ajustar para a direita';

  @override
  String get buddyNudgeUp => 'Ajustar para cima';

  @override
  String get buddyNudgeDown => 'Ajustar para baixo';

  @override
  String get buddyCalibrationProblemCorners =>
      'Estes quatro cantos não delimitam um tabuleiro. Arraste cada marca para um canto do campo de jogo e tente novamente.';

  @override
  String get buddyCalibrationProblemFoldCorners =>
      'Estes oito pontos não delimitam um tabuleiro dobrável. Coloque quatro nos cantos do campo e quatro nas junções da dobradiça; depois, tente novamente.';

  @override
  String get buddyCalibrationProblemUnreadable =>
      'Não consigo distinguir o tabuleiro — está totalmente tapado ou perdido na sombra ou no reflexo. Desimpeça-o, melhore a iluminação e tente novamente.';

  @override
  String buddyCalibrationProblemRegionUnreadable(String region) {
    return 'Não consigo distinguir $region — pode haver algo pousado aí ou esse canto pode estar demasiado escuro. Desimpeça-o ou melhore a iluminação e tente novamente.';
  }

  @override
  String get buddyCalibrationProblemColours =>
      'As duas cores das peças parecem demasiado semelhantes daqui. Mais luz ou um ângulo com menos reflexo costuma resolver o problema.';

  @override
  String buddyCalibrationProblemWrongChecker(int number) {
    return 'As peças não estão na posição inicial — o ponto $number tem uma peça da cor errada. Prepare o tabuleiro para o início de uma partida e calibre novamente.';
  }

  @override
  String get buddyCalibrationProblemOverexposed =>
      'Há tanta luz no tabuleiro que as cores se confundem. Diminua a luz ou mude o telemóvel de posição para a lâmpada não refletir diretamente na câmara.';

  @override
  String get buddyCalibrationProblemReadBack =>
      'Consigo ler o tabuleiro, mas não está preparado para começar uma partida. Coloque as peças na posição inicial e calibre novamente.';

  @override
  String get buddyCalibrationProblemStacks =>
      'Consigo ler o tabuleiro, mas não percebo bem a distância entre peças sobrepostas, por isso contaria mal. Mais luz nos pontos próximos ou um ângulo da câmara um pouco mais alto costuma resolver.';

  @override
  String get buddyCalibrationProblemNotVisible =>
      'Não consigo ver o tabuleiro todo. Afaste o telemóvel ou arraste os cantos para o campo de jogo.';

  @override
  String buddyConfirmBoardOutOfFrame(String region) {
    return 'Já não consigo ver o tabuleiro todo — $region está fora da imagem. Alinhe novamente a câmara ou verifique os cantos.';
  }

  @override
  String get buddyConfirmStartingPosition => 'Parece estar na posição inicial.';

  @override
  String get buddyConfirmNoCheckers =>
      'Não consigo ver nenhuma peça numa posição inicial. Prepare o tabuleiro para o início de uma partida e tente novamente.';

  @override
  String buddyConfirmWrongPosition(String details, String more) {
    return 'O tabuleiro não está preparado para o início de uma partida: $details$more.';
  }

  @override
  String buddyConfirmRegionEmpty(String region, String side) {
    return '$region parece vazio, mas a partida começa com $side nessa posição';
  }

  @override
  String buddyConfirmRegionUnexpected(String region, String side) {
    return '$region tem $side, mas a partida começa com essa posição vazia';
  }

  @override
  String buddyConfirmRegionWrongSide(
    String region,
    String observed,
    String expected,
  ) {
    return '$region tem $observed, mas a partida começa com $expected nessa posição';
  }

  @override
  String get buddyReadabilityMotion =>
      'Fique imóvel por um instante — perco o tabuleiro quando o telemóvel se mexe.';

  @override
  String get buddyReadabilityWrongFrame =>
      'A imagem que recebo não é a mesma em que este tabuleiro foi configurado, por isso não consigo alinhá-lo. Configure novamente o tabuleiro a partir daqui.';

  @override
  String get buddyReadabilityBlur =>
      'A imagem está demasiado desfocada para ler o tabuleiro. Aguarde um momento até a câmara focar.';

  @override
  String get buddyReadabilityCalibrationStale =>
      'O tabuleiro já não está onde o aprendi. Alinhe novamente os cantos e retomo a partida de imediato.';

  @override
  String get buddyReadabilityOccluded =>
      'Há algo a tapar parte do tabuleiro. Continuo assim que estiver desimpedido.';

  @override
  String get buddyReadabilityClear => 'Consigo ver o tabuleiro.';

  @override
  String get buddyReadabilityColorChanged =>
      'A cor da luz sobre o tabuleiro mudou e ele já não parece igual ao que aprendi. Alinhe novamente os cantos com esta luz e retomo a partida.';

  @override
  String get buddyReadabilityTooDark =>
      'Está demasiado escuro para ler o tabuleiro. Com um pouco mais de luz, continuo de onde parámos.';

  @override
  String get buddyReadabilityTooBright =>
      'Há tanta luz no tabuleiro que as cores se confundem. Diminua a luz ou mude o telemóvel para a lâmpada não refletir diretamente na câmara.';

  @override
  String buddyPromptBeliefMirror(String reason) {
    return 'O Buddy ainda não consegue ver a sua jogada — $reason.';
  }

  @override
  String buddyCameraUnavailablePlay(String cameraMessage) {
    return '$cameraMessage\n\nAinda pode jogar a partida: introduza cada lançamento no teclado dos dados e faça as jogadas no tabuleiro abaixo.';
  }

  @override
  String get buddyCameraGenericError =>
      'Não foi possível iniciar a câmara. Verifique as permissões e tente novamente.';

  @override
  String buddyRegionPoint(int number) {
    return 'o ponto $number';
  }

  @override
  String get buddyRegionBar => 'a barra';

  @override
  String get buddyRegionWhiteTray => 'a bandeja de saída das brancas';

  @override
  String get buddyRegionBlackTray => 'a bandeja de saída das pretas';

  @override
  String get buddyRegionDiceZone => 'o centro do tabuleiro';

  @override
  String get buddyCalibrationProblemVisible =>
      'Não consigo ver o tabuleiro todo. Afaste o telemóvel ou arraste os cantos para o campo de jogo.';

  @override
  String buddyConfirmMore(int number) {
    return ' (e mais $number)';
  }

  @override
  String get buddyDiceOpeningCaption =>
      'Um dado para cada jogador. A face de cada dado determina quem começa.';

  @override
  String get buddyDiceOpeningFirst => 'Dado das brancas';

  @override
  String get buddyDiceOpeningSecond => 'Dado das pretas';

  @override
  String get buddyDiceRegularCaption =>
      'As duas faces lançadas, em qualquer ordem.';

  @override
  String get buddyDiceRegularFirst => 'Um dado';

  @override
  String get buddyDiceRegularSecond => 'O outro dado';

  @override
  String get evaluationEngine => 'Motor de avaliação';

  @override
  String get parallelEngineAnalysis => 'Analisar com ambos os motores';

  @override
  String get parallelEngineExplanation =>
      'Compare os conselhos separados de wildbg e GNUbg no tutor.';

  @override
  String get engineComparison => 'Comparação de motores';

  @override
  String get engineWinChance => 'Probabilidade de vitória';

  @override
  String get buddyBar => 'a barra';

  @override
  String get buddyOff => 'desligado';

  @override
  String get buddyHitSuffix => ', batendo';

  @override
  String buddyFriendlyMoveOne(String from, String to, String hit) {
    return 'Mova uma peça de $from para $to $hit';
  }

  @override
  String buddyFriendlyMoveMany(
    String count,
    String from,
    String to,
    String hit,
  ) {
    return 'Mova $count peças de $from para $to $hit';
  }

  @override
  String buddyFriendlyBearOffOne(String from, String hit) {
    return 'Tire uma peça de $from $hit';
  }

  @override
  String buddyFriendlyBearOffMany(String count, String from, String hit) {
    return 'Tire $count peças de $from $hit';
  }

  @override
  String buddySpeechIRolled(String dice) {
    return 'Eu rolei $dice.';
  }

  @override
  String buddySpeechYouRolled(String dice) {
    return 'Você rolou $dice.';
  }

  @override
  String buddySpeechOpeningTie(String die) {
    return 'Ambos rolaram $die. Role novamente.';
  }

  @override
  String get buddySpeechNoPlayYouTurn => 'Não há jogo, então é a sua vez.';

  @override
  String get buddySpeechNoPlayBuddyTurn =>
      'Não há jogo, então é a vez de Buddy.';

  @override
  String get buddySpeechNoPlayPass => 'Sem jogo – sua vez passa.';

  @override
  String get buddySpeechNoPlayBack =>
      'Não há jogo, então está de volta para você.';

  @override
  String get buddySpeechIllegalPlay => 'Essa não é uma jogada legal.';

  @override
  String buddySpeechPlacementMismatch(String reason) {
    return 'Isso não está certo. $reason';
  }

  @override
  String buddyBoardMismatch(String details, String more) {
    return 'O tabuleiro difere do jogo: $details$more.';
  }

  @override
  String buddyConfirmRegionWrongCount(
    String region,
    String expected,
    String side,
    String observed,
  ) {
    return '$region: o jogo espera $expected $side damas; a câmera vê $observed.';
  }

  @override
  String get buddySpeechSkippedCheck =>
      'Vou acreditar na sua palavra. Eu não consegui ver aquela terra, então, se nos separarmos, ela aparecerá como uma peça que não consigo ler.';

  @override
  String get buddySpeechBuddyDouble => 'Eu dobro - pego ou deixo cair?';

  @override
  String get buddySpeechYouDouble => 'Você dobra.';

  @override
  String get buddySpeechBuddyTakes => 'eu tomo.';

  @override
  String get buddySpeechYouTake => 'Você pega.';

  @override
  String get buddySpeechBuddyDrops => 'Eu caio.';

  @override
  String get buddySpeechYouDrop => 'Você cai.';

  @override
  String buddySpeechGameWinnerBuddy(String points) {
    return 'Eu ganhei este jogo: $points.';
  }

  @override
  String buddySpeechGameWinnerYou(String points) {
    return 'Você ganhou este jogo: $points.';
  }

  @override
  String get buddySpeechMatchWinnerBuddy => 'Essa é a combinação para mim.';

  @override
  String get buddySpeechMatchWinnerYou => 'Você vence a partida.';

  @override
  String get buddyTutorLastPlayBest =>
      'Sua última jogada combinou com a melhor do motor.';

  @override
  String get buddyTutorLastPlayClose =>
      'Sua última jogada foi próxima da melhor do motor.';

  @override
  String buddyTutorPreferredMove(String move, String reason) {
    return 'Para sua última jogada, o mecanismo preferiu $move. $reason';
  }

  @override
  String buddyTutorBarDifference(String best, String played) {
    return 'Deixa $best peças opostas na barra em vez de $played.';
  }

  @override
  String buddyTutorBlotDifference(String best, String played) {
    return 'Deixa $best manchas em vez de $played.';
  }

  @override
  String buddyTutorHomeDifference(String best, String played) {
    return 'Possui $best pontos no homeboard em vez de $played.';
  }

  @override
  String buddyTutorOffDifference(String best, String played) {
    return 'Tem $best peças desativadas em vez de $played.';
  }

  @override
  String get buddyTutorGeneralDifference =>
      'A classificação pesa vitórias e jogos estimados; nenhum recurso único da placa explica isso.';

  @override
  String buddySpeechPlay(String move) {
    return 'Jogar $move';
  }

  @override
  String buddySpeechBuddyRolledMove(String dice, String move) {
    return 'Eu rolei $dice — $move';
  }

  @override
  String get privacyDeletionReceiptCheck => 'Verificar confirmação de exclusão';

  @override
  String get privacyDeletionReceiptHelp =>
      'Após solicitar a exclusão, volte aqui para verificar se ela foi concluída. Seu comprovante privado permanece neste dispositivo e funciona após sair da conta. As verificações não criam uma conta. As confirmações de conclusão ficam disponíveis online por 90 dias; mantenha esta instalação até receber a confirmação.';

  @override
  String get privacyDeletionReceiptNone =>
      'Nenhum comprovante de exclusão está salvo neste dispositivo. Para solicitações anteriores ou em caso de perda do dispositivo, entre em contato com o suporte.';

  @override
  String get privacyDeletionReceiptPending =>
      'A exclusão ainda não foi confirmada. O processamento pode levar até 30 dias. Verifique novamente mais tarde. Se já passaram mais de 30 dias, entre em contato com o suporte. Um comprovante indisponível ou expirado não comprova a exclusão.';

  @override
  String get privacyDeletionReceiptComplete =>
      'Exclusão concluída: todas as solicitações salvas neste dispositivo foram confirmadas como concluídas. Isso não exclui uma identidade online criada posteriormente. O histórico local e os dados de aprendizado permanecem. O Google pode manter cópias de segurança e registros de segurança conforme descrito na política de privacidade.';

  @override
  String get privacyDeletionReceiptFailed =>
      'Não foi possível verificar a confirmação de exclusão. Tente novamente quando houver conexão ou entre em contato com o suporte. Isso não confirma a conclusão da exclusão.';
}
