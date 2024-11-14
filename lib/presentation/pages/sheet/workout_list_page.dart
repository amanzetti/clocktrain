import 'package:clocktrain/data/models/workout_model.dart';
import 'package:clocktrain/domain/providers/user_proivider.dart';
import 'package:clocktrain/presentation/routes/path.dart';
import 'package:clocktrain/presentation/widgets/molecules/list_tile_app.dart';
import 'package:clocktrain/presentation/widgets/organisms/header_with_action_button.dart';
import 'package:clocktrain/utils/enum/standard_rateo_enum.dart';
import 'package:clocktrain/utils/ext/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class WorkoutListPage extends ConsumerWidget {
  const WorkoutListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(userProvider);
    final workouts = userState.first.workouts;

    return Column(
      children: [
        HeaderWithActionButton(
          title: 'Workouts',
          color: context.colorScheme.surface,
          onTap: () =>
              context.push(AppPath.sheetListPage + AppPath.workoutEditorPage),
        ),
        Expanded(
          child: _buildListWorkout(context, workouts),
        ),
      ],
    );
  }

  Widget _buildListWorkout(BuildContext context, List<Workout> workouts) {
    return ReorderableListView(
      onReorder: (oldIndex, newIndex) {
        // ref
        //     .read(listProvider.notifier)
        //     .reorderList(oldIndex, newIndex);
      },
      children: [
        for (int index = 0; index < workouts.length; index++)
          ListTileApp<Workout>(
              listTileAppType: ListTileAppType.workout,
              object: workouts[index],
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              rateo: StandardRateo.ratio_4_5,
              widthImage: 100,
              mediaUrl: '',
              key: ValueKey(
                workouts[index],
              ))
      ],
    );
  }
}
