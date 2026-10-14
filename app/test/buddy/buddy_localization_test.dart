import 'package:aigammon_app/buddy/buddy_localization.dart';
import 'package:aigammon_app/l10n/app_localizations_en.dart';
import 'package:board_vision/board_vision.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final l10n = AppLocalizationsEn();

  group('board-vision messages use app localization', () {
    test(
      'calibration failures are mapped by problem, including region data',
      () {
        final corners = CalibrationResult.failure(
          CalibrationProblem.cornersNotABoard,
          'raw vision package message',
        );
        final unreadable = CalibrationResult.failure(
          CalibrationProblem.regionUnreadable,
          'raw vision package message',
          const [RoiId.point7],
        );
        final checker = CalibrationResult.failure(
          CalibrationProblem.checkersNotInStartingPosition,
          'The checkers are not in the starting position',
          const [RoiId.point12],
        );

        expect(
          buddyCalibrationProblemMessage(corners, l10n, folding: false),
          l10n.buddyCalibrationProblemCorners,
        );
        expect(
          buddyCalibrationProblemMessage(corners, l10n, folding: true),
          l10n.buddyCalibrationProblemFoldCorners,
        );
        expect(
          buddyCalibrationProblemMessage(unreadable, l10n, folding: false),
          l10n.buddyCalibrationProblemRegionUnreadable(
            l10n.buddyRegionPoint(8),
          ),
        );
        expect(
          buddyCalibrationProblemMessage(checker, l10n, folding: false),
          l10n.buddyCalibrationProblemWrongChecker(13),
        );
      },
    );

    test(
      'starting-position discrepancies name localized regions and colours',
      () {
        final discrepancy = PointDiscrepancy(
          region: RoiId.point3,
          pointNumber: 4,
          expected: CheckerColor.white,
          observed: CheckerColor.black,
        );
        expect(
          buddyPointDiscrepancyMessage(discrepancy, l10n),
          l10n.buddyConfirmRegionWrongSide(
            l10n.buddyRegionPoint(4),
            l10n.black,
            l10n.white,
          ),
        );

        final confirm = ConfirmResult(
          agrees: false,
          discrepancies: [discrepancy],
          message: 'raw vision package message',
        );
        expect(
          buddyConfirmationMessage(confirm, l10n),
          l10n.buddyConfirmWrongPosition(
            buddyPointDiscrepancyMessage(discrepancy, l10n),
            '',
          ),
        );
      },
    );

    test(
      'camera permission text is mapped and plugin detail is suppressed',
      () {
        expect(
          buddyCameraErrorMessage(
            'Backgammon Buddy does not have permission to use the camera.',
            l10n,
          ),
          l10n.buddyCameraPermission,
        );
        expect(
          buddyCameraErrorMessage('camera plugin internal failure: XYZ', l10n),
          l10n.buddyCameraUnavailable,
        );
      },
    );
  });
}
