import 'package:app_feature_workout/presentation/pages/workout_detail/workout_details_view.dart';
import 'package:app_feature_workout/presentation/pages/workouts/workouts_view.dart';
import 'package:app_feature_workout/presentation/routes/feature_workout_paths.dart';
import 'package:go_router/go_router.dart';

class FeatureWorkoutRoutes {
  static const initialLocation = FeatureWorkoutPaths.workouts;

  static List<GoRoute> getWorkoutRoutes() {
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
          ]),
    ];
  }
}
