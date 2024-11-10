import 'package:clocktrain/data/models/workout_model.dart';
import 'package:clocktrain/domain/providers/ui/main_page_params_provider.dart';
import 'package:clocktrain/domain/providers/user_proivider.dart';
import 'package:clocktrain/domain/providers/workout_provider.dart';
import 'package:clocktrain/presentation/routes/path.dart';
import 'package:clocktrain/presentation/routes/router_methods.dart';
import 'package:clocktrain/presentation/themes/app_color.dart';
import 'package:clocktrain/presentation/themes/app_typography.dart';
import 'package:clocktrain/presentation/widgets/atoms/elevated_rounded_button.dart';
import 'package:clocktrain/presentation/widgets/molecules/list_tile_app.dart';
import 'package:clocktrain/presentation/widgets/organisms/sub_app_bar.dart';
import 'package:clocktrain/utils/enum/standard_rateo_enum.dart';
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
        _buildNavBar(context),
        Expanded(
          child: _buildListWorkout(context, workouts),
        ),
      ],
    );
  }

  Widget _buildNavBar(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Workouts', style: AppTypography().titleS),
        ElevatedNotchRoundedButton(
          onTap: () {
            context.push(AppPath.sheetListPage + AppPath.workoutEditorPage);
          },
        )
      ],
    ));
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
