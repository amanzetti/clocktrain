import 'package:clocktrain/domain/providers/user_proivider.dart';
import 'package:clocktrain/presentation/themes/app_color.dart';
import 'package:clocktrain/presentation/themes/app_typography.dart';
import 'package:clocktrain/presentation/widgets/molecule/placeholder_img.dart';
import 'package:clocktrain/utils/enum/standard_rateo_enum.dart';
import 'package:clocktrain/utils/ext/build_context_ext.dart';
import 'package:clocktrain/utils/ext/date_time_ext.dart';
import 'package:clocktrain/utils/ext/double_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  static const widthImage = 100.0;

  Widget _buildUserSection(BuildContext context, WidgetRef ref) {
    final userAsyncValue = ref.watch(userProvider('1'));
    return userAsyncValue.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Text('Error: $error'),
        data: (user) {
          return SizedBox(
            height: widthImage.heightFromWidth(StandardRateo.ratio_9_16),
            width: context.mq.size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      Text(
                        'Profile Overview',
                        style: AppTypography().titleS,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 9,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Expanded(
                          flex: 4,
                          child: Center(
                            child: PlaceholderImg(
                              widthImage: widthImage,
                              rateo: StandardRateo.ratio_9_16,
                            ),
                          )),
                      Expanded(
                          flex: 8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('${user.name} ${user.surname}'),
                              Text(user.birthDate.toddMMMyyyyString()),
                              Text('${user.height} cm'),
                              Text('${user.weight} kg'),
                              Text('Goals: ${user.goal}'),
                              // Text('Recent: ${user.recentStatus}'),
                              // Text('Recent: ${user.recentDescription}'),
                            ],
                          )),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }

  Widget _buildProgressionCard(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 100,
        width: context.mq.size.width,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('PROGRESSION'),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: AppColor.instance.surface,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          _buildUserSection(context, ref),
          _buildProgressionCard(context),
        ],
      ),
    );
  }
}
