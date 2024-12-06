import 'package:app_shared/config/env/config.dart';
import 'package:app_shared/config/env/config_dev.dart';
import 'package:app_shared/config/env/config_prod.dart';
import 'package:app_shared/config/env/config_qa.dart';

enum Flavor {
  dev,
  prod,
  qa,
}

class F {
  static late Flavor appFlavor;

  static Config get config {
    switch (appFlavor) {
      case Flavor.dev:
        return ConfigDev();
      case Flavor.qa:
        return ConfigQa();
      case Flavor.prod:
        return ConfigProd();
    }
  }

  static String get name => appFlavor.name;

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'cLockTrain Dev';
      case Flavor.prod:
        return 'cLockTrain';
      case Flavor.qa:
        return 'cLockTrain QA';
      default:
        return 'title';
    }
  }
}
