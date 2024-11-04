import 'package:clocktrain/presentation/pages/home_page.dart';
import 'package:clocktrain/presentation/pages/main_page.dart';
import 'package:clocktrain/presentation/pages/sheet_page.dart';
import 'package:clocktrain/presentation/pages/sheets_list_page.dart';
import 'package:clocktrain/presentation/pages/settings_page.dart';
import 'package:clocktrain/presentation/pages/workout_page.dart';
import 'package:clocktrain/presentation/routes/path.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _sectionNavigatorKey = GlobalKey<NavigatorState>();

final routers = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: AppPath.homePage,
  routes: [
    StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            MainPage(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            navigatorKey: _sectionNavigatorKey,
            routes: [
              GoRoute(
                path: AppPath.homePage,
                builder: (context, state) {
                  return const HomePage();
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                  path: AppPath.sheetListPage,
                  builder: (context, state) => const SheetListPage(),
                  routes: [
                    GoRoute(
                      path: AppPath.sheetPageWithId(':exerciseId'),
                      builder: (context, state) {
                        final exerciseId = state.pathParameters['exerciseId']!;
                        return SheetPage(exerciseId: exerciseId);
                      },
                    ),
                  ]),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppPath.workoutPage,
                builder: (context, state) => const WorkoutPage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppPath.settingsPage,
                builder: (context, state) => const SettingsPage(),
              ),
            ],
          ),
        ])
  ],
);
