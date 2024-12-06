import 'package:app_shared/config/flavors/flavors.dart';

import 'main.dart' as runner;

Future<void> main() async {
  F.appFlavor = Flavor.prod;
   runner.main();
}
