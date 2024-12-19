import 'package:app_feature_workout/presentation/pages/workout_session/workout_session_view.dart';
import 'package:app_feature_workout/presentation/pages/workout_detail/workout_details_view.dart';
import 'package:app_feature_workout/presentation/pages/workouts/workouts_view.dart';
import 'package:app_feature_workout/presentation/routes/feature_workout_paths.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FeatureWorkoutRoutes {
  static const initialLocation = FeatureWorkoutPaths.workouts;

  static List<GoRoute> getWorkoutRoutes(
      GlobalKey<NavigatorState>? parentNavigatorKey) {
    return [
      GoRoute(
          name: FeatureWorkoutPaths.workouts,
          path: FeatureWorkoutPaths.workouts,
          builder: (context, state) => const WorkoutsView(),
          routes: [
            GoRoute(
                name: FeatureWorkoutPaths.workoutDetails,
                path: '/:id',
                builder: (context, state) {
                  final workoutId = state.pathParameters['id'];
                  return WorkoutDetailsView(id: workoutId);
                }),
            GoRoute(
              name: FeatureWorkoutPaths.workoutSession,
              path: FeatureWorkoutPaths.workoutSession,
              parentNavigatorKey: parentNavigatorKey,
              pageBuilder: (context, state) => CustomTransitionPage<void>(
                barrierDismissible: true,
                opaque: false,
                fullscreenDialog: true,
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
                child: const WorkoutSessionView(),
              ),
            ),
            // GoRoute(
            //     name: FeatureWorkoutPaths.workoutSession,
            //     path: FeatureWorkoutPaths.workoutSession,
            //     builder: (context, state) {
            //       return const WorkoutSessionView();
            //     }),
          ]),
    ];
  }
}
