// Run on the dedicated iPad simulator. Core flow/engine/socket checks use real
// native services; the accessibility group uses synthetic iPad viewport sizes.
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'ios_e2e_test.dart' as core;
import 'ios_ipad_accessibility_test.dart' as accessibility;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('iPad core', core.main);
  group('iPad accessibility', accessibility.main);
}
