import 'package:board_vision/board_vision.dart';

import '../l10n/app_localizations.dart';

/// Converts board-vision diagnostics into app-localized, actionable copy.
/// The vision package deliberately stays independent of Flutter/localization.
String buddyRegionLabel(RoiId region, AppLocalizations l10n) =>
    switch (region) {
      RoiId.bar => l10n.buddyRegionBar,
      RoiId.offWhite => l10n.buddyRegionWhiteTray,
      RoiId.offBlack => l10n.buddyRegionBlackTray,
      RoiId.diceZone => l10n.buddyRegionDiceZone,
      _ => l10n.buddyRegionPoint(region.pointIndex + 1),
    };

String buddyPointDiscrepancyMessage(
  PointDiscrepancy discrepancy,
  AppLocalizations l10n,
) {
  final region = buddyRegionLabel(discrepancy.region, l10n);
  final expected = _checkerColorLabel(discrepancy.expected, l10n);
  final observed = _checkerColorLabel(discrepancy.observed, l10n);
  if (discrepancy.observed == CheckerColor.none) {
    return l10n.buddyConfirmRegionEmpty(region, expected);
  }
  if (discrepancy.expected == CheckerColor.none) {
    return l10n.buddyConfirmRegionUnexpected(region, observed);
  }
  return l10n.buddyConfirmRegionWrongSide(region, observed, expected);
}

String buddyConfirmationMessage(ConfirmResult result, AppLocalizations l10n) {
  if (result.agrees) return l10n.buddyConfirmStartingPosition;
  if (result.message.startsWith('I cannot see the whole board')) {
    return l10n.buddyCalibrationProblemNotVisible;
  }
  if (result.discrepancies.isEmpty) return l10n.buddyConfirmNoCheckers;
  final details = result.discrepancies
      .take(2)
      .map((item) => buddyPointDiscrepancyMessage(item, l10n))
      .join('; ');
  final rest = result.discrepancies.length - 2;
  final more = rest > 0 ? l10n.buddyConfirmMore(rest) : '';
  return l10n.buddyConfirmWrongPosition(details, more);
}

String buddyCalibrationProblemMessage(
  CalibrationResult result,
  AppLocalizations l10n, {
  required bool folding,
}) {
  final first = result.offending.firstOrNull;
  return switch (result.problem) {
    CalibrationProblem.cornersNotABoard =>
      folding
          ? l10n.buddyCalibrationProblemFoldCorners
          : l10n.buddyCalibrationProblemCorners,
    CalibrationProblem.boardNotFullyVisible =>
      first == null
          ? l10n.buddyCalibrationProblemNotVisible
          : l10n.buddyConfirmBoardOutOfFrame(buddyRegionLabel(first, l10n)),
    CalibrationProblem.regionUnreadable =>
      first == null
          ? l10n.buddyCalibrationProblemUnreadable
          : l10n.buddyCalibrationProblemRegionUnreadable(
              buddyRegionLabel(first, l10n),
            ),
    CalibrationProblem.boardOverExposed =>
      l10n.buddyCalibrationProblemOverexposed,
    CalibrationProblem.checkersNotInStartingPosition =>
      result.message.startsWith('The checkers are not') && first != null
          ? l10n.buddyCalibrationProblemWrongChecker(first.pointIndex + 1)
          : l10n.buddyCalibrationProblemReadBack,
    CalibrationProblem.checkerColoursNotSeparable =>
      l10n.buddyCalibrationProblemColours,
    CalibrationProblem.stackPitchNotMeasurable =>
      l10n.buddyCalibrationProblemStacks,
    null => l10n.buddyCameraUnavailable,
  };
}

String buddyReadabilityMessage(Readability? reading, AppLocalizations l10n) =>
    switch (reading?.cause) {
      ReadabilityCause.boardOutOfFrame => l10n.buddyReadabilityWrongFrame,
      ReadabilityCause.calibrationStale =>
        l10n.buddyReadabilityCalibrationStale,
      ReadabilityCause.motion => l10n.buddyReadabilityMotion,
      ReadabilityCause.blur => l10n.buddyReadabilityBlur,
      ReadabilityCause.tooDark => l10n.buddyReadabilityTooDark,
      ReadabilityCause.tooBright => l10n.buddyReadabilityTooBright,
      ReadabilityCause.occluded => l10n.buddyReadabilityOccluded,
      null =>
        reading?.level == ReadabilityLevel.green
            ? l10n.buddyReadabilityClear
            : l10n.buddyLookingAtBoard,
    };

String buddyCameraErrorMessage(String message, AppLocalizations l10n) =>
    message.startsWith('Backgammon Buddy does not have permission')
    ? l10n.buddyCameraPermission
    : l10n.buddyCameraUnavailable;

String _checkerColorLabel(CheckerColor color, AppLocalizations l10n) =>
    switch (color) {
      CheckerColor.white => l10n.white,
      CheckerColor.black => l10n.black,
      CheckerColor.none => '',
    };
