class AppPath {
  static final AppPath _instance = AppPath._internal();

  AppPath._internal();

  factory AppPath() => _instance;

  static const String rootPage = '/';

  // static const String mainPage = 'main_page';

  ///Main bottom navigation
  static const String DashboardPage = '/home_page';
  static const String sheetListPage = '/sheet_list_page';
  static const String settingsPage = '/settings_page';
  static const String workoutPage = '/workout_page';

  ///Main appbar navigation
  static const String profilePage = '/profile_page';

  ///Sub appbar navigation
  static const String workoutEditorPage = '/workout_editor_page';

  static String sheetPageWithId(String exerciseId) => '/sheet/$exerciseId';

  static const List<String> bottomNavigationPath = [
    DashboardPage,
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
