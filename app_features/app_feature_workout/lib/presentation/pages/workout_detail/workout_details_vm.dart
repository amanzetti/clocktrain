import 'package:app_feature_workout/presentation/pages/workout_detail/workout_details_state.dart';
import 'package:app_feature_workout/presentation/routes/feature_workout_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class WorkoutDetailsVm extends AutoDisposeNotifier<WorkoutDetailsState> {
  @override
  build() {
    return const WorkoutDetailsState();
  }

  void pop(BuildContext context) {
    context.pop();
  }

  void pushSession(BuildContext context) {
    context.pushNamed(FeatureWorkoutPaths.workoutSession);
  }
}
