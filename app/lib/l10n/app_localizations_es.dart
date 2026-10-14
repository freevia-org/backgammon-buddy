// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get homeTagline => 'Mejora tu juego con un tutor';

  @override
  String get settings => 'Ajustes';

  @override
  String get playVsComputer => 'Jugar contra el ordenador';

  @override
  String get twoPlayers => 'Dos jugadores';

  @override
  String get playNearby => 'Jugar cerca';

  @override
  String get playOnline => 'Jugar en línea';

  @override
  String get learningPractice => 'Aprender y practicar';

  @override
  String get gamesArchive => 'Archivo de partidas';

  @override
  String get followSystem => 'Seguir el idioma del dispositivo';

  @override
  String get white => 'Blancas';

  @override
  String get black => 'Negras';

  @override
  String get random => 'Aleatorio';

  @override
  String get startMatch => 'Iniciar partida';

  @override
  String get tutor => 'Tutor';

  @override
  String get noMovesPass => 'Sin movimientos: pasar';

  @override
  String get undo => 'Deshacer';

  @override
  String get confirm => 'Confirmar';

  @override
  String get roll => 'Tirar';

  @override
  String get hint => 'Pista';

  @override
  String get tutoringStyle => 'Estilo de tutoría';

  @override
  String get tutorStyleCoach => 'Entrenador';

  @override
  String get tutorStyleHintsOnly => 'Solo pistas';

  @override
  String get tutorStyleTryFirst => 'Inténtalo primero';

  @override
  String get tutorCoachDescription =>
      'Avisos sobre la posición, comentarios sobre tus jugadas, pistas y consejos sobre el cubo.';

  @override
  String get tutorHintsDescription =>
      'Jugadas ordenadas bajo demanda. Los avisos sobre la posición y los comentarios automáticos tras cada jugada permanecen desactivados.';

  @override
  String get tutorTryFirstDescription =>
      'Prepara tu jugada antes de ver las opciones ordenadas o su valoración; la guía sobre el tablero permanece activa.';

  @override
  String get tutorCustomDescription =>
      'Combinación personalizada. Ajusta cualquiera de las opciones siguientes.';

  @override
  String get tutorBestMoveHints => 'Pistas sobre la mejor jugada';

  @override
  String get tutorRevealRankedPlays =>
      'Mostrar las jugadas ordenadas mientras decides';

  @override
  String get tutorMoveExplanations => 'Explicaciones de la jugada';

  @override
  String get tutorCompareEstimates =>
      'Comparar las estimaciones y los cambios en el tablero';

  @override
  String get tutorGameCommentary => 'Comentarios de la partida';

  @override
  String get tutorPositionPrompts =>
      'Avisos sobre la posición y comentarios después de cada jugada';

  @override
  String get tutorCubeAdvice => 'Consejos sobre el cubo';

  @override
  String get tutorMatchAwareCubeAdvice =>
      'Sugerencias de doblar, aceptar o pasar según el marcador de la partida';

  @override
  String get tutorTryMoveFirst => 'Prueba una jugada primero';

  @override
  String get tutorStageBeforeHints =>
      'Prepara tu jugada antes de mostrar las pistas o su valoración';

  @override
  String get tutorStaticEstimateNote =>
      'Estimación estática rápida (0-ply, sin simulaciones); las notas describen cambios en el tablero y posibles respuestas, no garantizan lo que sucederá.';

  @override
  String get tutorWhatToWatchNext => 'En qué fijarte a continuación';

  @override
  String get tutorMoreBoardDetails => 'Más detalles del tablero';

  @override
  String get tutorEstimatesAndHowTheyWork => 'Estimaciones y cómo funcionan';

  @override
  String get tutorEstimateLimitations =>
      'Profundidad: evaluación neuronal estática tras cada jugada legal (0-ply), sin simulaciones ni búsqueda de respuestas futuras. El MWC, que tiene en cuenta el marcador, pondera esas estimaciones según el resultado de la partida y el cubo actual; no modela futuras decisiones sobre el cubo. La equidad sin cubo son los puntos esperados con el cubo a 1 cuando no se conoce el marcador. Las observaciones describen los cambios en el tablero, no el razonamiento interno del motor neuronal. Que dos valoraciones estén muy próximas no implica certeza; no se ofrece un intervalo de confianza calibrado.';

  @override
  String get tutorPointNumberNote =>
      'En las notas didácticas, los puntos se cuentan desde el tablero propio del jugador que mueve.';

  @override
  String get tutorHittingRollNote =>
      'El recuento de tiradas que permiten golpear incluye los 36 resultados ordenados de los dados y los golpes directos o indirectos legales; son oportunidades, no una predicción de lo que elegirá el rival.';

  @override
  String get tutorNoEvaluatedAlternatives =>
      'No hay alternativas evaluadas disponibles para esta jugada.';

  @override
  String get tutorForcedPassNoDecision =>
      'Un pase forzado no implica decidir cómo mover las fichas.';

  @override
  String get settingsReset => 'Restablecer';

  @override
  String get settingsAppLanguage => 'Idioma de la aplicación';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get settingsThemeSystem => 'Sistema';

  @override
  String get settingsThemeLight => 'Claro';

  @override
  String get settingsThemeDark => 'Oscuro';

  @override
  String get settingsAnimationSpeed => 'Velocidad de animación';

  @override
  String get settingsAnimationNone => 'Ninguna';

  @override
  String get settingsAnimationNormal => 'Normal';

  @override
  String get settingsAnimationFast => 'Rápida';

  @override
  String get settingsDiceRollAnimation => 'Animación de los dados';

  @override
  String get settingsDiceRollAnimationHelp =>
      'Lanza los dados antes de cada tirada';

  @override
  String get settingsDefaultMatchLength =>
      'Duración predeterminada de la partida';

  @override
  String get settingsDefaultDifficulty => 'Dificultad predeterminada';

  @override
  String get settingsDifficultyEasy => 'Fácil';

  @override
  String get settingsDifficultyMedium => 'Media';

  @override
  String get settingsDifficultyHard => 'Difícil';

  @override
  String get settingsDifficultyExpert => 'Experto';

  @override
  String get settingsTutorModeDefault => 'Modo de tutor predeterminado';

  @override
  String get settingsTutorAuto => 'Automático';

  @override
  String get settingsTutorOn => 'Activado';

  @override
  String get settingsTutorOff => 'Desactivado';

  @override
  String get settingsTutorModeHelp =>
      'Automático activa el tutor con cualquier nivel de dificultad del ordenador. Activado y Desactivado fijan la opción inicial de las partidas locales. Las partidas cercanas y en línea no tienen ayuda; puedes revisar sus partidas guardadas después. Las preferencias de enseñanza de abajo se guardan en este dispositivo.';

  @override
  String get settingsTutorPreferences => 'Preferencias del tutor';

  @override
  String get settingsTutorPreferencesSubtitle =>
      'Valores predeterminados guardados para futuras partidas';

  @override
  String get settingsTutorSaveError =>
      'No se pudieron guardar las preferencias del tutor.';

  @override
  String get settingsGameplay => 'Juego';

  @override
  String get settingsMoveHighlights => 'Resaltado de movimientos';

  @override
  String get settingsMoveHighlightsHelp =>
      'Rodea las fichas que puedes elegir e ilumina los destinos';

  @override
  String get settingsDragToMove => 'Arrastrar para mover';

  @override
  String get settingsDragToMoveHelp =>
      'Arrastra una ficha hasta su destino (los toques siempre funcionan)';

  @override
  String get settingsCombinedMoves => 'Movimientos combinados';

  @override
  String get settingsCombinedMovesHelp =>
      'Un toque mueve una ficha usando ambos dados';

  @override
  String get settingsRotateBoard => 'Girar el tablero entre turnos';

  @override
  String get settingsRotateBoardHelp =>
      'Partida en el mismo dispositivo: invierte la vista para el jugador activo';

  @override
  String get settingsPassDevice => 'Pantalla para pasar el dispositivo';

  @override
  String get settingsPassDeviceHelp =>
      'Oculta el tablero entre turnos en partidas en el mismo dispositivo';

  @override
  String get settingsShowScore => 'Mostrar puntuación';

  @override
  String get settingsShowScoreHelp =>
      'Muestra la puntuación actual de la partida en el encabezado';

  @override
  String get settingsBuddyMode => 'Modo Buddy';

  @override
  String get settingsBuddyTerse => 'Breve';

  @override
  String get settingsBuddyFriendly => 'Cercano';

  @override
  String get settingsBuddyTerseHelp =>
      'Cómo expresa Buddy una jugada en voz alta: «13/8, 24/22», la notación que usan de verdad dos jugadores frente al tablero.';

  @override
  String get settingsBuddyFriendlyHelp =>
      'Cómo expresa Buddy una jugada en voz alta: «Mueve una ficha del 13 al 8 y otra del 24 al 22».';

  @override
  String get settingsListenForDice => 'Escuchar los dados';

  @override
  String get settingsListenForDiceHelp =>
      'Buddy mira el tablero antes cuando oye una tirada. Desactivarlo no cambia nada más.';

  @override
  String get settingsDiagnostics => 'Diagnóstico';

  @override
  String get settingsErrorLog => 'Registro de errores';

  @override
  String get settingsErrorLogHelp =>
      'Errores recientes, listos para copiar en un informe de errores';

  @override
  String get settingsReportBug => 'Informar de un error';

  @override
  String get settingsReportBugHelp => 'Abrir un informe guiado en GitHub';

  @override
  String get settingsSuggestIdea => 'Proponer una idea';

  @override
  String get settingsSuggestIdeaHelp =>
      'Ayúdanos a mejorar el tutor y el juego';

  @override
  String get settingsAbout => 'Acerca de';

  @override
  String get settingsOpenSourceLicenses => 'Licencias de código abierto';

  @override
  String settingsAppVersion(Object version) {
    return 'Backgammon Buddy $version';
  }

  @override
  String get tutorPhraseGameFinished => 'Partida terminada.';

  @override
  String get tutorPhraseReviewFinishedGame =>
      'Revisa las jugadas para encontrar una decisión que practicar.';

  @override
  String get tutorPhraseCubeOffered => 'Se ha ofrecido el cubo de doblar.';

  @override
  String get tutorPhraseCubeDecisionPrompt =>
      'Decide si aceptas o pasas antes de planear una jugada con fichas.';

  @override
  String get tutorPhraseCubeScoreContext =>
      'La puntuación del encuentro cambia el valor de la apuesta adicional.';

  @override
  String get tutorPhraseResignationOffered =>
      'Se ha ofrecido abandonar la partida.';

  @override
  String get tutorPhraseResignationDecisionPrompt =>
      'Compara los puntos ofrecidos con la posición antes de aceptar o continuar.';

  @override
  String get tutorPhraseNoLegalPlay =>
      'No hay ninguna jugada legal con esta tirada.';

  @override
  String get tutorPhraseForcedPassPrompt =>
      'Pasar por obligación no es un error; espera a la siguiente tirada.';

  @override
  String get tutorPhraseOnlyOneResult => 'Solo hay una posición final legal.';

  @override
  String get tutorPhraseForcedTurnPrompt =>
      'Haz la jugada obligatoria. Esta tirada no ofrece ninguna decisión que evaluar.';

  @override
  String get tutorPhrasePipCountsLevel =>
      'Los conteos de pips están igualados.';

  @override
  String tutorPhrasePipCountsAhead(int count) {
    return 'Tienes $count pips de ventaja.';
  }

  @override
  String tutorPhrasePipCountsBehind(int count) {
    return 'Tienes $count pips de desventaja.';
  }

  @override
  String tutorPhrasePlayerHasCheckersOnBar(int count) {
    return 'Tienes $count fichas en la barra: primero hay que reingresarlas.';
  }

  @override
  String get tutorPhraseEnterBeforeMoving =>
      'Reingresa antes de mover otra ficha; después busca una casilla segura.';

  @override
  String tutorPhraseOpponentHomePoints(int count) {
    return 'El rival tiene $count puntos cerrados en su casa.';
  }

  @override
  String get tutorPhraseBearOffRace => 'Carrera de salida.';

  @override
  String get tutorPhrasePureRace => 'Una carrera pura.';

  @override
  String get tutorPhraseBearOffSpread =>
      'Saca fichas dejando una distribución útil para la siguiente tirada.';

  @override
  String get tutorPhraseBringRearCheckersHome =>
      'Lleva a casa las fichas atrasadas sin amontonar demasiadas en un punto.';

  @override
  String get tutorPhraseArmiesHavePassed =>
      'Las fichas se han cruzado; ya no es posible golpear.';

  @override
  String tutorPhraseContactStillMatters(Object part) {
    return '$part El contacto sigue siendo importante.';
  }

  @override
  String tutorPhraseOpponentHasCheckersOnBar(int count) {
    return 'El rival tiene $count fichas en la barra.';
  }

  @override
  String get tutorPhraseKeepBoardClosed =>
      'Mantén cerrados tus puntos mientras llevas a casa las fichas restantes.';

  @override
  String get tutorPhraseBuildOrPreserveHomeBoard =>
      'Construye o conserva tu casa mientras el rival intenta entrar.';

  @override
  String tutorPhraseHomePointsCloseEntries(int count) {
    return 'Tienes $count puntos cerrados en casa; cada uno bloquea un número de entrada.';
  }

  @override
  String tutorPhrasePrimeContact(int count) {
    return 'Contacto con una barrera de $count puntos.';
  }

  @override
  String get tutorPhraseExtendPrimeOrKeepSpares =>
      'Compara alargar la barrera con conservar fichas de reserva para mantenerla.';

  @override
  String tutorPhraseSpareCheckersCanMove(int count) {
    return '$count fichas de reserva pueden moverse sin abrir su punto inmediatamente.';
  }

  @override
  String tutorPhraseAnchorContact(Object points) {
    return 'Contacto con un ancla en $points.';
  }

  @override
  String get tutorPhraseCompareAnchorProgressAhead =>
      'Compara el avance de tus fichas atrasadas con la seguridad de conservar el ancla.';

  @override
  String get tutorPhraseCompareAnchorProgressBehind =>
      'Ten presente el apoyo seguro mientras buscas un golpe o mejoras tu tablero.';

  @override
  String get tutorPhrasePreserveAnchorFoothold =>
      'No pueden golpear el ancla, pero esas fichas aún tienen mucho camino hasta casa.';

  @override
  String get tutorPhraseContactThreats =>
      'Hay contacto: ambos bandos aún pueden amenazar con golpear.';

  @override
  String get tutorPhraseLookForPointsAndSafety =>
      'Busca puntos útiles y luego sopesa el riesgo de dejar fichas solas expuestas.';

  @override
  String tutorPhraseHomePointsAndBlots(int count, int otherCount) {
    return 'Tienes $count puntos cerrados en casa y dejas $otherCount fichas expuestas.';
  }

  @override
  String get tutorPhraseChooseCheckerPrompt =>
      'Elige una ficha para empezar tu jugada.';

  @override
  String get tutorPhraseLegalPlayPrompt =>
      'Empieza una jugada legal para ver un comentario.';

  @override
  String tutorPhraseStagedHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'fichas rivales',
      one: 'ficha rival',
    );
    return 'Has golpeado $count $_temp0.';
  }

  @override
  String tutorPhraseStagedEnter(int count) {
    return 'Has reingresado $count fichas desde la barra.';
  }

  @override
  String tutorPhraseStagedBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'fichas',
      one: 'ficha',
    );
    return 'Has sacado $count $_temp0.';
  }

  @override
  String tutorPhraseStagedMakePoints(Object points) {
    return 'Has formado $points.';
  }

  @override
  String tutorPhraseStagedBlot(int point) {
    return 'La ficha de tu punto $point está expuesta por ahora.';
  }

  @override
  String tutorPhraseStagedSpare(int point) {
    return 'La ficha de reserva de tu punto $point puede moverse más tarde sin dejar abierto el punto.';
  }

  @override
  String tutorPhraseStagedPartialPrompt(Object part) {
    return '$part Usa los dados restantes antes de valorar la jugada completa.';
  }

  @override
  String get tutorPhraseStagedAllCheckersOff =>
      'Has sacado las 15 fichas: has ganado la partida.';

  @override
  String get tutorPhraseStagedHitShortPlan =>
      'El golpe gana tiempo mientras el rival intenta volver a entrar.';

  @override
  String get tutorPhraseStagedEfficientBearOffPlan =>
      'Una salida eficiente saca fichas y deja números útiles para la siguiente tirada.';

  @override
  String get tutorPhraseStagedRaceHomePlan =>
      'El plan de carrera es llevar a casa las fichas atrasadas y crear puntos útiles para sacar.';

  @override
  String get tutorPhraseStagedBearOffContactPlan =>
      'Sacar fichas hace avanzar, pero el contacto restante aún permite golpes.';

  @override
  String get tutorPhraseStagedReentryPlan =>
      'Reingresar devuelve la ficha a la partida; ahora busca una entrada segura.';

  @override
  String get tutorPhraseStagedHomeBoardPlan =>
      'El nuevo punto de casa elimina un número de entrada después de un futuro golpe.';

  @override
  String get tutorPhraseStagedPrimePlan =>
      'La barrera más larga cierra más puntos de entrada; las fichas de reserva ayudan a mantenerla.';

  @override
  String get tutorPhraseStagedLeaveAnchorPlan =>
      'Dejar el ancla te hace avanzar, pero renuncias a un apoyo seguro.';

  @override
  String get tutorPhraseStagedNewAnchorPlan =>
      'El nuevo ancla ofrece a las fichas atrasadas un apoyo seguro.';

  @override
  String get tutorPhraseStagedCoverBlotPlan =>
      'Cubrir una ficha expuesta le quita un objetivo al rival.';

  @override
  String get tutorPhraseStagedSafetyTradeoffPlan =>
      'La disyuntiva es avanzar o protegerse: las fichas que ayudan a construir también pueden quedar expuestas.';

  @override
  String tutorPhraseStagedCompletePrompt(Object part) {
    return '$part La jugada completa está preparada; pulsa «Confirmar» para ejecutarla.';
  }

  @override
  String get tutorMoveForcedVerdict =>
      'Esta tirada no permite elegir cómo mover las fichas; no se califica como una decisión.';

  @override
  String get tutorMoveTopVerdict => 'Es la mejor opción para esta posición.';

  @override
  String get tutorMoveAlternativeVerdict =>
      'El motor prefiere otra jugada en esta posición.';

  @override
  String tutorMoveEstimateDifference(Object loss) {
    return 'Diferencia respecto a la mejor jugada: $loss.';
  }

  @override
  String tutorMoveEstimateOutcomes(
    Object winPercent,
    Object winGammonPercent,
    Object loseGammonPercent,
  ) {
    return 'Tras esta jugada: $winPercent% de victorias, $winGammonPercent% de victorias por gammon o mejor y $loseGammonPercent% de derrotas por gammon o peor. Son estimaciones desde el punto de vista de quien mueve.';
  }

  @override
  String tutorMoveEstimateMatchChance(Object percent) {
    return 'Probabilidad estimada de ganar la partida: $percent%.';
  }

  @override
  String get tutorMovePlanAllCheckersOff =>
      'Las 15 fichas están fuera: la partida está ganada.';

  @override
  String tutorMovePlanHit(Object homeBoardAdvice) {
    return 'Aprovecha el golpe para ganar tiempo mientras el rival reentra. $homeBoardAdvice';
  }

  @override
  String get tutorMovePlanHitClosed =>
      'Mantén cerrados los puntos de tu casa para dificultar la entrada.';

  @override
  String get tutorMovePlanHitBuild =>
      'Cierra más puntos en tu casa para que al rival le cueste recuperarse de futuros golpes.';

  @override
  String get tutorMovePlanRaceBearOff =>
      'Busca una salida eficiente: saca fichas y conserva números útiles para la siguiente tirada.';

  @override
  String get tutorMovePlanRaceHome =>
      'Lleva las fichas retrasadas a casa y repártelas en puntos que faciliten sacarlas.';

  @override
  String get tutorMovePlanContactBearOff =>
      'Saca fichas, pero vigila las fichas retrasadas del rival: mientras haya contacto, una ficha expuesta al sacar puede ser un objetivo.';

  @override
  String get tutorMovePlanReentry =>
      'Vuelve al tablero y busca un punto seguro para la ficha que entra.';

  @override
  String get tutorMovePlanHomeBoard =>
      'Refuerza tu casa. El nuevo punto cerrado hará más efectivo un futuro golpe al quitar un número de entrada.';

  @override
  String get tutorMovePlanPrime =>
      'Mantén unidos los puntos cerrados de la prime. Guarda fichas sobrantes para que futuras tiradas no te obliguen a abrirla.';

  @override
  String get tutorMovePlanLeaveAnchor =>
      'Al dejar el ancla avanzas tus fichas retrasadas, pero pierdes una posición segura. Vigila su exposición durante el regreso.';

  @override
  String get tutorMovePlanNewAnchor =>
      'Usa la nueva ancla como base segura mientras mejoras el resto de tu posición.';

  @override
  String get tutorMovePlanCoverBlot =>
      'Agrupa y protege tus fichas. Cubrir un blot elimina un objetivo y mantiene disponibles futuros puntos de apoyo.';

  @override
  String get tutorMovePlanSafety =>
      'Equilibra el desarrollo y la seguridad: acerca constructores a puntos útiles y comprueba qué fichas solas pueden ser golpeadas.';

  @override
  String get tutorMoveObservationNoLegalPlay =>
      'No hay una jugada legal con las fichas: hay que pasar el turno.';

  @override
  String tutorMoveObservationHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'fichas rivales',
      one: 'ficha rival',
    );
    return 'Golpea $count $_temp0; el rival debe entrar desde la barra antes de mover las demás.';
  }

  @override
  String tutorMoveObservationEntry(int count) {
    return 'Entra $count ficha(s) desde la barra.';
  }

  @override
  String tutorMoveObservationBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'fichas',
      one: 'ficha',
    );
    return 'Saca $_temp0.';
  }

  @override
  String tutorMoveObservationMadePoints(Object points) {
    return 'Forma $points. Dos o más fichas aseguran un punto y bloquean allí el aterrizaje rival.';
  }

  @override
  String tutorMoveObservationBrokenPoints(Object pointLabel, Object points) {
    return 'Deja de formar $pointLabel $points. Esos puntos ya no bloquean al rival.';
  }

  @override
  String tutorMoveObservationNoBlots(int previousCount) {
    return 'No deja fichas solas expuestas (antes $previousCount). No hay fichas individuales que puedan ser golpeadas.';
  }

  @override
  String tutorMoveObservationBlots(int count, int previousCount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'fichas solas expuestas',
      one: 'ficha sola expuesta',
    );
    return 'Deja $count $_temp0 (antes $previousCount). Comprueba si el rival puede alcanzarlas antes de priorizar la seguridad sobre otra ganancia.';
  }

  @override
  String tutorMoveObservationPrimeRun(
    int count,
    int previousCount,
    Object primeAdvice,
  ) {
    return 'Mayor secuencia de puntos formados: $count (antes $previousCount). $primeAdvice';
  }

  @override
  String get tutorMoveObservationPrimeSix =>
      'Una prime de seis puntos no se puede cruzar mientras siga cerrada.';

  @override
  String get tutorMoveObservationPrimeBuild =>
      'Mantén constructores cerca si quieres alargar o conservar esta secuencia.';

  @override
  String tutorMoveObservationPrimeSpares(int count) {
    return 'Hay $count fichas sobrantes por encima de las dos que sostienen los puntos formados. Mover una sobrante puede mantener el punto; mover una de las dos últimas lo abre.';
  }

  @override
  String tutorMoveObservationAnchors(Object points, Object previousPoints) {
    return 'Anclas en la casa rival: $points (antes $previousPoints). Mantener un ancla protege esas fichas de los golpes; dejarla cambia esa base segura por progreso en la carrera.';
  }

  @override
  String get tutorMoveObservationPureRace =>
      'Carrera pura: los bandos ya se han cruzado y ninguno está en la barra. Ya no se puede golpear; importa sacar las fichas con eficiencia.';

  @override
  String get tutorMoveObservationNoReplyHit =>
      'Ninguna tirada legal del rival permite golpear una ficha en esta posición. Sigue habiendo contacto, así que otras jugadas pueden crear nuevas oportunidades.';

  @override
  String tutorMoveObservationReplyHit(
    int count,
    int total,
    int dieOne,
    int dieTwo,
    int point,
  ) {
    return 'El rival puede golpear con $count de $total tiradas. Por ejemplo, $dieOne–$dieTwo permite golpear legalmente tu punto $point. Que exista la opción no significa que vaya a elegirla.';
  }

  @override
  String tutorMoveObservationOpponentBarHome(
    int closedPoints,
    Object entryAdvice,
  ) {
    return 'Tienes $closedPoints puntos cerrados en tu casa. $entryAdvice';
  }

  @override
  String get tutorMoveObservationAllEntriesClosed =>
      'El rival no puede reentrar hasta que se abra un punto.';

  @override
  String get tutorMoveObservationOpenEntry =>
      'Una tirada que use un punto de entrada abierto puede devolver una ficha desde la barra.';

  @override
  String tutorMoveComparisonDetail(
    Object factors,
    Object delta,
    Object direction,
    Object scoreContext,
  ) {
    return '$factors La probabilidad estimada de victoria de la mejor jugada es $delta puntos porcentuales $direction.$scoreContext';
  }

  @override
  String get tutorMoveComparisonHigher => 'mayor';

  @override
  String get tutorMoveComparisonLower => 'menor';

  @override
  String tutorMoveComparisonScoreContext(Object scoreContext) {
    return ' Aun así puede quedar mejor porque los gammons y backgammons tienen distinto valor con el $scoreContext actual.';
  }

  @override
  String get tutorMoveComparisonStake => 'marcador';

  @override
  String get tutorMoveComparisonMatchScore => 'marcador del encuentro';

  @override
  String tutorMoveComparisonFactorBar(int bestCount, int playedCount) {
    return 'La mejor jugada deja $bestCount fichas rivales en la barra, frente a $playedCount. Una ficha en la barra debe reentrar antes de que el rival pueda mover las demás.';
  }

  @override
  String tutorMoveComparisonFactorHomeBoard(
    int bestCount,
    int playedCount,
    Object entryDifference,
  ) {
    return 'La mejor jugada mantiene cerrados $bestCount puntos de casa, frente a $playedCount: $entryDifference puntos de entrada tras un golpe.';
  }

  @override
  String get tutorMoveComparisonClosingMore => 'cerrar más';

  @override
  String get tutorMoveComparisonLeavingMore => 'dejar más abiertos';

  @override
  String tutorMoveComparisonFactorShots(
    int bestCount,
    int playedCount,
    Object riskDifference,
  ) {
    return 'La mejor jugada permite un golpe de respuesta en $bestCount de 36 tiradas, frente a $playedCount. $riskDifference';
  }

  @override
  String get tutorMoveComparisonReducesRisk =>
      'Eso reduce el riesgo inmediato de que te envíen a la barra.';

  @override
  String get tutorMoveComparisonExtraExposure =>
      'Compara esa exposición adicional con lo que la jugada gana por otro lado.';

  @override
  String tutorMoveComparisonFactorPrime(int bestCount, int playedCount) {
    return 'La secuencia más larga de puntos cerrados de la mejor jugada es de $bestCount, frente a $playedCount; compara el bloqueo con las fichas disponibles para mantenerlo.';
  }

  @override
  String tutorMoveComparisonFactorAnchors(
    Object bestPoints,
    Object playedPoints,
  ) {
    return 'La mejor jugada conserva $bestPoints anclas, frente a $playedPoints. Un ancla mantiene un punto seguro de aterrizaje; dejarla acerca esas fichas a casa.';
  }

  @override
  String tutorMoveComparisonFactorBearOff(int bestCount, int playedCount) {
    return 'La mejor jugada saca $bestCount fichas, frente a $playedCount. Cada ficha retirada es una menos que habrá que sacar después.';
  }

  @override
  String get tutorMoveComparisonFactorSimilarRisks =>
      'Ambas jugadas dejan la misma exposición inmediata a golpes, los mismos puntos de casa, anclas y fichas sacadas. Compara los puntos de aterrizaje: en la próxima tirada podrías aprovechar esas fichas de otra forma.';

  @override
  String get tutorMoveComparisonSummaryBar =>
      'La mejor jugada manda más fichas rivales a la barra y retrasa sus demás movimientos.';

  @override
  String get tutorMoveComparisonSummaryHomeBoard =>
      'La mejor jugada cierra más puntos de casa y dificulta la reentrada tras un golpe.';

  @override
  String get tutorMoveComparisonSummaryShots =>
      'La mejor jugada permite menos oportunidades inmediatas de golpe y reduce el riesgo de volver a la barra.';

  @override
  String get tutorMoveComparisonSummaryPrime =>
      'La mejor jugada conserva una secuencia más larga de puntos cerrados.';

  @override
  String get tutorMoveComparisonSummaryAnchors =>
      'La mejor jugada conserva más anclas seguras en la casa rival.';

  @override
  String get tutorMoveComparisonSummaryBearOff =>
      'La mejor jugada saca más fichas, así que quedan menos por retirar.';

  @override
  String tutorMoveComparisonSummaryBlots(int playedCount, int bestCount) {
    return 'Esta jugada deja $playedCount fichas solas; la mejor jugada deja $bestCount.';
  }

  @override
  String tutorMoveComparisonSummarySafeAnchor(int point) {
    return 'La mejor jugada conserva un ancla segura en el punto $point.';
  }

  @override
  String get tutorMoveComparisonSummaryEntry =>
      'La mejor jugada cierra más puntos de entrada por si golpean una de tus fichas.';

  @override
  String get tutorMoveComparisonSummarySimilarRisks =>
      'Las jugadas dejan riesgos inmediatos parecidos; compara qué puntos de aterrizaje seguirán siendo útiles en la próxima tirada.';

  @override
  String tutorMoveAssessmentEquityLoss(Object value) {
    return '$value de equidad';
  }

  @override
  String tutorMoveAssessmentMwcLoss(Object value) {
    return '$value puntos porcentuales de probabilidad de ganar el encuentro';
  }

  @override
  String get tutorMovePointSingular => 'punto';

  @override
  String get tutorMovePointPlural => 'puntos';

  @override
  String get tutorMoveNoPoints => 'ninguno';

  @override
  String get gameTutorCommentaryOff =>
      'Los comentarios de la partida están desactivados.';

  @override
  String get gameTutorToolsAvailable =>
      'Abre el tutor para usar las herramientas activadas.';

  @override
  String get gameTutorNextRoll => 'Ahora, tira los dados.';

  @override
  String get gameTutorNoEvaluatedReview =>
      'No hay una explicación evaluada para esta jugada guardada.';

  @override
  String get gameTutorAnalysisUnavailable => 'análisis no disponible';

  @override
  String get gameTutorReviewing => 'analizando…';

  @override
  String get gameTutorTryYourPlayFirst => 'Prueba primero tu propia jugada.';

  @override
  String get gameTutorKeepBuilding => 'Sigue completando tu jugada.';

  @override
  String get gameTutorStageCompleteBeforeCoaching =>
      'Completa una jugada legal antes de ver consejos o pistas.';

  @override
  String get gameTutorReadyToConfirm => 'Lista para confirmar';

  @override
  String get gameTutorPlayTakingShape => 'Tu jugada va tomando forma.';

  @override
  String get gameTutorConfirmOrUndo =>
      'Confirma para jugar o deshaz para reconsiderarlo.';

  @override
  String get gameTutorFinishDiceOrUndo =>
      'Usa los dados restantes o deshaz para reconsiderarlo.';

  @override
  String get gameTutorComputerConsidering =>
      'El ordenador está pensando su jugada.';

  @override
  String get gameTutorComputerPlayReviewed =>
      'Aquí se analizará su jugada cuando termine.';

  @override
  String get gameTutorYourPlay => 'Tu jugada';

  @override
  String get gameTutorComputer => 'Ordenador';

  @override
  String gameTutorPlayQuality(Object quality) {
    return 'Tu jugada: $quality';
  }

  @override
  String get gameTutorForcedPlay => 'jugada forzada';

  @override
  String get gameTutorTopChoice => 'mejor opción';

  @override
  String get gameTutorSoundPlay => 'buena jugada';

  @override
  String get gameTutorAnotherPlayMayFitBetter =>
      'Puede que otra jugada encaje mejor.';

  @override
  String get gameTutorAnotherPlayFitsBetter =>
      'Otra jugada encaja mejor en esta posición.';

  @override
  String get gameTutorStrongerPlayAvailable =>
      'Había una jugada claramente mejor.';

  @override
  String gameTutorPositionEdge(Object side) {
    return '$side tiene una ventaja estimada.';
  }

  @override
  String get gameTutorPositionEven => 'La posición está más o menos igualada.';

  @override
  String tutorPlayedMove(Object move) {
    return 'Jugada realizada: $move';
  }

  @override
  String tutorBestMove(Object move) {
    return 'Mejor jugada: $move';
  }

  @override
  String get tutorShowRankedPlays => 'Mostrar jugadas clasificadas';

  @override
  String get tutorReviewRecordedMove =>
      'Toca una jugada completada del registro para revisar aquí la decisión.';

  @override
  String get tutorTopPlays => 'Mejores jugadas';

  @override
  String get tutorNoHintsAvailable => 'No hay sugerencias disponibles.';

  @override
  String get tutorPreviewThenConfirm =>
      'Toca una jugada para previsualizarla en el tablero y luego confirma.';

  @override
  String get tutorTopChoiceForPosition => 'Mejor opción para esta posición';

  @override
  String get tutorAlternativePlay => 'Jugada alternativa';

  @override
  String get tutorEngineEstimates => 'Estimaciones del motor';

  @override
  String get tutorEstimateScope =>
      'Estimación de 0-ply · puntuación y apuesta actuales · sin futuras decisiones del cubo';

  @override
  String get tutorEquity => 'Equidad';

  @override
  String get tutorMwcPercent => 'MWC %';

  @override
  String get tutorNearTiesNote =>
      'En posiciones muy igualadas, un análisis más profundo puede cambiar el orden.';

  @override
  String get tutorWhyThisPlay => '¿Por qué esta jugada?';

  @override
  String get tutorCompareAlternative => 'Comparar esta alternativa';

  @override
  String get gameTutorCubeTake => 'Tutor: Aceptar';

  @override
  String get gameTutorCubePass => 'Tutor: Pasar';

  @override
  String get practiceScreenTitle => 'Practica una decisión';

  @override
  String get practiceUnavailable =>
      'Esta posición de práctica ya no está disponible.';

  @override
  String get practiceSubmitError =>
      'No se pudo evaluar ni guardar este intento. Tu progreso no ha cambiado. Inténtalo de nuevo.';

  @override
  String practiceTurnLabel(Object side, Object dice) {
    return 'Juega $side · $dice';
  }

  @override
  String get practiceHistoricalScoreUnavailable =>
      'Puntuación histórica no disponible; la evaluación usa equidad sin cubo.';

  @override
  String practiceScoreLine(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return 'Marcador: $whiteLabel $whiteScore – $blackLabel $blackScore, a $matchLength';
  }

  @override
  String get practiceCrawfordGame => ' · partida de Crawford';

  @override
  String get practiceNoDoublingCube => 'Sin cubo de doblaje.';

  @override
  String practiceCubeValue(int value) {
    return 'Cubo $value.';
  }

  @override
  String get practiceHistoricalCubeUnknown =>
      'Reglas históricas del cubo desconocidas.';

  @override
  String get practiceAfterBestPosition => 'Posición tras la mejor jugada';

  @override
  String get practiceAfterYourAnswerPosition => 'Posición tras tu respuesta';

  @override
  String get practiceFindYourPlayPrompt =>
      'Haz tu jugada en el tablero y luego comprueba la respuesta. No se muestran pistas.';

  @override
  String get practiceUndo => 'Deshacer';

  @override
  String get practiceCheckAnswer => 'Comprobar respuesta';

  @override
  String get practiceRevealNoCredit => 'Mostrar respuesta (sin crédito)';

  @override
  String get practiceAnswerRevealedNoCredit =>
      'Respuesta revelada: sin crédito de recuerdo.';

  @override
  String practiceGradeLine(Object verdict, Object loss) {
    return '$verdict · $loss';
  }

  @override
  String practiceBestMoveLine(Object move) {
    return 'Mejor: $move';
  }

  @override
  String practiceOriginalGameLine(Object move, Object loss) {
    return 'Partida original: $move · $loss';
  }

  @override
  String practiceYourAnswerLine(Object move) {
    return 'Tu respuesta: $move';
  }

  @override
  String get practiceYourAnswerChip => 'Tu respuesta';

  @override
  String get practiceBestPlayChip => 'Mejor jugada';

  @override
  String practiceNextReview(Object date) {
    return 'Próximo repaso: $date.';
  }

  @override
  String get practiceRecallCredit =>
      'Las respuestas mejores o buenas cuentan como recuerdo correcto. Los repasos anticipados no adelantan el calendario.';

  @override
  String get practiceBackToLearning => 'Volver al aprendizaje';

  @override
  String get practiceMarkBest => 'Mejor';

  @override
  String get practiceMarkGood => 'Buena';

  @override
  String get practiceMarkDubious => 'Dudosa';

  @override
  String get practiceMarkError => 'Error';

  @override
  String get practiceMarkBlunder => 'Pifia';

  @override
  String get practiceMarkForced => 'Forzada';

  @override
  String get newMatchYourSide => 'Tu lado';

  @override
  String get newMatchTutorMode => 'Modo tutor';

  @override
  String get newMatchTutorDescription =>
      'Aprende con pistas, explicaciones y comentarios de la partida';

  @override
  String get newMatchTutoringOptions => 'Opciones de tutoría';

  @override
  String get newMatchTutoringOptionsDescription =>
      'Para esta partida; se puede ajustar durante el juego';

  @override
  String get setupMatchLength => 'Duración de la partida';

  @override
  String get setupDifficulty => 'Dificultad';

  @override
  String get setupDifficultyEasy => 'Fácil';

  @override
  String get setupDifficultyMedium => 'Media';

  @override
  String get setupDifficultyHard => 'Difícil';

  @override
  String get setupDifficultyExpert => 'Experta';

  @override
  String get setupPlayWithoutCube => 'Jugar sin cubo';

  @override
  String get setupNoCubeThisMatch => 'Sin cubo de doblaje en esta partida';

  @override
  String get analysisTitle => 'Análisis';

  @override
  String get gameMatchSummary => 'Resumen del encuentro';

  @override
  String get gameAnalyzeGame => 'Analizar partida';

  @override
  String get analysisMetricsTooltip => '¿Qué significan estos números?';

  @override
  String analysisError(Object error) {
    return 'No se pudo analizar la partida: $error';
  }

  @override
  String get analysisNoPositions =>
      'Esta partida no tiene posiciones que mostrar.';

  @override
  String get analysisInProgress => 'Analizando partida…';

  @override
  String analysisPercent(int percent) {
    return '$percent%';
  }

  @override
  String get analysisPlayed => 'Jugado';

  @override
  String get analysisBest => 'Mejor';

  @override
  String get analysisPrevious => 'Anterior';

  @override
  String get analysisNext => 'Siguiente';

  @override
  String get analysisPositionBeforeCube =>
      'Posición antes de decidir sobre el cubo';

  @override
  String get analysisPositionAtPoint => 'Posición en este punto de la partida';

  @override
  String get analysisShowingBestBefore =>
      'Se muestra la mejor jugada en la posición anterior al movimiento';

  @override
  String get analysisShowingBefore =>
      'Se muestra la posición anterior a la jugada';

  @override
  String analysisVerdictLine(Object side, Object verdict, Object loss) {
    return '$side: $verdict$loss';
  }

  @override
  String analysisMoveLoss(Object loss) {
    return ' −$loss';
  }

  @override
  String get analysisExcludedFromAverages => ' · excluido de los promedios';

  @override
  String get analysisNoPlay => '(sin jugada)';

  @override
  String analysisBestMoveLine(Object move) {
    return 'Mejor jugada: $move';
  }

  @override
  String get analysisExplain => 'Explicar';

  @override
  String get analysisSaveForPractice => 'Guardar para practicar';

  @override
  String get analysisSaveError =>
      'No se pudo guardar esta decisión. Inténtalo de nuevo.';

  @override
  String analysisCubeInfo(
    Object side,
    Object action,
    Object mark,
    Object loss,
  ) {
    return '$side: $action · $mark · pérdida $loss';
  }

  @override
  String get analysisCubeDecision => 'Decisión sobre el cubo';

  @override
  String analysisCubePlayed(Object action, Object percent) {
    return 'Jugado: $action (probabilidad de ganar el encuentro: $percent%).';
  }

  @override
  String analysisCubeBest(Object action, Object percent) {
    return 'Mejor: $action (probabilidad de ganar el encuentro: $percent%).';
  }

  @override
  String get analysisCubeEstimate =>
      'Estimación 0-ply desde la perspectiva del jugador que mueve. Supone que el rival responde de forma óptima aceptando o pasando. Usa una aproximación de vida del cubo de 0,7 al aceptar, no una búsqueda completa de redobles futuros. Un análisis más profundo puede cambiar el resultado.';

  @override
  String get analysisClose => 'Cerrar';

  @override
  String get analysisMoves => 'Jugadas';

  @override
  String get analysisForced => 'Forzada';

  @override
  String get analysisMarkBest => 'Mejor';

  @override
  String get analysisMarkGood => 'Buena';

  @override
  String get analysisMarkDubious => 'Dudosa';

  @override
  String get analysisMarkError => 'Error';

  @override
  String get analysisMarkBlunder => 'Pifia';

  @override
  String analysisSummaryMeanLoss(Object loss) {
    return 'Pérdida media $loss';
  }

  @override
  String analysisSummaryCheckerDecisions(int count) {
    return '$count decisiones de fichas';
  }

  @override
  String analysisSummaryBlunders(int count) {
    return 'Blunders $count';
  }

  @override
  String analysisSummaryCubeLoss(Object loss) {
    return 'Pérdida con el cubo $loss';
  }

  @override
  String analysisRollWithoutDoubling(Object side) {
    return '$side tira sin doblar';
  }

  @override
  String get metricExplainerTitle => 'Comprender las métricas';

  @override
  String get metricExplainerTooltip => '¿Qué significan estos números?';

  @override
  String get metricExplainerMwcTitle =>
      'Probabilidad de ganar el encuentro (MWC)';

  @override
  String get metricExplainerMwcBody =>
      'Si se conoce el marcador, las jugadas se ordenan por la probabilidad estimada de ganar el encuentro. La pérdida se expresa en puntos porcentuales (pp): 1 pp es pasar del 51 % al 50 %. Se incluyen el valor actual del cubo y los gammons/backgammons. Los pases forzados y las tiradas con una sola posición legal no cuentan para el promedio.';

  @override
  String get metricExplainerSearchTitle => 'Búsqueda e incertidumbre';

  @override
  String get metricExplainerSearchBody =>
      'La clasificación de fichas son estimaciones estáticas 0-ply tras la jugada, no simulaciones. Los valores del encuentro usan una tabla de equidad y no incluyen futuros turnos del cubo. Las revisiones del cubo usan una aproximación parcial de vida del cubo de 0,7 al aceptar. No es una búsqueda completa con cubo. Las diferencias superiores a 25 usan el límite de 25 de la tabla. Los resultados muy igualados pueden cambiar con un análisis más profundo; no hay un intervalo de confianza calibrado.';

  @override
  String get metricExplainerEquityTitle => 'Equidad';

  @override
  String get metricExplainerEquityBody =>
      'Si no se conoce el marcador, la equidad sin cubo indica cuántos puntos vale una posición de media con el cubo en 1. +1,0 significa que se espera ganar un punto; −0,5, perder medio punto.';

  @override
  String get metricExplainerEquityLossTitle =>
      'Pérdida de equidad (p. ej., −0,016)';

  @override
  String get metricExplainerEquityLossBody =>
      'En cada jugada comparamos lo que jugaste con la mejor jugada del motor. La pérdida de equidad mide el valor esperado que cediste. −0,016 significa que la jugada solo fue 0,016 puntos peor: un pequeño desliz. 0,000 significa que encontraste la mejor jugada.';

  @override
  String get metricExplainerErrorRateTitle => 'Tasa de error';

  @override
  String get metricExplainerErrorRateBody =>
      'La pérdida media promedia tus decisiones de fichas evaluadas en la unidad indicada. Las decisiones del cubo tienen su propio promedio. Un valor menor se acerca más a las mejores estimaciones del motor; no es una clasificación calibrada del jugador.';

  @override
  String get metricExplainerMoveMarksTitle => 'Marcas de jugada';

  @override
  String get metricExplainerMoveMarksBody =>
      'Bandas didácticas de MWC: Mejor < 0,05 pp, Buena < 0,5 pp, Dudosa < 1,5 pp, Error < 3 pp, Blunder ≥ 3 pp. Son bandas didácticas del producto, no una medida calibrada ni una clasificación de torneo.\n\nBandas didácticas de equidad sin cubo:';

  @override
  String get metricExplainerThresholdBest => 'pérdida < 0,001';

  @override
  String get metricExplainerThresholdGood => 'pérdida < 0,020';

  @override
  String get metricExplainerThresholdDubious => 'pérdida < 0,050';

  @override
  String get metricExplainerThresholdError => 'pérdida < 0,110';

  @override
  String get metricExplainerThresholdBlunder => 'pérdida ≥ 0,110';

  @override
  String get metricExplainerGotIt => 'Entendido';

  @override
  String get historyTitle => 'Historial de partidas';

  @override
  String historyLoadFailed(Object error) {
    return 'No se pudo cargar el historial:\n$error';
  }

  @override
  String get historyEmpty => 'Aún no has jugado ninguna partida.';

  @override
  String get historyDeleteConfirmTitle => '¿Eliminar este encuentro?';

  @override
  String historyDeleteConfirmBody(Object scoreLine) {
    return '$scoreLine\n\nEl encuentro y todas las partidas registradas se eliminarán permanentemente. No se puede deshacer.';
  }

  @override
  String get actionCancel => 'Cancelar';

  @override
  String get actionDelete => 'Eliminar';

  @override
  String get historyDeleteFailed => 'No se pudo eliminar el encuentro.';

  @override
  String get historyComplete => 'Completado';

  @override
  String historyWinner(Object side) {
    return 'Ganó $side';
  }

  @override
  String get historyUnfinished => 'Sin terminar';

  @override
  String get historyMatchTitle => 'Encuentro';

  @override
  String historyMatchLoadFailed(Object error) {
    return 'No se pudo cargar el encuentro:\n$error';
  }

  @override
  String historyGamesLoadFailed(Object error) {
    return 'No se pudieron cargar las partidas:\n$error';
  }

  @override
  String get historyNoGames => 'Aún no hay partidas registradas.';

  @override
  String historyGameTitle(int number) {
    return 'Partida $number';
  }

  @override
  String get historyCrawford => 'Crawford';

  @override
  String historyScoreLine(int whiteScore, int blackScore, int matchLength) {
    return 'Blancas $whiteScore — $blackScore Negras (a $matchLength)';
  }

  @override
  String get historyModeComputer => 'contra el ordenador';

  @override
  String get historyModeTwoPlayers => 'Dos jugadores';

  @override
  String get historyModeOnline => 'En línea';

  @override
  String get historyModeNearby => 'Jugar cerca';

  @override
  String get historyModeBuddy => 'Buddy';

  @override
  String get historyGameInProgress => 'En curso';

  @override
  String historyGameResult(Object side, int points, Object outcome) {
    return '$side gana $points ($outcome)';
  }

  @override
  String get historyOutcomeSingle => 'simple';

  @override
  String get historyOutcomeGammon => 'gammon';

  @override
  String get historyOutcomeBackgammon => 'backgammon';

  @override
  String get learningRefreshTooltip => 'Actualizar progreso de aprendizaje';

  @override
  String get learningOptions => 'Opciones de aprendizaje';

  @override
  String get learningResetMenu => 'Restablecer progreso de práctica';

  @override
  String get learningLoadFailed =>
      'No se pudo cargar el progreso de aprendizaje.';

  @override
  String get actionRetry => 'Reintentar';

  @override
  String get learningHeading => 'Aprende de tus decisiones';

  @override
  String get learningIntro =>
      'Tu progreso permanece en este dispositivo. Revisa los temas recurrentes y vuelve a intentar las posiciones guardadas sin ver la respuesta. Puedes revisar Blancas y Negras por separado.';

  @override
  String get learningBothSides => 'Ambos lados';

  @override
  String get learningHumansOnly => 'Solo decisiones humanas';

  @override
  String get learningHumanOnlyHelp =>
      'Desactiva para incluir decisiones del ordenador y de jugadores remotos';

  @override
  String learningDecisionSummary(int decisions, int mistakes, int blunders) {
    return '$decisions decisiones · $mistakes por mejorar · $blunders blunders';
  }

  @override
  String learningAverageLoss(int decisions, Object loss) {
    return 'Pérdida media ($decisions decisiones): $loss';
  }

  @override
  String get learningForcedDisclaimer =>
      'Las jugadas forzadas quedan excluidas. Son estimaciones del motor, no una clasificación de torneo.';

  @override
  String learningGamesNeedingAnalysis(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Las # partidas guardadas necesitan análisis o un nuevo análisis.',
      one: 'La partida guardada necesita análisis o un nuevo análisis.',
    );
    return '$_temp0';
  }

  @override
  String get learningAnalyseSavedGames => 'Analizar partidas guardadas';

  @override
  String get learningEmptyProfile =>
      'Juega y termina una partida para crear tu perfil de aprendizaje. También puedes guardar decisiones concretas desde la repetición.';

  @override
  String get learningOpenHistory => 'Abrir historial de partidas';

  @override
  String get learningRecurringThemes => 'Temas recurrentes';

  @override
  String get learningNoThemes =>
      'Aún no hay temas de error recurrentes en esta selección.';

  @override
  String learningThemeDecisions(int count) {
    return '$count decisiones para repasar. Una posición puede tener varios temas.';
  }

  @override
  String get learningSaveMistakes => 'Guardar estos errores para practicar';

  @override
  String learningSavedMistakes(int count) {
    return '$count decisiones están en tu lista de práctica. Se conservan las que ya estaban guardadas.';
  }

  @override
  String get learningSaveMistakesFailed =>
      'No se pudieron guardar algunas decisiones. Se conservan las guardadas correctamente; puedes reintentarlo.';

  @override
  String get learningSpacedPractice => 'Práctica espaciada';

  @override
  String learningPracticeCounts(
    int due,
    int saved,
    int attempts,
    int successes,
  ) {
    return '$due pendientes · $saved guardadas · $attempts intentos · $successes recuerdos correctos';
  }

  @override
  String get learningIntervalsHelp =>
      'Las revisiones pendientes y correctas vuelven tras 1, 3, 7, 14 y 30 días. Los errores o las respuestas reveladas vuelven tras 10 minutos. Los repasos anticipados no cambian el intervalo.';

  @override
  String get learningAnswerContext =>
      'Los resultados reflejan tus respuestas aquí, aunque la posición original perteneciera a un rival.';

  @override
  String get learningNoSavedPositions =>
      'Guarda una decisión desde la repetición o usa el botón de errores de arriba.';

  @override
  String learningPositionTitle(Object side, int gameId) {
    return 'Decisión de $side · partida $gameId';
  }

  @override
  String learningReviewDue(Object date) {
    return 'Repasar $date';
  }

  @override
  String get learningReadyToReview => 'Listo para repasar';

  @override
  String learningSuccessStreak(int count) {
    return '$count repasos pendientes acertados';
  }

  @override
  String get learningRemoveTooltip => 'Quitar decisión guardada';

  @override
  String get learningRecentPractice => 'Práctica reciente';

  @override
  String get learningAnswerRevealed => 'Respuesta revelada';

  @override
  String get learningSuccessfulRecall => 'Recuerdo correcto';

  @override
  String get learningTryAgain => 'Volver a intentar esta decisión';

  @override
  String learningAttemptSubtitle(Object date, int positionId) {
    return '$date · posición guardada $positionId';
  }

  @override
  String get learningRemoveTitle => '¿Quitar este ejercicio?';

  @override
  String get learningRemoveBody =>
      'Se eliminarán sus intentos de práctica. La partida original seguirá en el historial.';

  @override
  String get actionRemove => 'Quitar';

  @override
  String get learningRemoveFailed => 'No se pudo quitar el ejercicio.';

  @override
  String get learningResetTitle => '¿Restablecer el progreso de práctica?';

  @override
  String get learningResetBody =>
      'Se eliminarán todos los intentos y los intervalos de repaso. Se conservarán los ejercicios guardados y el historial; todos los ejercicios pasarán a estar pendientes.';

  @override
  String get learningResetAction => 'Restablecer progreso';

  @override
  String get learningResetFailed => 'No se pudo restablecer el progreso.';

  @override
  String learningAnalysisProgress(int completed, int failed) {
    return 'Partidas analizadas: $completed · no disponibles: $failed.';
  }

  @override
  String learningAnalysisComplete(int completed) {
    return 'Partidas analizadas: $completed.';
  }

  @override
  String learningAnalysisCompleteWithErrors(int completed, int failed) {
    return 'Se analizaron $completed partidas; no se pudieron analizar $failed. Inténtalo cuando el motor esté listo.';
  }

  @override
  String get learningThemeHitting => 'Golpes y tempo';

  @override
  String get learningThemeSafety => 'Fichas expuestas y seguridad';

  @override
  String get learningThemePointMaking => 'Construcción de puntos';

  @override
  String get learningThemePrime => 'Primas y bloqueos';

  @override
  String get learningThemeAnchor => 'Anclas y escape';

  @override
  String get learningThemeRace => 'Eficiencia en carrera';

  @override
  String get learningThemeBearOff => 'Retirada de fichas';

  @override
  String get learningThemeBarEntry => 'Entrada desde la barra';

  @override
  String get learningThemeCube => 'Decisiones del cubo';

  @override
  String get analysisCubeNoDouble => 'No doblar';

  @override
  String get analysisCubeDouble => 'Doblar';

  @override
  String get analysisCubeTake => 'Aceptar';

  @override
  String get analysisCubePass => 'Pasar';

  @override
  String get learningAnalysisStarting => 'Analizando partidas guardadas…';

  @override
  String get tutorCubelessEstimateScope =>
      'Estimación sin cubo de un ply · marcador no disponible';

  @override
  String get tutorLossPp => 'Pérdida pp';

  @override
  String get tutorLoss => 'Pérdida';

  @override
  String get scoreSheetNoMoves => 'Aún no hay jugadas';

  @override
  String get tutorOptions => 'Opciones de tutoría';

  @override
  String get tutorCollapseTooltip => 'Contraer tutor';

  @override
  String get tutorExpandTooltip => 'Ampliar tutor';

  @override
  String get onlineTitle => 'Jugar en línea';

  @override
  String get onlineUnassistedNote =>
      'Las partidas en línea no tienen tutoría en directo. Revisa tus jugadas y practica los errores al terminar.';

  @override
  String get onlineNotConfiguredTitle =>
      'El juego en línea no está configurado en esta versión';

  @override
  String get onlineNotConfiguredBody =>
      'Esta versión no tiene un backend de Firebase, por lo que no se pueden crear partidas ni unirse a ellas.';

  @override
  String get onlineErrorNoMatch =>
      'No hay ninguna partida con ese código. Revísalo e inténtalo de nuevo.';

  @override
  String get onlineErrorSeatTaken =>
      'La partida ya no está abierta: otro jugador ocupó el sitio.';

  @override
  String get onlineErrorPermission =>
      'No tienes permiso para acceder a esa partida.';

  @override
  String get onlineErrorGeneric => 'Algo ha salido mal. Inténtalo de nuevo.';

  @override
  String get onlineMatchFinished =>
      'La partida ha terminado; ya no se puede reanudar.';

  @override
  String get onlineEnterCodeError => 'Introduce un código de partida.';

  @override
  String get onlineOpponentShort => 'Rival';

  @override
  String get onlineMatchInProgress => 'Partida en curso';

  @override
  String onlineResumePrompt(Object code) {
    return 'Estabas jugando la partida $code.';
  }

  @override
  String get onlineRejoin => 'Reanudar';

  @override
  String get onlineForgetMatch => 'Olvidar esta partida';

  @override
  String get onlineCreateTitle => 'Crear partida';

  @override
  String get onlineMatchLength => 'Duración de la partida';

  @override
  String get onlineNoCubeTitle => 'Jugar sin cubo';

  @override
  String get onlineNoCubeSubtitle => 'Sin cubo de doblaje en esta partida';

  @override
  String get onlineCreate => 'Crear';

  @override
  String get onlineWaitingOpponent => 'Esperando al rival…';

  @override
  String get onlineShareCode => 'Compartir este código';

  @override
  String get onlineCopyCode => 'Copiar código';

  @override
  String get onlineCodeCopied => 'Código copiado';

  @override
  String get onlineJoinTitle => 'Unirse a una partida';

  @override
  String get onlineRoomCode => 'Código de partida';

  @override
  String get onlineJoin => 'Unirse';

  @override
  String get lanTitle => 'Jugar cerca';

  @override
  String get lanTabHost => 'Alojar';

  @override
  String get lanTabJoin => 'Unirse';

  @override
  String get lanUnassistedNote =>
      'Las partidas locales no tienen tutoría en directo. Revisa tus jugadas y practica los errores al terminar.';

  @override
  String get lanGameStartFailed =>
      'No se pudo iniciar la partida. El otro dispositivo puede volver a unirse.';

  @override
  String get lanHostPortInUse =>
      'No se puede alojar: el puerto ya está en uso. Cierra otra copia de Backgammon Buddy e inténtalo de nuevo.';

  @override
  String get lanHostStartFailed =>
      'No se pudo alojar la partida. Comprueba la conexión Wi-Fi e inténtalo de nuevo.';

  @override
  String get lanHostTitle => 'Alojar una partida';

  @override
  String get lanStartHosting => 'Empezar a alojar';

  @override
  String get lanHostHelp =>
      'Ambos dispositivos deben estar en la misma red Wi-Fi. Este dispositivo tira los dados y lleva el marcador.';

  @override
  String get lanWaitingPlayerTitle => 'Esperando a un jugador';

  @override
  String get lanRoomCodeInfo =>
      'Dale este código al otro jugador. Le permite entrar y la aplicación nunca lo envía por la red.';

  @override
  String get lanWaitingPlayer => 'Esperando a un jugador…';

  @override
  String get lanStopHosting => 'Dejar de alojar';

  @override
  String lanFindNearbyPort(int port) {
    return 'Pide al otro dispositivo que busque partidas cercanas. Escuchando en el puerto $port.';
  }

  @override
  String get lanOnNetwork => 'En esta red';

  @override
  String get lanCopyAddress => 'Copiar dirección';

  @override
  String get lanAddressCopied => 'Dirección copiada';

  @override
  String get lanScanHostTitle => 'Escanear el dispositivo anfitrión';

  @override
  String get lanScanHostHelp =>
      'El otro dispositivo muestra un código QR en su pantalla de anfitrión. Al escanearlo se rellenan la dirección y el código de sala.';

  @override
  String get lanScanQr => 'Escanear código QR';

  @override
  String get lanScannerUnavailable =>
      'Cámara o permiso no disponible. Introduce abajo la dirección y el código de sala.';

  @override
  String get lanInvalidQr =>
      'Este código QR no corresponde a Backgammon Buddy. Escanea el de la pantalla de anfitrión del otro dispositivo.';

  @override
  String get lanScannerFailed =>
      'No se pudo abrir el escáner. Introduce abajo la dirección y el código.';

  @override
  String get lanNearbyGames => 'Partidas cercanas';

  @override
  String get lanSearching => 'Buscando partidas cercanas…';

  @override
  String get lanNoGamesFound =>
      'No se encontraron partidas. Comprueba que el otro dispositivo aloja una y que ambos usan la misma Wi-Fi, o introduce su dirección abajo.';

  @override
  String get lanStillSearching => 'Sigue buscando…';

  @override
  String get lanEnterAddress => 'Introducir dirección';

  @override
  String get lanEnterAddressHelp =>
      'La detección automática no funciona en todas las redes y puede estar bloqueada en iOS. La pantalla de anfitrión indica qué debes escribir.';

  @override
  String get lanIpAddress => 'Dirección IP';

  @override
  String get lanPort => 'Puerto';

  @override
  String get lanInvalidPort => 'Introduce un puerto entre 1 y 65535.';

  @override
  String get lanEnterAddressError =>
      'Introduce la dirección que aparece en el otro dispositivo.';

  @override
  String get lanEnterRoomCodeError =>
      'Introduce el código de 4 dígitos del otro dispositivo.';

  @override
  String get lanJoinWrongCode =>
      'Código de sala incorrecto. Comprueba los cuatro dígitos.';

  @override
  String get lanJoinVersionMismatch =>
      'El otro dispositivo usa otra versión de Backgammon Buddy.';

  @override
  String get lanJoinHandshakeFailed =>
      'El dispositivo no responde como Backgammon Buddy. Comprueba la dirección y el puerto.';

  @override
  String get lanJoinFailed =>
      'No se pudo unir. Comprueba la dirección y el código, e inténtalo de nuevo.';

  @override
  String lanJoinTarget(Object name) {
    return 'Unirse a $name';
  }

  @override
  String get lanJoinTargetHelp =>
      'Introduce el código de 4 dígitos que aparece en el otro dispositivo.';

  @override
  String lanJoiningTarget(Object name) {
    return 'Conectando con $name';
  }

  @override
  String get lanConnect => 'Conectar';

  @override
  String get lanBack => 'Volver';

  @override
  String get lanTryAgain => 'Intentar de nuevo';

  @override
  String get lanStatusBusy => 'Sala ocupada: esperando…';

  @override
  String get lanStatusReconnecting => 'Conexión perdida: reintentando…';

  @override
  String get lanStatusConnected => 'Conectado: iniciando la partida…';

  @override
  String get lanStatusFailed => 'No se pudo unir.';

  @override
  String get lanStatusConnecting => 'Conectando…';

  @override
  String get diagnosticsCopySuccess => 'Diagnóstico copiado';

  @override
  String get diagnosticsReviewTitle => 'Revisar informe de diagnóstico';

  @override
  String get diagnosticsPrivacyNotice =>
      'Al abrir el borrador se enviarán a GitHub los datos siguientes: versión de la aplicación, plataforma y detalles del error. No se publicará ningún problema hasta que lo envíes allí. Si contienen información privada, cancela y usa Copiar para preparar el informe.';

  @override
  String get diagnosticsCancel => 'Cancelar';

  @override
  String get diagnosticsOpenGitHub => 'Abrir GitHub';

  @override
  String get diagnosticsTitle => 'Diagnóstico';

  @override
  String get diagnosticsReportTooltip => 'Informar de un problema en GitHub';

  @override
  String get diagnosticsCopyTooltip => 'Copiar al portapapeles';

  @override
  String get diagnosticsClearTooltip => 'Borrar registro';

  @override
  String get diagnosticsEmpty =>
      'No hay errores registrados.\n\nSi algo falla, se registrará aquí. Vuelve para copiar los datos en un informe de errores.';

  @override
  String gameHudNeutralScore(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore–$blackScore $blackLabel · a $matchLength';
  }

  @override
  String gameHudPlayerScore(
    Object you,
    int mine,
    int theirs,
    Object opponent,
    int matchLength,
  ) {
    return '$you $mine–$theirs $opponent · a $matchLength';
  }

  @override
  String get gameHudYou => 'Tú';

  @override
  String get gameHudAi => 'IA';

  @override
  String gameHudGameNumber(int number) {
    return 'Partida $number';
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
  String get gameHudDouble => 'Doblar';

  @override
  String get gameHudMoreActions => 'Más acciones';

  @override
  String get gameHudSurrender => 'Rendirse…';

  @override
  String get gameHudThinking => 'Pensando';

  @override
  String get gameHudDoubleBeforeRoll =>
      'Solo puedes doblar antes de tirar y durante tu turno.';

  @override
  String get gameHudNoDoubleCrawford =>
      'No se puede doblar en la partida de Crawford: esta partida decide el encuentro.';

  @override
  String get gameHudOnlyCubeOwner =>
      'Solo puede doblar quien tiene el cubo; ahora lo tiene el otro lado.';

  @override
  String get gameHudDoubleUnavailable => 'No se puede doblar ahora.';

  @override
  String gameDialogScoreLine(
    Object whiteLabel,
    int whiteScore,
    int blackScore,
    Object blackLabel,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore — $blackScore $blackLabel (a $matchLength)';
  }

  @override
  String gameDialogPlayerWon(Object winner, Object points) {
    return '$winner gana esta partida ($points).';
  }

  @override
  String gameDialogPlayerWonGammon(Object winner, Object points) {
    return '$winner gana esta partida ($points, gammon).';
  }

  @override
  String gameDialogPlayerWonBackgammon(Object winner, Object points) {
    return '$winner gana esta partida ($points, backgammon).';
  }

  @override
  String gameDialogPlayerWonDrop(Object winner, Object points, Object loser) {
    return '$winner gana esta partida ($points): $loser rechazó el doblaje.';
  }

  @override
  String gameDialogPlayerWonResignation(
    Object winner,
    Object points,
    Object loser,
  ) {
    return '$winner gana esta partida ($points): $loser se rindió.';
  }

  @override
  String get gameDialogPassDeviceTitle => 'Pasa el dispositivo';

  @override
  String gameDialogPlayersTurn(Object name) {
    return 'Turno de $name';
  }

  @override
  String get gameDialogTapToContinue => 'Toca para continuar';

  @override
  String get gameDialogCubeOfferedTitle => 'Doblaje ofrecido';

  @override
  String gameDialogCubeOfferMessage(
    Object doubler,
    int value,
    Object tutorLine,
  ) {
    return '$doubler ofrece doblar a $value. ¿Aceptar o pasar?$tutorLine';
  }

  @override
  String get gameDialogPass => 'Pasar';

  @override
  String get gameDialogTake => 'Aceptar';

  @override
  String get gameDialogResignationTitle => 'Rendición ofrecida';

  @override
  String gameDialogResignationMessage(Object resigner, Object value) {
    return '$resigner ofrece rendirse por $value. ¿Aceptar o rechazar?';
  }

  @override
  String get gameDialogResignSingle => 'partida simple';

  @override
  String get gameDialogResignGammon => 'gammon';

  @override
  String get gameDialogResignBackgammon => 'backgammon';

  @override
  String get gameDialogDecline => 'Rechazar';

  @override
  String get gameDialogAccept => 'Aceptar';

  @override
  String get gameDialogGameOverTitle => 'Fin de la partida';

  @override
  String get gameDialogNextGame => 'Siguiente partida';

  @override
  String get gameDialogMatchOverTitle => 'Fin del encuentro';

  @override
  String get gameDialogNobody => 'Nadie';

  @override
  String gameDialogMatchWinner(Object winner) {
    return '$winner gana el encuentro.';
  }

  @override
  String get gameDialogSavedToHistory => 'Guardado en el historial';

  @override
  String get gameDialogDone => 'Listo';

  @override
  String get gameTapNoLegalMove =>
      'Esa ficha no puede moverse con los dados restantes';

  @override
  String get gameTapNoLegalMoveUndo =>
      'Esa ficha no puede moverse con los dados restantes: prueba a deshacer';

  @override
  String get gameDragHint =>
      'Consejo: arrastra las fichas o tócalas; cámbialo en Ajustes';

  @override
  String get commonGotIt => 'Entendido';

  @override
  String get gameHintStageBeforeHint =>
      'Haz una jugada legal completa antes de pedir una pista.';

  @override
  String get surrenderTitle => 'Rendirse';

  @override
  String surrenderNamedConcedes(String player) {
    return '$player concede la partida actual.';
  }

  @override
  String get surrenderConcedes => 'Concede la partida actual.';

  @override
  String surrenderAvailableAtNamedTurn(String player) {
    return 'Disponible al inicio del turno de $player';
  }

  @override
  String get surrenderAvailableAtYourTurn => 'Disponible al inicio de tu turno';

  @override
  String get commonCancel => 'Cancelar';

  @override
  String get surrenderSingle => 'Simple (1)';

  @override
  String get surrenderGammon => 'Gammon (2)';

  @override
  String get surrenderBackgammon => 'Backgammon (3)';

  @override
  String get surrenderChoosePlayer => '¿Quién concede esta partida?';

  @override
  String get commonDone => 'Listo';

  @override
  String get cubeDouble => 'Doblar';

  @override
  String get cubeBlockedOtherPlayersTurn => 'Es el turno del otro jugador.';

  @override
  String get cubeBlockedCrawford =>
      'No se puede doblar en la partida de Crawford.';

  @override
  String get cubeBlockedOwnedByOther =>
      'Solo puede doblar quien tiene el cubo; ahora lo tiene el otro lado.';

  @override
  String get cubeBlockedUnavailable => 'No se puede doblar ahora.';

  @override
  String get gameStatusRolling => 'Tirando…';

  @override
  String get gameStatusThinking => 'Pensando…';

  @override
  String gameStatusPlayersTurn(String player) {
    return 'Turno de $player';
  }

  @override
  String get cubeAdviceOpponentTake => 'Doblar: el rival debería aceptar';

  @override
  String get cubeAdviceOpponentPass => 'Doblar: el rival debería pasar';

  @override
  String gameErrorBannerLabel(Object error) {
    return 'Error: $error';
  }

  @override
  String get privacyTitle => 'Privacidad y datos';

  @override
  String get privacyAppTitle => 'Backgammon Buddy de Freevia';

  @override
  String get privacyIntro =>
      'Esta página describe cómo gestiona tus datos la versión actual de la aplicación.';

  @override
  String get privacyLocalTitle => 'Partidas y tutoría en tu dispositivo';

  @override
  String get privacyLocalBody =>
      'Las partidas locales, los ajustes, los análisis y el progreso de práctica se guardan en este dispositivo. El motor de backgammon y las explicaciones del tutor se ejecutan aquí. Elimina una partida guardada del Archivo de partidas para borrar también sus ejercicios de práctica y sus intentos guardados. Elimina ejercicios individuales o restablece el progreso de práctica en Aprendizaje; borra los informes de errores locales en Ajustes → Diagnóstico. También podrían aplicarse a tu historial de partidas los ajustes de copia de seguridad del dispositivo. Las credenciales para iniciar sesión en línea se guardan en el almacenamiento protegido del dispositivo.';

  @override
  String get privacyOnlineTitle => 'Juego en línea y en proximidad';

  @override
  String get privacyOnlineBody =>
      'El juego en línea envía a Google Firebase un identificador anónimo de jugador, los ajustes de la partida, las jugadas y los registros de sincronización de dados para que ambos jugadores jueguen la misma partida. Eliminar el historial de este dispositivo no elimina los registros en línea. Las partidas alojadas caducan 30 días después de crearse; una tarea de limpieza programada elimina sus registros en la nube. Los registros de partidas se almacenan en la UE; Firebase Authentication procesa los datos de inicio de sesión en Estados Unidos. Las conexiones con Google están cifradas durante el envío. El juego en proximidad intercambia información de la partida con el otro dispositivo mediante una conexión local sin cifrar; usa una red Wi-Fi de confianza.';

  @override
  String get privacyDiagnosticsTitle => 'Diagnóstico opcional de uso y fallos';

  @override
  String get privacyDiagnosticsBody =>
      'El envío está desactivado hasta que lo actives en Ajustes. Si lo activas, Google Firebase recibe eventos de uso, información de la aplicación y del dispositivo, mediciones de rendimiento e informes de fallos para ayudar a mejorar la aplicación. Puedes desactivarlo en cualquier momento para detener la nueva recopilación opcional. Esto no borra los datos que ya se hayan enviado. El diagnóstico local y las partidas en línea funcionan independientemente de esta opción.';

  @override
  String get privacyCameraTitle => 'Cámara para códigos QR cercanos';

  @override
  String get privacyCameraBody =>
      'La cámara opcional escanea códigos QR de partidas cercanas. Las imágenes se procesan en tu dispositivo y no se guardan ni se suben. Puedes denegar el acceso a la cámara e introducir manualmente la dirección del anfitrión. Esta versión no usa el micrófono ni permite jugar con un tablero físico.';

  @override
  String get privacyFeedbackTitle => 'Comentarios que eliges enviar';

  @override
  String get privacyFeedbackBody =>
      'Los comentarios abren un borrador de incidencia de GitHub para que lo revises. Al abrirlo, se envían a GitHub la versión de la aplicación y la plataforma; los comentarios enviados desde Diagnóstico también pueden incluir detalles del error. La incidencia no se publica hasta que la envíes. Las incidencias pueden ser públicas, así que elimina la información privada antes de enviarla.';

  @override
  String get privacyContactTitle => 'Contacto de privacidad';

  @override
  String get privacyReadPolicy => 'Leer la política de privacidad';

  @override
  String get privacyPolicyOpenFailed =>
      'No se pudo abrir la política de privacidad.';

  @override
  String get privacySupportTitle => 'Ayuda y soporte';

  @override
  String get privacySupportOpenFailed =>
      'No se pudo abrir el soporte. Contacta con support@freevia.org.';

  @override
  String get privacyDeleteConfirmTitle =>
      '¿Eliminar la identidad y los datos en línea?';

  @override
  String get privacyDeleteConfirmBody =>
      'Esto pone fin de inmediato al acceso de ambos jugadores a las partidas en la nube de esta identidad y solicita que se eliminen la identidad y los registros compartidos de partidas en línea en un plazo de 30 días. Google puede tardar hasta 180 días desde la eliminación de la cuenta en borrar los datos de Authentication de sus sistemas activos y copias de seguridad. El historial local y la práctica permanecen en este dispositivo. Los datos de diagnóstico opcionales enviados anteriormente son independientes; para consultarlos, escribe a privacy@freevia.org. Esta solicitud no se puede deshacer.';

  @override
  String get privacyRequestDeletion => 'Solicitar eliminación';

  @override
  String get privacyDeleteSectionTitle => 'Eliminar datos en línea';

  @override
  String get privacyDeleteInstructions =>
      'Usa el inicio de sesión guardado en este dispositivo para verificar que la cuenta es tuya. Un identificador de jugador o un código de invitación por sí solos no demuestran la titularidad. Quienes solo juegan en local no necesitan una cuenta en línea.';

  @override
  String get privacySendingRequest => 'Enviando solicitud…';

  @override
  String get privacyDeleteAction => 'Eliminar identidad y datos en línea';

  @override
  String get privacyDeleteRequested =>
      'Se ha solicitado la eliminación. Se ha cerrado la sesión de esta identidad en línea. Sus datos en la nube se eliminarán en un plazo de 30 días. Si vuelves a jugar en línea, se creará una identidad nueva. Google puede tardar hasta 180 días en eliminar los datos de Authentication. Para obtener ayuda, escribe a privacy@freevia.org.';

  @override
  String get privacyDeleteRequestedSignOutFailed =>
      'Se ha solicitado la eliminación. Los datos en la nube se eliminarán en un plazo de 30 días. El dispositivo no pudo borrar el inicio de sesión guardado, pero la identidad en línea está bloqueada y no puede acceder a más partidas. Google puede tardar hasta 180 días en eliminar los datos de Authentication. Para obtener ayuda, escribe a privacy@freevia.org.';

  @override
  String get privacyDeleteNoIdentity =>
      'No hay ninguna identidad en línea válida guardada en este dispositivo. No se ha creado ninguna cuenta. Si antes jugaste en línea, escribe a privacy@freevia.org para obtener ayuda; las partidas alojadas caducan a los 30 días.';

  @override
  String get privacyDeleteRequestFailed =>
      'No se pudo confirmar la solicitud de eliminación. Comprueba la conexión e inténtalo de nuevo, o escribe a privacy@freevia.org.';

  @override
  String get privacyConsentTitle => '¿Compartir datos de uso y fallos?';

  @override
  String get privacyConsentBody =>
      'Esto envía a Google Firebase eventos de uso, información de la aplicación y del dispositivo, informes de fallos y mediciones de rendimiento. El envío es opcional. Las partidas y la tutoría funcionan sin él, y puedes volver a desactivarlo en Ajustes.';

  @override
  String get privacyKeepOff => 'Mantener desactivado';

  @override
  String get privacyShareDiagnostics => 'Compartir diagnóstico';

  @override
  String get privacySaveFailed =>
      'No se pudo guardar la opción de privacidad. Inténtalo de nuevo.';

  @override
  String get privacySettingsSubtitle =>
      'Qué permanece en tu dispositivo y qué se comparte';

  @override
  String get privacyDiagnosticsSettingTitle =>
      'Compartir diagnóstico de uso y fallos';

  @override
  String get privacyDiagnosticsSettingSubtitle =>
      'Opcional · desactivado de forma predeterminada';

  @override
  String get lanScanToJoin => 'Escanear para unirse';

  @override
  String get lanScanHostCode => 'Escanea el código del anfitrión';

  @override
  String get lanEnterAddressInstead => 'Introducir la dirección';

  @override
  String get lanQrAccessibilityLabel => 'Código QR para unirte a esta partida';

  @override
  String get lanJoinInstruction =>
      'En el otro dispositivo, abre Jugar cerca, elige Unirse y escanea este código QR.';

  @override
  String get lanTorch => 'Linterna';

  @override
  String get lanCameraPermissionDenied =>
      'Backgammon Buddy no puede usar la cámara. Permite el acceso a la cámara en los ajustes del dispositivo o introduce manualmente la dirección que aparece en el otro dispositivo.';

  @override
  String get lanCameraUnsupported =>
      'Este dispositivo no puede escanear códigos QR. Introduce manualmente la dirección que aparece en el otro dispositivo.';

  @override
  String get lanCameraStartFailed =>
      'No se pudo iniciar la cámara. Introduce manualmente la dirección que aparece en el otro dispositivo.';

  @override
  String get lanPointCameraAtQr =>
      'Apunta la cámara al código QR del otro dispositivo.';

  @override
  String get physicalBuddyUnavailableTitle => 'Backgammon Buddy';

  @override
  String get physicalBuddyUnavailableBody =>
      'Esta versión no permite jugar con un tablero físico. Desde Inicio tienes partidas en pantalla, tutoría y práctica.';

  @override
  String get homePlayWithBuddy => 'Jugar con Buddy';

  @override
  String get homeBuddyShort => 'Buddy';

  @override
  String boardSemanticsLabel(Object status) {
    return 'Tablero de backgammon. $status';
  }

  @override
  String get boardWhiteToRoll => 'Es el turno de blancas: tira los dados.';

  @override
  String get boardBlackToRoll => 'Es el turno de negras: tira los dados.';

  @override
  String boardWhiteToMove(Object die1, Object die2) {
    return 'Juegan blancas; tira $die1 y $die2.';
  }

  @override
  String boardBlackToMove(Object die1, Object die2) {
    return 'Juegan negras; tira $die1 y $die2.';
  }

  @override
  String get boardDoubleOffered => 'Se ha ofrecido doblar.';

  @override
  String get boardResignationOffered => 'Se ha ofrecido abandonar.';

  @override
  String get boardGameOver => 'La partida ha terminado.';

  @override
  String feedbackBugTitle(Object version, Object platform) {
    return '[Error]: Backgammon Buddy $version ($platform)';
  }

  @override
  String get feedbackIdeaTitle => '[Idea]: Backgammon Buddy';

  @override
  String get feedbackBugSummary =>
      'Sustituye esto por una breve descripción de lo ocurrido.';

  @override
  String get feedbackBugReproduction =>
      'Sustituye esto por los pasos que llevaron al problema.';

  @override
  String get feedbackBugExpected =>
      'Sustituye esto por lo que esperabas que ocurriera.';

  @override
  String get feedbackIdeaNeed =>
      'Sustituye esto por lo que querías hacer o aprender.';

  @override
  String get feedbackIdeaSuggestion =>
      'Sustituye esto por el cambio que te resultaría útil.';

  @override
  String get feedbackExcerptTruncated =>
      '(recortado: usa «Copiar al portapapeles» en la pantalla Diagnóstico para ver el registro completo)';

  @override
  String get boardWhiteToMoveNoRoll => 'Juegan blancas.';

  @override
  String get boardBlackToMoveNoRoll => 'Juegan negras.';

  @override
  String get feedbackFieldVersion => 'Versión de la aplicación';

  @override
  String get feedbackFieldPlatform => 'Plataforma';

  @override
  String get feedbackFieldSummary => 'Qué ha ocurrido';

  @override
  String get feedbackFieldReproduction => 'Pasos para reproducirlo';

  @override
  String get feedbackFieldExpected => 'Resultado esperado';

  @override
  String get feedbackFieldNeed => 'Qué querías hacer';

  @override
  String get feedbackFieldIdea => 'Cambio sugerido';

  @override
  String get buddySetupTitle => 'Juega con Buddy';

  @override
  String get buddySetupSideLabel => 'Juega contra Buddy';

  @override
  String get buddySetupSeatLabel => 'Tu lado';

  @override
  String get buddySetupSeatNear => 'Junto al teléfono';

  @override
  String get buddySetupSeatFar => 'Enfrente';

  @override
  String get buddySetupSeatHelp =>
      'Indica en qué lado del tablero estás. Así Buddy numera las casillas y distingue tu dado de apertura del suyo.';

  @override
  String get buddySetupVoiceLabel => 'Cómo habla Buddy';

  @override
  String get buddySetupVoiceTerse => 'Conciso';

  @override
  String get buddySetupVoiceFriendly => 'Cercano';

  @override
  String get buddySetupVoiceTerseHelp =>
      '«13/8, 24/22»: la notación que usan dos jugadores frente al tablero.';

  @override
  String get buddySetupVoiceFriendlyHelp =>
      '«Mueve una ficha de 13 a 8 y otra de 24 a 22».';

  @override
  String get buddySetupTutorHelp =>
      'Los comentarios del tutor y las explicaciones de las jugadas siguen tus preferencias guardadas en Ajustes. Buddy te dará comentarios de vez en cuando; introducir los dados y las jugadas manualmente funciona igual.';

  @override
  String get buddySetupCalibrate => 'Calibrar el tablero';

  @override
  String get buddyFixAim => 'Ajustar la cámara';

  @override
  String get buddyWaitingForOpening =>
      'Buddy espera la tirada que inicia la partida.';

  @override
  String get buddyPromptLostBoard =>
      'Buddy ha perdido de vista el tablero. Ajusta la cámara y la partida continuará donde se quedó.';

  @override
  String get buddyPromptWaitingPicture =>
      'Esperando una imagen que Buddy pueda leer. No se pierde nada.';

  @override
  String get buddyPromptTypeDice =>
      'Buddy no encuentra los dados. Introduce la tirada manualmente.';

  @override
  String get buddyPromptPlay =>
      'Haz tu jugada en el tablero. Si Buddy no la ve, introdúcela aquí.';

  @override
  String get buddyPromptWhichPlay => '¿Qué jugada has hecho?';

  @override
  String get buddyPromptCube => 'Buddy dobla. ¿Aceptas o rechazas?';

  @override
  String get buddyPromptMakeMove =>
      'Haz la jugada de Buddy en el tablero para que pueda continuar.';

  @override
  String get buddyPromptThinking => 'Buddy está pensando.';

  @override
  String get buddyPromptWaitingCalibration => 'Esperando la calibración.';

  @override
  String get buddyPromptMirrorNoDetail =>
      'Buddy todavía no ve su jugada. El tablero de abajo muestra la posición que tiene guardada.';

  @override
  String get buddyPromptNotLegal => 'Esa jugada no es legal.';

  @override
  String buddyPromptNotLegalReason(String reason) {
    return 'Esa jugada no es legal. $reason';
  }

  @override
  String get buddyThrowOpening => 'Tira los dados de apertura: uno cada uno.';

  @override
  String get buddyThrowUser => 'Tira tus dados.';

  @override
  String get buddyThrowBuddy => 'Tira los dados de Buddy.';

  @override
  String get buddyMatchOver => 'La partida ha terminado.';

  @override
  String get buddyYouWin => 'Has ganado la partida.';

  @override
  String get buddyBuddyWins => 'Buddy ha ganado la partida.';

  @override
  String get buddyDoubleNoGame =>
      'Todavía no hay ninguna partida que doblar: primero va la tirada de apertura.';

  @override
  String get buddyDoubleBeforeRoll =>
      'Solo puedes doblar antes de tirar y durante tu turno.';

  @override
  String get buddyDoubleCrawford =>
      'No se puede doblar en la partida Crawford: esta única partida decide el encuentro.';

  @override
  String get buddyDoubleNotOwner =>
      'Solo quien tiene el cubo puede doblar, y ahora lo tiene el otro lado.';

  @override
  String get buddyDoubleUnavailable => 'No se puede doblar en este momento.';

  @override
  String get buddyLookingAtBoard => 'Buddy está mirando el tablero.';

  @override
  String get buddyCameraPlayFallback =>
      'Puedes seguir jugando: introduce cada tirada en el panel de dados y marca tus jugadas en el tablero de abajo.';

  @override
  String get buddySkipCheck => 'Omitir esta comprobación';

  @override
  String get buddyFixedIt => 'Ya lo he corregido';

  @override
  String get buddyDrop => 'Rechazar';

  @override
  String get buddyTake => 'Aceptar';

  @override
  String get buddyDone => 'Listo';

  @override
  String get buddyTranscriptLabel => 'Lo que ha dicho Buddy';

  @override
  String get buddyUndo => 'Deshacer';

  @override
  String get buddyConfirm => 'Confirmar';

  @override
  String get buddyDice => 'Dados';

  @override
  String get buddyDouble => 'Doblar';

  @override
  String get buddyDicePadTitle => '¿Qué te ha salido?';

  @override
  String get buddyEnterRoll => 'Introducir tirada';

  @override
  String get buddyContextBeforeGame => 'Juega con Buddy';

  @override
  String buddyContextMatchScore(
    String you,
    String buddy,
    String length,
    String number,
  ) {
    return 'Tú $you–$buddy Buddy · a $length · Partida $number';
  }

  @override
  String get buddyCameraUnavailable =>
      'No se ha podido iniciar la cámara. Comprueba los permisos y vuelve a intentarlo.';

  @override
  String get buddyCameraPermission =>
      'Backgammon Buddy no tiene permiso para usar la cámara. Permite el acceso a la cámara en los ajustes del dispositivo y vuelve a intentarlo.';

  @override
  String get buddyCalibrationTitle => 'Enséñale el tablero a Buddy';

  @override
  String get buddyCalibrationCornersFold =>
      'Arrastra los cuatro controles exteriores hasta las esquinas del paño, no del marco de madera, y los cuatro pequeños hasta las uniones donde la bisagra toca los bordes cercano y lejano.';

  @override
  String get buddyCalibrationCornersFlat =>
      'Arrastra cada control hasta una esquina del paño, la superficie de juego, no el marco de madera.';

  @override
  String get buddyCalibrationCheckLines =>
      'Después, comprueba las doce líneas de cada mitad: todas deben seguir una punta del tablero. Si una línea no pasa por su punta, ajusta el control correspondiente.';

  @override
  String get buddyCalibrationSeatQuestion =>
      '¿Qué mitad es tu tablero interior?';

  @override
  String get buddyCalibrationSeatHelp =>
      'La mitad más cercana a la parte inferior de la imagen. Esto fija los números de las puntas y ajusta las líneas de arriba.';

  @override
  String get buddyCalibrationCaptureWait =>
      'Mantén el teléfono quieto. Buddy espera a que la imagen se estabilice para aprender el tablero.';

  @override
  String get buddyCalibrationConfirmQuestion => '¿Es este tu tablero?';

  @override
  String get buddyCalibrationConfirmFallback =>
      'Buddy está mirando el tablero que acaba de aprender.';

  @override
  String get buddyCalibrationConfirmHelp =>
      'Las fichas dibujadas sobre la imagen muestran dónde cree Buddy que están. Si alguna está mal, empieza de nuevo: ahora solo son unos segundos; más adelante podría costarte una partida.';

  @override
  String get buddyCalibrationNext => 'Siguiente';

  @override
  String get buddyCalibrationBack => 'Atrás';

  @override
  String get buddyCalibrationCapture => 'Capturar';

  @override
  String get buddyCalibrationStartOver => 'Empezar de nuevo';

  @override
  String get buddyCalibrationLooksRight => 'Se ve bien';

  @override
  String get buddyCalibrationCornersInvalid =>
      'Esos cuatro controles no delimitan un tablero: uno ha cruzado otro. Devuélvelos a las esquinas del paño.';

  @override
  String get buddyCalibrationPrepTitle => 'Primero, tres cosas';

  @override
  String get buddyCalibrationRemoveDiceTitle => 'Quita los dados del tablero.';

  @override
  String get buddyCalibrationRemoveDiceBody =>
      'Buddy va a aprender el tablero vacío. Si queda un dado sobre el tapete, lo aprenderá como parte del tablero y no podrá volver a ver los dados durante esta sesión.';

  @override
  String get buddyCalibrationSetupCheckersTitle =>
      'Coloca las fichas en la posición inicial.';

  @override
  String get buddyCalibrationSetupCheckersBody =>
      'Las treinta fichas en posiciones conocidas permiten que Buddy aprenda los dos colores del tablero sin que tengas que indicárselos.';

  @override
  String get buddyCalibrationFitBoardTitle =>
      'Incluye toda la superficie de juego en la imagen.';

  @override
  String get buddyCalibrationFitBoardBody =>
      'Después, deja el teléfono en su sitio. Si se mueve, Buddy te avisará para que puedas ajustar las esquinas.';

  @override
  String get buddyCalibrationBoardKind => '¿Qué tipo de tablero tienes?';

  @override
  String get buddyCalibrationFlatBoard => 'Tablero plano';

  @override
  String get buddyCalibrationFoldingBoard => 'Tablero plegable';

  @override
  String get buddyCalibrationBoardKindHelp =>
      'El tablero plegable necesita cuatro controles adicionales en las uniones de la bisagra.';

  @override
  String get buddyCalibrationNoCameraBody =>
      'El modo Buddy observa un tablero real, así que no puede iniciarse sin la cámara. El resto de la aplicación seguirá funcionando.';

  @override
  String buddyHandleHingeSeam(int number) {
    return 'Unión de bisagra $number de 4';
  }

  @override
  String buddyHandleCorner(int number) {
    return 'Esquina del tablero $number de 4';
  }

  @override
  String get buddyNudgeLeft => 'Mover un poco a la izquierda';

  @override
  String get buddyNudgeRight => 'Mover un poco a la derecha';

  @override
  String get buddyNudgeUp => 'Mover un poco hacia arriba';

  @override
  String get buddyNudgeDown => 'Mover un poco hacia abajo';

  @override
  String get buddyCalibrationProblemCorners =>
      'Esas cuatro esquinas no delimitan un tablero. Coloca cada control en una esquina de la superficie de juego y vuelve a intentarlo.';

  @override
  String get buddyCalibrationProblemFoldCorners =>
      'Esos ocho puntos no delimitan un tablero plegable. Coloca cuatro en las esquinas de la superficie de juego y cuatro en las uniones de la bisagra; después, vuelve a intentarlo.';

  @override
  String get buddyCalibrationProblemUnreadable =>
      'No consigo distinguir el tablero: está totalmente cubierto o se pierde entre las sombras o los reflejos. Despeja el tablero, añade luz y vuelve a intentarlo.';

  @override
  String buddyCalibrationProblemRegionUnreadable(String region) {
    return 'No consigo distinguir $region: quizá haya algo encima o esa esquina esté demasiado oscura. Despeja la zona o añade luz y vuelve a intentarlo.';
  }

  @override
  String get buddyCalibrationProblemColours =>
      'Desde aquí, los dos colores de las fichas se parecen demasiado. Suele ayudar tener más luz o cambiar el ángulo para reducir los reflejos.';

  @override
  String buddyCalibrationProblemWrongChecker(int number) {
    return 'Las fichas no están en la posición inicial: en la punta $number hay fichas del color equivocado. Coloca el tablero en la posición inicial y vuelve a calibrarlo.';
  }

  @override
  String get buddyCalibrationProblemOverexposed =>
      'Hay tanta luz en el tablero que los colores se confunden. Baja la intensidad o mueve el teléfono para que la lámpara no se refleje directamente.';

  @override
  String get buddyCalibrationProblemReadBack =>
      'Puedo leer el tablero, pero no parece una partida a punto de empezar. Coloca las fichas en la posición inicial y vuelve a calibrarlo.';

  @override
  String get buddyCalibrationProblemStacks =>
      'Puedo leer el tablero, pero no distinguir cuántas fichas hay apiladas una detrás de otra; acabaría contando mal. Suele ayudar iluminar un poco más las puntas cercanas o elevar ligeramente la cámara.';

  @override
  String get buddyCalibrationProblemNotVisible =>
      'No veo el tablero entero. Aleja el teléfono o arrastra las esquinas hasta la superficie de juego.';

  @override
  String buddyConfirmBoardOutOfFrame(String region) {
    return 'Ya no veo el tablero entero: $region queda fuera de la imagen. Vuelve a encuadrarlo o comprueba las esquinas.';
  }

  @override
  String get buddyConfirmStartingPosition => 'Parece la posición inicial.';

  @override
  String get buddyConfirmNoCheckers =>
      'No veo ninguna ficha en las posiciones iniciales. Coloca las fichas como al comienzo de una partida y vuelve a intentarlo.';

  @override
  String buddyConfirmWrongPosition(String details, String more) {
    return 'El tablero no está en la posición inicial: $details$more.';
  }

  @override
  String buddyConfirmRegionEmpty(String region, String side) {
    return '$region parece vacío, pero la partida empieza con $side ahí';
  }

  @override
  String buddyConfirmRegionUnexpected(String region, String side) {
    return 'Hay $side en $region, pero la partida empieza con esa zona vacía';
  }

  @override
  String buddyConfirmRegionWrongSide(
    String region,
    String observed,
    String expected,
  ) {
    return 'Hay $observed en $region, pero al empezar debería haber $expected';
  }

  @override
  String get buddyReadabilityMotion =>
      'Quédate quieto un momento: pierdo de vista el tablero mientras se mueve el teléfono.';

  @override
  String get buddyReadabilityWrongFrame =>
      'La imagen que recibo no corresponde al tablero con el que me configuraron, así que no puedo orientarme. Vuelve a configurar el tablero desde aquí.';

  @override
  String get buddyReadabilityBlur =>
      'La imagen está demasiado borrosa para leer el tablero. Espera un momento a que la cámara enfoque.';

  @override
  String get buddyReadabilityCalibrationStale =>
      'El tablero ya no está donde estaba cuando lo aprendí. Vuelve a encuadrar las esquinas y retomaré la partida enseguida.';

  @override
  String get buddyReadabilityOccluded =>
      'Hay algo que tapa parte del tablero. Seguiré en cuanto quede despejado.';

  @override
  String get buddyReadabilityClear => 'Ya veo el tablero.';

  @override
  String get buddyReadabilityColorChanged =>
      'La luz del tablero ha cambiado de color y ahora ya no se parece al que aprendí. Vuelve a encuadrar las esquinas con esta luz y retomaré la partida enseguida.';

  @override
  String get buddyReadabilityTooDark =>
      'Hay poca luz para leer el tablero. Añade un poco de luz y continuaré donde lo dejamos.';

  @override
  String get buddyReadabilityTooBright =>
      'Hay tanta luz en el tablero que los colores se confunden. Baja la intensidad o mueve el teléfono para que la lámpara no se refleje directamente.';

  @override
  String buddyPromptBeliefMirror(String reason) {
    return 'Buddy todavía no ve su jugada: $reason.';
  }

  @override
  String buddyCameraUnavailablePlay(String cameraMessage) {
    return '$cameraMessage\n\nPuedes seguir jugando: introduce cada tirada en el panel de dados y marca tus jugadas en el tablero de abajo.';
  }

  @override
  String get buddyCameraGenericError =>
      'No se ha podido iniciar la cámara. Comprueba los permisos y vuelve a intentarlo.';

  @override
  String buddyRegionPoint(int number) {
    return 'la punta $number';
  }

  @override
  String get buddyRegionBar => 'la barra';

  @override
  String get buddyRegionWhiteTray => 'la bandeja de salida de las blancas';

  @override
  String get buddyRegionBlackTray => 'la bandeja de salida de las negras';

  @override
  String get buddyRegionDiceZone => 'el centro del tablero';

  @override
  String get buddyCalibrationProblemVisible =>
      'No veo el tablero entero. Aleja el teléfono o arrastra las esquinas hasta la superficie de juego.';

  @override
  String buddyConfirmMore(int number) {
    return ' (y $number más)';
  }

  @override
  String get buddyDiceOpeningCaption =>
      'Tiráis un dado cada uno. El número que saque cada jugador decide quién empieza.';

  @override
  String get buddyDiceOpeningFirst => 'Dado de blancas';

  @override
  String get buddyDiceOpeningSecond => 'Dado de negras';

  @override
  String get buddyDiceRegularCaption =>
      'Los dos números que han salido, en cualquier orden.';

  @override
  String get buddyDiceRegularFirst => 'Un dado';

  @override
  String get buddyDiceRegularSecond => 'El otro';
}
