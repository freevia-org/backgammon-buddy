// Remaining-feature regression suites on iOS. UI suites keep their existing
// injected services; native plugins and live networking are covered separately.
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../test/screens/settings_test.dart' as settings;
import '../test/screens/new_match_settings_test.dart' as setup;
import '../test/screens/practice_test.dart' as practice;
import '../test/screens/history_test.dart' as history;
import '../test/screens/diagnostics_screen_test.dart' as diagnostics;
import '../test/screens/online_test.dart' as online_ui;
import '../test/screens/lan_test.dart' as nearby_ui;
import '../test/lan/qr_scanner_test.dart' as qr;
import '../test/lan/qr_decoder_test.dart' as qr_decoder;
import '../test/lan/qr_payload_test.dart' as qr_payload;
import '../test/lan/nearby_privacy_test.dart' as discovery;
import '../test/privacy/privacy_test.dart' as privacy;
import '../test/feedback/feedback_ui_test.dart' as feedback;
import '../test/screens/physical_buddy_gate_test.dart' as physical_gate;
import '../test/l10n/app_localizations_test.dart' as locales;
import '../test/export/backgammon_match_export_test.dart' as sgf;
import '../test/export/jellyfish_mat_export_test.dart' as mat;
import '../test/export/extreme_gammon_export_test.dart' as xg;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('settings', settings.main);
  group('setup', setup.main);
  group('practice', practice.main);
  group('history', history.main);
  group('diagnostics', diagnostics.main);
  group('online_ui', online_ui.main);
  group('nearby_ui', nearby_ui.main);
  group('qr', qr.main);
  group('qr_decoder', qr_decoder.main);
  group('qr_payload', qr_payload.main);
  group('loopback_discovery', discovery.main);
  group('privacy', privacy.main);
  group('feedback', feedback.main);
  group('physical_gate', physical_gate.main);
  group('locales', locales.main);
  group('sgf', sgf.main);
  group('mat', mat.main);
  group('xg', xg.main);
}
