import 'package:clocktrain/domain/entities/exercise_entity.dart';
import 'package:clocktrain/presentation/routes/path.dart';
import 'package:clocktrain/presentation/widgets/organisms/header_with_action_button.dart';
import 'package:clocktrain/utils/ext/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SheetPage extends ConsumerWidget {
  final String exerciseId;

  const SheetPage({required this.exerciseId, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final userState = ref.watch(userProvider);

    // final exercises = userState.first.workouts.first.exercises;

    return Container(
      color: context.colorScheme.surface,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          HeaderWithActionButton(
            title: 'Exercises',
            color: context.colorScheme.surface,
            onTap: () => context.push(AppPath.workoutEditorPage),
          ),
          // Expanded(
            // child: _buildExerciseList(context, exercises),
          // ),
        ],
      ),
    );
  }

  Widget _buildExerciseList(BuildContext context, List<Exercise> exercises) {
    return ReorderableListView(
      onReorder: (oldIndex, newIndex) {
        // ref
        // .read(exerciseListProvider.notifier)
        // .reorderList(oldIndex, newIndex);
      },
      children: const [
        // for (int index = 0; index < exercises.length; index++)
        //   ListTileApp<Exercise>(
        //       listTileAppType: ListTileAppType.exercise,
        //       rateo: StandardRateo.ratio_4_3,
        //       widthImage: 120,
        //       object: exercises[index],
        //       mediaUrl: exercises[index].mediaUrl ?? '',
        //       rep: exercises[index].sets.first.reps.length,
        //       reps: exercises[index].sets.first.reps,
        //       set: exercises[index].sets.length,
        //       padding: const EdgeInsets.symmetric(vertical: 8.0),
        //       key: ValueKey(
        //         exercises[index],
        //       ))
      ],
    );
  }
}
