import 'package:clocktrain/presentation/pages/home_page.dart';
import 'package:clocktrain/presentation/pages/main_page.dart';
import 'package:clocktrain/presentation/pages/workout_page.dart';
import 'package:clocktrain/presentation/routes/path.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _sectionNavigatorKey = GlobalKey<NavigatorState>();

final routers = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: homePage,
  routes: [
    StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            MainPage(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            navigatorKey: _sectionNavigatorKey,
            routes: [
              GoRoute(
                path: homePage,
                builder: (context, state) => const HomePage(),
              ),
            ],
          ),
          StatefulShellBranch(
            // navigatorKey: _sectionNavigatorKey,
            routes: [
              GoRoute(
                path: workoutPage,
                builder: (context, state) => const WorkoutPage(),
              ),
            ],
          ),
        ])
    // GoRoute(
    //   path: mainPage,
    //   builder: (context, state) => const MainPage(),
    //   routes: [
    //     GoRoute(
    //       path: homePage,
    //       builder: (context, state) => const HomePage(),
    //     ),
    //     GoRoute(
    //       path: workoutPage,
    //       builder: (context, state) => const WorkoutPage(),
    //     ),
    //   ],
    // ),
  ],
);
