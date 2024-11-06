import 'package:clocktrain/domain/models/workout_model.dart';
import 'package:clocktrain/domain/providers/user_proivider.dart';
import 'package:clocktrain/presentation/themes/app_color.dart';
import 'package:clocktrain/presentation/widgets/molecule/list_tile_app.dart';
import 'package:clocktrain/utils/enum/standard_rateo_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutListPage extends ConsumerWidget {
  const WorkoutListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAsyncValue = ref.watch(userProvider('1'));
    // final list = ref.watch(listProvider);

    return userAsyncValue.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Text('Error: $error'),
      data: (user) {
        // ref.read(listProvider.notifier).setList(user.workouts);
        return Container(
          color: AppColor.instance.surface,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Expanded(
                child: ReorderableListView(
                  onReorder: (oldIndex, newIndex) {
                    // ref
                    //     .read(listProvider.notifier)
                    //     .reorderList(oldIndex, newIndex);
                  },
                  children: [
                    for (int index = 0; index < user.workouts.length; index++)
                      ListTileApp<Workout>(
                          listTileAppType: ListTileAppType.workout,
                          object: user.workouts[index],
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          rateo: StandardRateo.ratio_4_5,
                          widthImage: 100,
                          mediaUrl: '',
                          key: ValueKey(
                            user.workouts[index],
                          ))
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
