import 'package:app_feature_workout/presentation/pages/workouts_view.dart';
import 'package:app_feature_workout/presentation/routes/feature_workout_paths.dart';
import 'package:go_router/go_router.dart';

class FeatureWorkoutRoutes {
  static const initialLocation = FeatureWorkoutPaths.workouts;

  static List<GoRoute> getWorkoutRoutes() {
    return [
      GoRoute(
        name: FeatureWorkoutPaths.workouts,
        path: FeatureWorkoutPaths.workouts,
        builder: (context, state) => WorkoutsView(),
      ),
    ];
  }
}
