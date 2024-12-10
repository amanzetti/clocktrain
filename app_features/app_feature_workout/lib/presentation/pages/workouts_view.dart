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
            padding: AppDimesnionsEdgeInsetsExt.smallAll,
            child: AppCard(
                color: context.colorScheme.secondary,
                border: Border(left: BorderSide(color: Colors.red, width: 8)),
                child: Row(
                  children: [
                    Padding(
                      padding: AppDimesnionsEdgeInsetsExt.smallHorizontal,
                      child: Column(
                        children: [
                          Text(list[index].duration.toMMssString(),
                              style: context.textTheme.labelLarge!.copyWith(
                                  color: context.colorScheme.onSecondary)),
                          Text('-',
                              style: context.textTheme.labelMedium!.copyWith(
                                  color: context.colorScheme.onSecondary)),
                          Text('.',
                              style: context.textTheme.labelMedium!.copyWith(
                                  color: context.colorScheme.onSecondary)),
                          Text('-',
                              style: context.textTheme.labelMedium!.copyWith(
                                  color: context.colorScheme.onSecondary)),
                          Text(list[index].numExercise.toString(),
                              style: context.textTheme.labelLarge!.copyWith(
                                  color: context.colorScheme.onSecondary)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: AppDimesnionsEdgeInsetsExt.mediumAll,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(list[index].name,
                                style: context.textTheme.headlineMedium!
                                    .copyWith(
                                        color:
                                            context.colorScheme.onSecondary)),
                            const VerticalMediumSpacer(),
                            Flexible(child: _buildTags()),
                            // Text(list[index].difficulty.toString()),
                          ]),
                    ),
                    Column(
                      children: [
                        AppButton(
                          style: AppButtonStyle.icon,
                          child: SvgWidget(
                            AppAsset.arrowNextIcon,
                            colorFilter: ColorFilter.mode(
                              context.colorScheme.onSecondary,
                              BlendMode.srcIn,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )),
          );
        },
      ),
    );
  }

  Widget _buildTags() {
    // var list = List.generate(30, (int i) => 'Tag $i');

    return Wrap(
      spacing: AppDimensions.small,
      runSpacing: AppDimensions.small,
      children: [
        Chip(
            label: Text('Tag 1'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100))),
        Chip(
            label: Text('Tag 1'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100))),
        Chip(
            label: Text('Tag 1'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100))),
      ],
    );
  }
}

class WorkoutDataState {
  final String name;
  final DateTime duration;
  final List<String> tags;
  final int difficulty;
  final int numExercise;
  WorkoutDataState({
    required this.name,
    required this.duration,
    required this.tags,
    required this.difficulty,
    required this.numExercise,
  });
}
