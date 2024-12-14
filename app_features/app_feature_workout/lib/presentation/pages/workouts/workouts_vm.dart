import 'package:app_feature_workout/presentation/pages/workouts/workouts_state.dart';
import 'package:app_feature_workout/presentation/routes/feature_workout_paths.dart';
import 'package:app_shared/config/logger_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class WorkoutsVm extends AutoDisposeNotifier<WorkoutsState> {
  @override
  WorkoutsState build() {
    return const WorkoutsState();
  }

  final log = LoggerConfig.logger;

  void goToDetail(BuildContext context) {
    final workoutId = '1';
    context.push('${FeatureWorkoutPaths.workouts}/$workoutId');
    log.i('goToDetail');
  }
}
