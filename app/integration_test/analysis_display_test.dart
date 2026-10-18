// Runs the analysis-screen regression suite on a real simulator UI and SQLite.
import 'package:integration_test/integration_test.dart';

import '../test/screens/analysis_test.dart' as analysis;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  analysis.main();
}
