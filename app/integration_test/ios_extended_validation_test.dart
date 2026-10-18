// Local Auth/Firestore emulators must be running for the online group.
// The host-only fake-clock test skips itself on a live binding.
// Opt into native share cases with --dart-define=AIGAMMON_MANUAL_SHARE=true;
// they require dismissing the real iOS sheets without sharing.
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'ios_device_services_test.dart' as native;
import 'ios_full_ai_match_test.dart' as ai;
import 'ios_locale_layout_test.dart' as layouts;
import 'ios_online_emulator_test.dart' as online;
import 'ios_remaining_features_test.dart' as features;
import '../test/l10n/framework_localizations_test.dart' as framework;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('layouts', layouts.main);
  group('framework', framework.main);
  group('features', features.main);
  group('online_backend', online.main);
  group('natural_ai', ai.main);
  group('native_services', native.main);
}
