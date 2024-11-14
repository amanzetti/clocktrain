import 'package:clocktrain/data/models/user_model.dart';
import 'package:clocktrain/domain/providers/user_proivider.dart';
import 'package:clocktrain/presentation/themes/app_asset.dart';
import 'package:clocktrain/presentation/widgets/atoms/app_card.dart';
import 'package:clocktrain/presentation/widgets/atoms/spacer_sized_box.dart';
import 'package:clocktrain/utils/ext/build_context_ext.dart';
import 'package:clocktrain/utils/ext/date_time_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(userProvider);
    final user = userState.first;

    return SingleChildScrollView(
      child: Column(
        children: [
          _buildTitle(context, user.name),
          const SpacerSizedBox(
              spacerType: SpacerType.vertical, spacerSize: SpacerSize.medium),
          _buildUserPreviewBar(context, user),
          const SpacerSizedBox(
              spacerType: SpacerType.vertical, spacerSize: SpacerSize.medium),
          _buildChart(context),
          const SpacerSizedBox(
              spacerType: SpacerType.vertical, spacerSize: SpacerSize.medium),
          _buildNextWorkoutCard(context),
          const SpacerSizedBox(
              spacerType: SpacerType.vertical, spacerSize: SpacerSize.medium),
          _buildGoal(context),
        ],
      ),
    );
  }

  ///TITLE
  Widget _buildTitle(BuildContext context, String nameUser) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              _buildTextDate(context),
              Text('Hi, $nameUser!', style: context.textTheme.displaySmall),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: AppAsset().notificationSvg(context),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTextDate(BuildContext context) {
    return Row(
      children: [
        _buildIcon(context, DateTime.now().partOfDay),
        Text(DateTime.now().toddMMMyyyyString(),
            style: context.textTheme.titleSmall),
      ],
    );
  }

  Widget _buildIcon(BuildContext context, DatePartOfDay partOfDay) {
    switch (partOfDay) {
      case DatePartOfDay.morning:
        return AppAsset().daySvg(context);
      case DatePartOfDay.afternoon:
        return AppAsset().noonSvg(context);
      case DatePartOfDay.evening:
        return AppAsset().eveningSvg(context);
      case DatePartOfDay.night:
        return AppAsset().nightSvg(context);
      default:
        return AppAsset().errorSvg(context);
    }
  }

  ///USER PREVIEW
  Widget _buildUserPreviewBar(BuildContext context, User user) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Summary',
              style: context.textTheme.headlineSmall,
            ),
          ],
        ),
        AppCard(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildCellUserPreview(context, user.height.toString(), 'cm'),
              _buildCellUserPreview(context, user.weight.toString(), 'kg'),
              _buildCellUserPreview(context, '32', 'years'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCellUserPreview(
      BuildContext context, String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: context.textTheme.bodyLarge,
        ),
        Text(
          label,
          style: context.textTheme.labelMedium,
        ),
      ],
    );
  }

  ///CHART
  Widget _buildChart(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Metrics',
              style: context.textTheme.headlineSmall,
            ),
          ],
        ),
        AppCard(
          color: Colors.white,
          height: 200,
          width: context.mq.size.width,
        ),
      ],
    );
  }

  ///NEXT WORKOUT
  Widget _buildNextWorkoutCard(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Next Workout',
              style: context.textTheme.headlineSmall,
            ),
          ],
        ),
        AppCard(
          padding: const EdgeInsets.all(16),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Workout Name', style: context.textTheme.bodyLarge),
                  Text('Workout Type', style: context.textTheme.bodyLarge),
                  Text('Workout Duration', style: context.textTheme.bodyLarge),
                ],
              ),
              Column(
                children: [
                  Text('SET: 3', style: context.textTheme.bodyLarge),
                  Text('REP: 3', style: context.textTheme.bodyLarge),
                ],
              ),
              IconButton(
                icon: AppAsset().playSvg(context),
                onPressed: () {},
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildGoal(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Goal',
              style: context.textTheme.headlineSmall,
            ),
          ],
        ),
        const AppCard(
          padding: EdgeInsets.all(16),
          height: 200,
          color: Colors.white,
        ),
      ],
    );
  }
}
