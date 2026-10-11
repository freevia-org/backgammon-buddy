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
  String get tutorMoveExplanations => 'Explicaciones de las jugadas';

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
}
