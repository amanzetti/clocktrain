import 'package:clocktrain/data/models/exercise_model.dart';
import 'package:clocktrain/domain/providers/user_proivider.dart';
import 'package:clocktrain/presentation/themes/app_color.dart';
import 'package:clocktrain/presentation/widgets/molecule/list_tile_app.dart';
import 'package:clocktrain/utils/enum/standard_rateo_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SheetPage extends ConsumerWidget {
  final String exerciseId;

  const SheetPage({required this.exerciseId, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container();
    //   final userAsynvValue = ref.watch(userProvider('user123'));
    //   return userAsynvValue.when(
    //     loading: () => const Center(child: CircularProgressIndicator()),
    //     error: (error, stackTrace) => Text('Error: $error'),
    //     data: (user) {
    //       final exerciseList = (user != null)
    //           ? user.workouts.firstWhere((e) => e.name == exerciseId).exercises
    //           : [];
    //       return Container(
    //         color: AppColor.instance.surface,
    //         padding: const EdgeInsets.symmetric(horizontal: 16),
    //         child: Column(
    //           children: [
    //             Expanded(
    //               child: ReorderableListView(
    //                 onReorder: (oldIndex, newIndex) {
    //                   // ref
    //                   // .read(exerciseListProvider.notifier)
    //                   // .reorderList(oldIndex, newIndex);
    //                 },
    //                 children: [
    //                   for (int index = 0; index < exerciseList.length; index++)
    //                     ListTileApp<Exercise>(
    //                         listTileAppType: ListTileAppType.exercise,
    //                         rateo: StandardRateo.ratio_4_3,
    //                         widthImage: 120,
    //                         object: exerciseList[index],
    //                         mediaUrl: exerciseList[index].mediaUrl,
    //                         rep: exerciseList[index].sets.first.reps.length,
    //                         reps: exerciseList[index].sets.first.reps,
    //                         set: exerciseList[index].sets.length,
    //                         padding: const EdgeInsets.symmetric(vertical: 8.0),
    //                         key: ValueKey(
    //                           exerciseList[index],
    //                         ))
    //                 ],
    //               ),
    //             ),
    //           ],
    //         ),
    //       );
    //     },
    //   );
  }
}
