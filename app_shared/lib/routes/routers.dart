import 'package:app_feature_login/presentation/routes/app_routes.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter._internal();

  factory AppRouter() => _instance;
  static final AppRouter _instance = AppRouter._internal();

  // static final GlobalKey<NavigatorState> rootNavigatorKey =
  //     GlobalKey<NavigatorState>();
  // static final GlobalKey<NavigatorState> sectionNavigatorKey =
  //     GlobalKey<NavigatorState>();

  final GoRouter routers = GoRouter(
    // navigatorKey: rootNavigatorKey,
    // observers: [AppRouteObserver()],
    // initialLocation: AppPath.rootPage,
    // initialLocation: AppPath.loginPage,
    initialLocation: LoginRouteAppFeature.initialLocation,
    routes: [
      // GoRoute(
      //   name: AppPath.rootPage,
      //   path: AppPath.rootPage,
      //   builder: (context, state) => const RootPage(),
      // ),
      ...LoginRouteAppFeature.getLoginRoutes()
      // GoRoute(
      //   name: AppPath.loginPage,
      //   path: AppPath.loginPage,
      //   builder: (context, state) => LoginView(),
      //   // routes: [_buildShellRoute()]
      // ),
      // _buildShellRoute()
    ],
  );

  // static StatefulShellRoute _buildShellRoute() {
  //   return StatefulShellRoute.indexedStack(
  //     builder: (context, state, navigationShell) =>
  //         MainPage(navigationShell: navigationShell),
  //     branches: _buildBranches(),
  //   );
  // }

  // static List<StatefulShellBranch> _buildBranches() {
  //   return [
  //     _homeBranch(),
  //     _sheetBranch(),
  //     _workoutBranch(),
  //     _settingsBranch(),
  //     _profileBranch()
  //   ];
  // }

  // static StatefulShellBranch _homeBranch() {
  //   return StatefulShellBranch(
  //     // navigatorKey: sectionNavigatorKey,
  //     // observers: [AppRouteObserver()],
  //     routes: [
  //       GoRoute(
  //         name: AppPath.dashboardPage,
  //         path: AppPath.dashboardPage,
  //         builder: (context, state) => const DashboardPage(),
  //       ),
  //     ],
  //   );
  // }

  // static StatefulShellBranch _sheetBranch() {
  //   return StatefulShellBranch(
  //     // observers: [AppRouteObserver()],
  //     routes: [
  //       GoRoute(
  //         name: AppPath.sheetListPage,
  //         path: AppPath.sheetListPage,
  //         builder: (context, state) => const WorkoutListPage(),
  //         routes: [
  //           GoRoute(
  //             name: AppPath.sheetPageWithId(':exerciseId'),
  //             path: AppPath.sheetPageWithId(':exerciseId'),
  //             builder: (context, state) {
  //               final exerciseId = state.pathParameters['exerciseId']!;
  //               return SheetPage(exerciseId: exerciseId);
  //             },
  //           ),
  //           GoRoute(
  //             name: AppPath.workoutEditorPage,
  //             path: AppPath.workoutEditorPage,
  //             builder: (context, state) => const WorkoutEditorPage(),
  //           ),
  //         ],
  //       ),
  //     ],
  //   );
  // }

  // static StatefulShellBranch _workoutBranch() {
  //   return StatefulShellBranch(
  //     // observers: [AppRouteObserver()],
  //     routes: [
  //       GoRoute(
  //         name: AppPath.workoutPage,
  //         path: AppPath.workoutPage,
  //         builder: (context, state) => const ToolsPage(),
  //       ),
  //     ],
  //   );
  // }

  // static StatefulShellBranch _settingsBranch() {
  //   return StatefulShellBranch(
  //     // observers: [AppRouteObserver()],
  //     routes: [
  //       GoRoute(
  //         name: AppPath.settingsPage,
  //         path: AppPath.settingsPage,
  //         builder: (context, state) => const SettingsPage(),
  //       ),
  //     ],
  //   );
  // }

  // static StatefulShellBranch _profileBranch() {
  //   return StatefulShellBranch(
  //     // observers: [AppRouteObserver()],
  //     routes: [
  //       GoRoute(
  //         name: AppPath.profilePage,
  //         path: AppPath.profilePage,
  //         builder: (context, state) => const ProfilePage(),
  //       ),
  //     ],
  //   );
  // }
}
