import 'package:app_feature_workout/presentation/pages/workout_session/widgets/app_video_player.dart';
import 'package:app_feature_workout/presentation/pages/workout_session/widgets/container_timer.dart';
import 'package:app_feature_workout/presentation/pages/workout_session/workout_session_vm.dart';
import 'package:app_shared/app_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutSessionView extends ConsumerWidget {
  const WorkoutSessionView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.read(workoutSessionVmProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workout session'),
        leading: AppButton.icon(
          child: SvgWidget(AppAsset.cancelIcon),
          onPressed: () {
            vm.dispose();
            vm.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 60,
            child: AppVideoPlayer(
              autoPlay: false,
            ),
          ),
          Align(alignment: Alignment.bottomCenter, child: ContainerTimer()),
          // _buildTimer(),
          // _buildNextExercise(),
        ],
      ),
    );
  }

  Widget _buildNextExercise() {
    return Placeholder(
      fallbackHeight: 80,
      fallbackWidth: 150,
    );
  }
}
