import 'package:app_feature_workout/presentation/pages/workout_detail/workout_details_state.dart';
import 'package:app_feature_workout/presentation/pages/workout_session/workout_session_view.dart';
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

  void goSession(BuildContext context) {
    context.pushNamed(FeatureWorkoutPaths.workoutSession);
  }

  void openSession(BuildContext context) {
    showBottomSheet(context: context, builder: (context) => const WorkoutSessionView());
  }
}
