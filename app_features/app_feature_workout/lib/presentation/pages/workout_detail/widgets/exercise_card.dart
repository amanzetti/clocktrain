import 'package:app_feature_workout/domain/enities/exercise.dart';
import 'package:app_shared/app_shared.dart';
import 'package:app_shared/utils/ext/theme_ext.dart';
import 'package:app_shared/widgets/atoms/buttons/app_icon_button.dart';
import 'package:flutter/material.dart';

class ExerciseCard extends StatelessWidget {
  const ExerciseCard({super.key, required this.exercise});

  final Exercise exercise;

  @override
  Widget build(BuildContext context) {
    return AppCard(
        margin: AppDimesnionsEdgeInsetsExt.dim4Vertical,
        color: context.colorScheme.surfaceContainerHighest,
        padding: AppDimesnionsEdgeInsetsExt.mediumAll,
        child: Row(
          children: [
            Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(exercise.name.toUpperCase(),
                      style: context.textTheme.headlineLarge!
                          .copyWith(color: context.colorScheme.onSurface)),
                  const VerticalSmallSpacer(),
                  Row(
                    children: [
                      Text('${exercise.duration.inSecondsOrZero()} sec',
                          style: context.textTheme.titleMedium!
                              .copyWith(color: context.colorScheme.onSurface)),
                    ],
                  ),
                ]),
            const Spacer(),
            Transform.rotate(
              angle: -90 * 3.1415927 / 180,
              child: Text(
                'VIDEO',
                style: context.textTheme.titleSmall,
              ),
            ),
            AppButton.iconCircleBox(
              height: 70,
              width: 70,
              child: Padding(
                padding: AppDimesnionsEdgeInsetsExt.onlyLeft4,
                child: SvgWidget(
                  AppAsset.playIcon,
                  colorFilter: ColorFilter.mode(
                    context.colorScheme.primary,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              onPressed: () {},
            ),
          ],
        ));
  }
}
