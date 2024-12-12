import 'package:app_shared/app_shared.dart';
import 'package:app_shared/utils/const/app_dimensions.dart';
import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:app_shared/utils/ext/date_time_ext.dart';
import 'package:app_shared/widgets/atoms/buttons/app_button.dart';
import 'package:app_shared/widgets/organisms/chips_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutsView extends ConsumerWidget {
  const WorkoutsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        ///App bar
        _buildAppBar(context),
        _buildSubAppBar(context),
        _buildListWorkouts(context),
      ],
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return AppHeader();
  }

  Widget _buildSubAppBar(BuildContext context) {
    return AppHeader(
      type: AppBarType.secondary,
      title: 'Workouts',
      rightButton: [
        AppHeaderButtonState(
          type: AppButtonStyle.notch,
          text: "+ ${context.loc.addShort}",
        ),
      ],
    );
  }

  Widget _buildListWorkouts(BuildContext context) {
    final list = List.generate(
        30,
        (int i) => WorkoutDataState(
            name: 'Name Workout $i',
            duration: DateTime.now(),
            tags: ['Cardio', 'Forza', 'Tag'],
            difficulty: 4,
            numExercise: 10));

    return Expanded(
        child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: AppDimesnionsEdgeInsetsExt.dim4Vertical,
                child: AppListCard(list: list[index]),
              );
            }));
  }
}
