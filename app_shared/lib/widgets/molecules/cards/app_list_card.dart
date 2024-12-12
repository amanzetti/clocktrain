import 'package:app_shared/app_shared.dart';
import 'package:app_shared/utils/const/app_dimensions.dart';
import 'package:app_shared/utils/ext/date_time_ext.dart';
import 'package:flutter/material.dart';

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

class AppListCard extends StatelessWidget {
  const AppListCard({required this.list, super.key});

  final WorkoutDataState list;

  @override
  Widget build(BuildContext context) {
    return _buildListWorkouts(
      context,
      e: list,
    );
  }

  Widget _buildListWorkouts(BuildContext context,
      {required WorkoutDataState e}) {
    return AppCard(
        height: 150,
        color: context.colorScheme.primary.withOpacity(0.8),
        padding: AppDimesnionsEdgeInsetsExt.mediumAll,
        // border: Border(left: BorderSide(color: Colors.red, width: 5)),
        child: Row(
          children: [
            Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTags(context, tags: e.tags),
                  const VerticalSmallSpacer(),
                  Text(e.name.toUpperCase(),
                      style: context.textTheme.headlineLarge!
                          .copyWith(color: context.colorScheme.onPrimary)),
                  const VerticalSmallSpacer(),
                  Row(
                    children: [
                      Text('${e.duration.toMMssString()} min',
                          style: context.textTheme.titleMedium!
                              .copyWith(color: context.colorScheme.onPrimary)),
                      const HorizontalLargeSpacer(),
                      Text('Exercise:  ${e.numExercise.toString()}',
                          style: context.textTheme.titleMedium!
                              .copyWith(color: context.colorScheme.onPrimary)),
                    ],
                  )
                ]),
            const Spacer(),
            SizedBox(
              height: 150,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: AppButton(
                      style: AppButtonStyle.icon,
                      child: SvgWidget(
                        AppAsset.arrowNextIcon,
                        colorFilter: ColorFilter.mode(
                          context.colorScheme.onPrimary,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: AppButton(
                      style: AppButtonStyle.icon,
                      child: SvgWidget(
                        AppAsset.favoriteIcon,
                        colorFilter: ColorFilter.mode(
                          context.colorScheme.onPrimary,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }

  Widget _buildTags(BuildContext context, {required List<String> tags}) {
    return Wrap(
      spacing: AppDimensions.small,
      runSpacing: AppDimensions.small,
      children: tags.map((e) => AppTag(label: e)).toList(),
    );
  }
}
