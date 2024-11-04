class AppPath {
  static final AppPath _instance = AppPath._internal();

  AppPath._internal();

  factory AppPath() => _instance;

  static const String mainPage = '/main_page';
  static const String homePage = '/home_page';
  static const String sheetListPage = '/sheet_list_page';
  static String sheetPageWithId(String exerciseId) => '/sheet/$exerciseId';
  static const String workoutPage = '/workout_page';
  static const String userPage = '/user_page';

  static const List<String> bottomNavigationPath = [
    homePage,
    sheetListPage,
    workoutPage,
    userPage
  ];

  static const List<String> titleMainPage = [
    'Home',
    'Sheet',
    'Workout',
    'User'
  ];
}
