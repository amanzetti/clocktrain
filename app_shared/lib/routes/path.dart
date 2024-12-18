class AppPath {
  AppPath._internal();

  factory AppPath() => _instance;
  static final AppPath _instance = AppPath._internal();

  static const String rootPage = '/';

  ///Main bottom navigation
  static const String dashboardPage = '/dashboard';
  static const String sheetListPage = '/sheet_list';
  static const String settingsPage = '/settings';
  static const String workoutPage = '/workout';

  ///Main appbar navigation
  static const String profilePage = '/profile';

  ///Sub appbar navigation
  static const String workoutEditorPage = '/workout_editor';

  static String sheetPageWithId(String exerciseId) => '/sheet/$exerciseId';

  static const List<String> bottomNavigationPath = [
    dashboardPage,
    sheetListPage,
    workoutPage,
    settingsPage
  ];

  static const List<String> titleMainPage = [
    'Home',
    'Sheet',
    'Workout',
    'Settings'
  ];
}
