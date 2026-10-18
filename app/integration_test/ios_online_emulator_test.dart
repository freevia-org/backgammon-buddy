// Start Auth/Firestore with project demo-aigammon on localhost:9099/8080 first.
// This uses disposable local users and matches, never the production backend.
import 'package:integration_test/integration_test.dart';

import '../test/online/emulator_e2e_test.dart' as online;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  online.registerEmulatorTests(enabled: true);
}
