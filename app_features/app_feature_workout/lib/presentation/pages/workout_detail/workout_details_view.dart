import 'package:app_feature_workout/domain/enities/exercise.dart';
import 'package:app_feature_workout/presentation/pages/workout_detail/widgets/exercise_card.dart';
import 'package:app_feature_workout/presentation/pages/workout_detail/workout_details_state.dart';
import 'package:app_feature_workout/presentation/pages/workout_detail/workout_details_vm.dart';
import 'package:app_shared/app_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutDetailsView extends ConsumerWidget {
  const WorkoutDetailsView({required this.id, super.key});

  final String? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(_workoutDetailsVmProvider.notifier);
    return Column(
      children: [
        _buildAppBar(context,
            onBack: () => vm.pop(context), onPlay: () => vm.goSession(context)),
        // _buildSubappBar(context, onBack: () => vm.pop(context)),
        Expanded(child: _buildStepper()),
      ],
    );
  }

  Widget _buildStepper() {
    final exercises = [
      Exercise(
        id: 1,
        name: 'Push Up',
        // duration: const Duration(seconds: 2),
      ),
      Exercise(
        id: 2,
        name: 'Squat',
        duration: const Duration(seconds: 2),
      ),
      Exercise(
        id: 3,
        name: 'Plank',
        duration: const Duration(seconds: 3),
      ),
    ];

    return ListView.builder(
      itemCount: exercises.length,
      itemBuilder: (context, index) {
        return ExerciseCard(exercise: exercises[index]);
      },
    );

    // return AppVerticalStepper(
    //   steps: steps,
    // );
    // return Stepper(
    //   onStepContinue: () => print('onStepContinue'),
    //   onStepCancel: () => print('onStepCancel'),
    //   steps: const [
    //     Step(title: Text('step 1'), content: Text('step 1')),
    //     Step(title: Text('step 2'), content: Text('step 2')),
    //     Step(title: Text('step 3'), content: Text('step 3')),
    //     Step(title: Text('step 4'), content: Text('step 4')),
    //     Step(title: Text('step 5'), content: Text('step 5')),
    //     Step(title: Text('step 6'), content: Text('step 6')),
    //     Step(title: Text('step 7'), content: Text('step 7')),
    //     Step(title: Text('step 8'), content: Text('step 8')),
    //     Step(title: Text('step 9'), content: Text('step 9')),
    //     Step(title: Text('step 10'), content: Text('step 10')),
    //     Step(title: Text('step 11'), content: Text('step 11')),
    //   ],
    // );
  }

  Widget _buildAppBar(BuildContext context,
      {void Function()? onBack, void Function()? onPlay}) {
    return Container(
      child: Row(
        children: [
          AppButton.icon(
              onPressed: onBack,
              child: SvgWidget(
                AppAsset.arrowBackIcon,
                colorFilter: ColorFilter.mode(
                    context.colorScheme.primary, BlendMode.srcIn),
              )),
          Text('Workout Name', style: context.textTheme.headlineSmall),
          const Spacer(),
          Padding(
            padding: AppDimesnionsEdgeInsetsExt.onlyLeft4,
            child: AppButton.iconCircleBox(
                onPressed: onPlay,
                child: Padding(
                  padding: AppDimesnionsEdgeInsetsExt.onlyLeft4,
                  child: SvgWidget(
                    AppAsset.playIcon,
                    colorFilter: ColorFilter.mode(
                        context.colorScheme.primary, BlendMode.srcIn),
                  ),
                )),
          )
        ],
      ),
    );
  }

  Widget _buildSubappBar(BuildContext context, {void Function()? onBack}) {
    return AppHeader(
      type: AppBarType.secondary,
      title: 'Workout Name',
      leftButton: AppHeaderButtonState(onPressed: onBack),
      rightButton: [
        AppHeaderButtonState(
          text: 'Edit',
        ),
      ],
    );
  }
}

final _workoutDetailsVmProvider =
    NotifierProvider.autoDispose<WorkoutDetailsVm, WorkoutDetailsState>(
        () => WorkoutDetailsVm());
