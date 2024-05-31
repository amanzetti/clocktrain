import 'config/flavors/flavors.dart';

import 'main.dart' as runner;

Future<void> main() async {
  F.appFlavor = Flavor.qa;
  runner.main();
}
