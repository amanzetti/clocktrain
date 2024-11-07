import 'package:clocktrain/presentation/pages/home_page.dart';
import 'package:clocktrain/presentation/pages/main_page.dart';
import 'package:clocktrain/presentation/pages/profile_page.dart';
import 'package:clocktrain/presentation/pages/sheet_page.dart';
import 'package:clocktrain/presentation/pages/workout_list_page.dart';
import 'package:clocktrain/presentation/pages/settings_page.dart';
import 'package:clocktrain/presentation/pages/workout_page.dart';
import 'package:clocktrain/presentation/routes/path.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final AppRouter _instance = AppRouter._internal();

  AppRouter._internal();

  factory AppRouter() => _instance;

  static final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> sectionNavigatorKey =
      GlobalKey<NavigatorState>();

  final GoRouter routers = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: AppPath.homePage,
    routes: [
      _buildShellRoute(),
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
      navigatorKey: sectionNavigatorKey,
      routes: [
        GoRoute(
          path: AppPath.homePage,
          builder: (context, state) => const HomePage(),
        ),
      ],
    );
  }

  static StatefulShellBranch _sheetBranch() {
    return StatefulShellBranch(
      routes: [
        GoRoute(
          path: AppPath.sheetListPage,
          builder: (context, state) => const WorkoutListPage(),
          routes: [
            GoRoute(
              path: AppPath.sheetPageWithId(':exerciseId'),
              builder: (context, state) {
                final exerciseId = state.pathParameters['exerciseId']!;
                return SheetPage(exerciseId: exerciseId);
              },
            ),
          ],
        ),
      ],
    );
  }

  static StatefulShellBranch _workoutBranch() {
    return StatefulShellBranch(
      routes: [
        GoRoute(
          path: AppPath.workoutPage,
          builder: (context, state) => const WorkoutPage(),
        ),
      ],
    );
  }

  static StatefulShellBranch _settingsBranch() {
    return StatefulShellBranch(
      routes: [
        GoRoute(
          path: AppPath.settingsPage,
          builder: (context, state) => const SettingsPage(),
        ),
      ],
    );
  }

  static StatefulShellBranch _profileBranch() {
    return StatefulShellBranch(
      routes: [
        GoRoute(
          path: AppPath.profilePage,
          builder: (context, state) => const ProfilePage(),
        ),
      ],
    );
  }
}
