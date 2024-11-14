import 'package:clocktrain/presentation/pages/root_page.dart';
import 'package:clocktrain/presentation/pages/sheet/workout_editor/workout_editor_page.dart';
import 'package:clocktrain/presentation/pages/dashboard/dashboard_page.dart';
import 'package:clocktrain/presentation/widgets/templates/main_page.dart';
import 'package:clocktrain/presentation/pages/profile/profile_page.dart';
import 'package:clocktrain/presentation/pages/sheet/sheet_page.dart';
import 'package:clocktrain/presentation/pages/sheet/workout_list_page.dart';
import 'package:clocktrain/presentation/pages/settings/settings_page.dart';
import 'package:clocktrain/presentation/pages/workout/workout_page.dart';
import 'package:clocktrain/presentation/routes/path.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouteObserver extends NavigatorObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    print('didPush');
    super.didPush(route, previousRoute);
    _handleRouteChange(route);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    print('didPop');
    super.didPop(route, previousRoute);
    _handleRouteChange(previousRoute);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    print('didReplace');
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    _handleRouteChange(newRoute);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    print('didRemove');
    super.didRemove(route, previousRoute);
    _handleRouteChange(previousRoute);
  }

  @override
  void didStartUserGesture(Route route, Route? previousRoute) {
    print('didStartUserGesture');
    super.didStartUserGesture(route, previousRoute);
    _handleRouteChange(route);
  }

  @override
  void didStopUserGesture() {
    print('didStopUserGesture');
    super.didStopUserGesture();
  }

  void _handleRouteChange(Route? route) {
    if (route != null) {
      var routeName = route.settings.name;
      print('Current route: $routeName');
    } else {
      print('Current route: null');
    }
  }
}

class AppRouter {
  // late final WidgetRef ref;

  static final AppRouter _instance = AppRouter._internal();

  AppRouter._internal();

  // factory AppRouter(WidgetRef ref) {
  //   _instance.ref = ref;
  //   return _instance;
  // }

  factory AppRouter() => _instance;

  // static final GlobalKey<NavigatorState> rootNavigatorKey =
  //     GlobalKey<NavigatorState>();
  // static final GlobalKey<NavigatorState> sectionNavigatorKey =
  //     GlobalKey<NavigatorState>();

  final GoRouter routers = GoRouter(
    // navigatorKey: rootNavigatorKey,
    // observers: [AppRouteObserver()],
    initialLocation: AppPath.rootPage,
    routes: [
      GoRoute(
          name: AppPath.rootPage,
          path: AppPath.rootPage,
          builder: (context, state) => const RootPage(),
          routes: [_buildShellRoute()])
      // _buildShellRoute(),
    ],
  );

  static StatefulShellRoute _buildShellRoute() {
    return StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          MainPage(navigationShell: navigationShell),
      branches: _buildBranches(),
    );
  }

  static List<StatefulShellBranch> _buildBranches() {
    return [
      _homeBranch(),
      _sheetBranch(),
      _workoutBranch(),
      _settingsBranch(),
      _profileBranch()
    ];
  }

  static StatefulShellBranch _homeBranch() {
    return StatefulShellBranch(
      // navigatorKey: sectionNavigatorKey,
      // observers: [AppRouteObserver()],
      routes: [
        GoRoute(
          name: AppPath.DashboardPage,
          path: AppPath.DashboardPage,
          builder: (context, state) => const DashboardPage(),
        ),
      ],
    );
  }

  static StatefulShellBranch _sheetBranch() {
    return StatefulShellBranch(
      // observers: [AppRouteObserver()],
      routes: [
        GoRoute(
          name: AppPath.sheetListPage,
          path: AppPath.sheetListPage,
          builder: (context, state) => const WorkoutListPage(),
          routes: [
            GoRoute(
              name: AppPath.sheetPageWithId(':exerciseId'),
              path: AppPath.sheetPageWithId(':exerciseId'),
              builder: (context, state) {
                final exerciseId = state.pathParameters['exerciseId']!;
                return SheetPage(exerciseId: exerciseId);
              },
            ),
            GoRoute(
              name: AppPath.workoutEditorPage,
              path: AppPath.workoutEditorPage,
              builder: (context, state) => const WorkoutEditorPage(),
            ),
          ],
        ),
      ],
    );
  }

  static StatefulShellBranch _workoutBranch() {
    return StatefulShellBranch(
      // observers: [AppRouteObserver()],
      routes: [
        GoRoute(
          name: AppPath.workoutPage,
          path: AppPath.workoutPage,
          builder: (context, state) => const WorkoutPage(),
        ),
      ],
    );
  }

  static StatefulShellBranch _settingsBranch() {
    return StatefulShellBranch(
      // observers: [AppRouteObserver()],
      routes: [
        GoRoute(
          name: AppPath.settingsPage,
          path: AppPath.settingsPage,
          builder: (context, state) => const SettingsPage(),
        ),
      ],
    );
  }

  static StatefulShellBranch _profileBranch() {
    return StatefulShellBranch(
      // observers: [AppRouteObserver()],
      routes: [
        GoRoute(
          name: AppPath.profilePage,
          path: AppPath.profilePage,
          builder: (context, state) => const ProfilePage(),
        ),
      ],
    );
  }
}
