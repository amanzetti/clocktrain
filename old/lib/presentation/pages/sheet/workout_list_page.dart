import 'package:clocktrain/domain/entities/workout_entity.dart';
import '../../../../app_shared/routes/path.dart';
import 'package:clocktrain/app_widgetbook/lib/widgets/organisms/header_with_action_button.dart';
import 'package:clocktrain/app_shared/utils/ext/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class WorkoutListPage extends ConsumerWidget {
  const WorkoutListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final userState = ref.watch(userProvider);
    // final workouts = userState.first.workouts;

    return Column(
      children: [
        HeaderWithActionButton(
          title: 'Workouts',
          color: context.colorScheme.surface,
          onTap: () =>
              context.push(AppPath.sheetListPage + AppPath.workoutEditorPage),
        ),
        // Expanded(
          // child: _buildListWorkout(context, workouts),
        // ),
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
      children: const [
        // for (int index = 0; index < workouts.length; index++)
          // ListTileApp<Workout>(
          //     listTileAppType: ListTileAppType.workout,
          //     object: workouts[index],
          //     padding: const EdgeInsets.symmetric(vertical: 8.0),
          //     rateo: StandardRateo.ratio_4_5,
          //     widthImage: 100,
          //     mediaUrl: '',
          //     key: ValueKey(
          //       workouts[index],
          //     ))
      ],
    );
  }
}
