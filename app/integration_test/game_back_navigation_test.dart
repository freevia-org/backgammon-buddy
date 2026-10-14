import 'package:integration_test/integration_test.dart';

import '../test/screens/game/game_back_navigation_test.dart' as back_navigation;

/// Exercises the same Back-button regressions on an Android device.
///
/// Run from app/:
/// flutter test integration_test/game_back_navigation_test.dart -d emulator-5554
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  back_navigation.main();
}
