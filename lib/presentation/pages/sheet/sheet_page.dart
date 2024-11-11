import 'package:clocktrain/data/models/exercise_model.dart';
import 'package:clocktrain/domain/providers/user_proivider.dart';
import 'package:clocktrain/presentation/routes/path.dart';
import 'package:clocktrain/presentation/themes/app_color.dart';
import 'package:clocktrain/presentation/themes/app_typography.dart';
import 'package:clocktrain/presentation/widgets/atoms/elevated_rounded_button.dart';
import 'package:clocktrain/presentation/widgets/molecules/list_tile_app.dart';
import 'package:clocktrain/presentation/widgets/organisms/header_with_action_button.dart';
import 'package:clocktrain/utils/enum/standard_rateo_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SheetPage extends ConsumerWidget {
  final String exerciseId;

  const SheetPage({required this.exerciseId, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(userProvider);

    final exercises = userState.first.workouts.first.exercises;

    return Container(
      color: AppColor.instance.surface,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          HeaderWithActionButton(
            title: 'Exercises',
            color: AppColor.instance.surface,
            onTap: () => context.push(AppPath.workoutEditorPage),
          ),
          Expanded(
            child: _buildExerciseList(context, exercises),
          ),
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
      children: [
        for (int index = 0; index < exercises.length; index++)
          ListTileApp<Exercise>(
              listTileAppType: ListTileAppType.exercise,
              rateo: StandardRateo.ratio_4_3,
              widthImage: 120,
              object: exercises[index],
              mediaUrl: exercises[index].mediaUrl ?? '',
              rep: exercises[index].sets.first.reps.length,
              reps: exercises[index].sets.first.reps,
              set: exercises[index].sets.length,
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              key: ValueKey(
                exercises[index],
              ))
      ],
    );
  }
}
