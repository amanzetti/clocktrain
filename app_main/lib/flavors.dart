enum Flavor {
  dev,
  prod,
  qa,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

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
