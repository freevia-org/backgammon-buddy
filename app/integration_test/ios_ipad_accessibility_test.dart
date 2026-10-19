// Native iOS execution of the same regression suite run by host CI.
import 'package:integration_test/integration_test.dart';
import '../test/ipad_accessibility_test.dart' as checks;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  checks.main();
}
