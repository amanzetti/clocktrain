import 'package:clocktrain/data/models/user_model.dart';
import 'package:clocktrain/domain/providers/user_proivider.dart';
import 'package:clocktrain/presentation/themes/app_asset.dart';
import 'package:clocktrain/presentation/themes/app_typography.dart';
import 'package:clocktrain/presentation/widgets/atoms/app_card.dart';
import 'package:clocktrain/presentation/widgets/atoms/spacer_sized_box.dart';
import 'package:clocktrain/utils/ext/build_context_ext.dart';
import 'package:clocktrain/utils/ext/date_time_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key});

  static const widthImage = 150.0;

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
          _buildGoal(),
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
              _buildTextDate(),
              Text(
                'Hi, $nameUser!',
                style: AppTypography().titleXL,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: AppAsset.notification,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildIcon(DatePartOfDay partOfDay) {
    switch (partOfDay) {
      case DatePartOfDay.morning:
        return AppAsset.morning;
      case DatePartOfDay.afternoon:
        return AppAsset.afternoon;
      case DatePartOfDay.evening:
        return AppAsset.evening;
      case DatePartOfDay.night:
        return AppAsset.night;
      default:
        return AppAsset.error;
    }
  }

  Widget _buildTextDate() {
    return Row(
      children: [
        _buildIcon(DateTime.now().partOfDay),
        Text(DateTime.now().toddMMMyyyyString()),
      ],
    );
  }

  ///USER PREVIEW
  Widget _buildUserPreviewBar(BuildContext context, User user) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Summary',
              style: AppTypography().titleS,
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

  ///CHART
  Widget _buildChart(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Metrics',
              style: AppTypography().titleS,
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

  Widget _buildCellUserPreview(
      BuildContext context, String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: AppTypography().titleS,
        ),
        Text(
          label,
          style: AppTypography().caption,
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
              style: AppTypography().titleS,
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
                  Text('Workout Name', style: AppTypography().paragraph),
                  Text('Workout Type', style: AppTypography().paragraph),
                  Text('Workout Duration', style: AppTypography().paragraph),
                ],
              ),
              Column(
                children: [
                  Text('SET: 3', style: AppTypography().paragraph),
                  Text('REP: 3', style: AppTypography().paragraph),
                ],
              ),
              IconButton(
                icon: const Icon(Icons.play_arrow),
                onPressed: () {},
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildGoal() {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Goal',
              style: AppTypography().titleS,
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

  // Widget _buildUserSection(BuildContext context, WidgetRef ref, User user) {
  //   return SizedBox(
  //     height: widthImage.heightFromWidth(StandardRateo.ratio_9_16),
  //     width: context.mq.size.width,
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         Expanded(
  //           flex: 3,
  //           child: Row(
  //             children: [
  //               Text(
  //                 'Profile Overview',
  //                 style: AppTypography().titleS,
  //               ),
  //             ],
  //           ),
  //         ),
  //         Expanded(
  //           flex: 9,
  //           child: Row(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               const PlaceholderImg(
  //                 widthImage: widthImage,
  //                 rateo: StandardRateo.ratio_9_16,
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.only(left: 8.0),
  //                 child: Column(
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   mainAxisAlignment: MainAxisAlignment.center,
  //                   children: [
  //                     Text('${user.name} ${user.surname}'),
  //                     Text(user.birthDate.toddMMMyyyyString()),
  //                     Text('${user.height} cm'),
  //                     Text('${user.weight} kg'),
  //                     Text('Goals: ${user.goal}'),
  //                   ],
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
