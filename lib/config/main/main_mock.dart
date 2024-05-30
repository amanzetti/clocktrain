import '../flavors/flavors.dart';

import '../../main.dart' as runner;

Future<void> main() async {
  F.appFlavor = Flavor.mock;
 runner.main();
}
