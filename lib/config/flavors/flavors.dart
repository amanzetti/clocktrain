import 'package:clocktrain/config/env/config.dart';
import 'package:clocktrain/config/env/config_dev.dart';
import 'package:clocktrain/config/env/config_mock.dart';
import 'package:clocktrain/config/env/config_prod.dart';
import 'package:clocktrain/config/env/config_qa.dart';

enum Flavor {
  dev,
  mock,
  prod,
  qa,
}

class F {
  static late Flavor appFlavor;

  static Config get config {
    switch (appFlavor) {
      case Flavor.mock:
        return ConfigMock();
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
      case Flavor.mock:
        return 'cLockTrain Mock';
      case Flavor.prod:
        return 'cLockTrain';
      case Flavor.qa:
        return 'cLockTrain QA';
      default:
        return 'title';
    }
  }
}
