import 'package:app_shared/app_shared.dart';
import 'package:app_shared/utils/const/app_dimensions.dart';
import 'package:app_shared/utils/ext/date_time_ext.dart';
import 'package:app_shared/widgets/atoms/buttons/app_favorite_button.dart';
import 'package:flutter/material.dart';

class WorkoutDataState {
  WorkoutDataState({
    required this.name,
    required this.duration,
    required this.tags,
    required this.difficulty,
    required this.numExercise,
  });
  final String name;
  final DateTime duration;
  final List<String> tags;
  final int difficulty;
  final int numExercise;
}

class AppListCard extends StatelessWidget {
  const AppListCard(
      {required this.list,
      super.key,
      this.isFavorite = false,
      this.callback,
      this.navigation});

  final WorkoutDataState list;
  final bool isFavorite;
  final void Function()? callback;
  final void Function(BuildContext)? navigation;

  @override
  Widget build(BuildContext context) {
    return _buildListWorkouts(
      context,
      e: list,
    );
  }

  Widget _buildListWorkouts(BuildContext context,
      {required WorkoutDataState e}) {
    return GestureDetector(
      onTap: () => navigation?.call(context),
      child: AppCard(
          height: 150,
          color: context
              .colorScheme.surfaceContainerHighest, //primary.withOpacity(0.8),
          padding: AppDimesnionsEdgeInsetsExt.mediumAll,
          // border: Border(left: BorderSide(color: Colors.red, width: 5)),
          child: Row(
            children: [
              Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(e.name.toUpperCase(),
                        style: context.textTheme.headlineLarge!
                            .copyWith(color: context.colorScheme.onSurface)),
                    const VerticalSmallSpacer(),
                    Row(
                      children: [
                        Text('${e.duration.toMMssString()} min',
                            style: context.textTheme.titleMedium!.copyWith(
                                color: context.colorScheme.onSurface)),
                        const HorizontalLargeSpacer(),
                        Text('Exercise:  ${e.numExercise.toString()}',
                            style: context.textTheme.titleMedium!.copyWith(
                                color: context.colorScheme.onSurface)),
                      ],
                    ),
                    const VerticalSmallSpacer(),
                    _buildTags(context, tags: e.tags),
                  ]),
              const Spacer(),
              SizedBox(
                height: 150,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: AppButton.icon(
                        child: SvgWidget(
                          AppAsset.arrowNextIcon,
                          colorFilter: ColorFilter.mode(
                            context.colorScheme.onSurface,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: AppFavoriteButton(
                          callBack: callback,
                          isFavorite: isFavorite,
                        )),
                  ],
                ),
              )
            ],
          )),
    );
  }

  Widget _buildTags(BuildContext context, {required List<String> tags}) {
    return Wrap(
      spacing: AppDimensions.small,
      runSpacing: AppDimensions.small,
      children: tags.map((e) => AppTag(label: e)).toList(),
    );
  }
}
