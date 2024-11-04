import 'package:clocktrain/domain/providers/sheet_list_page_provider.dart';
import 'package:clocktrain/presentation/widgets/molecule/list_tile_workout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SheetListPage extends ConsumerWidget {
  const SheetListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final exerciseList = ref.watch(exerciseListProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Expanded(
            child: ReorderableListView(
              onReorder: (oldIndex, newIndex) {
                ref
                    .read(exerciseListProvider.notifier)
                    .reorderList(oldIndex, newIndex);
              },
              children: [
                for (int index = 0; index < exerciseList.length; index++)
                  ListTileWorkout(
                      exercise: exerciseList[index],
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      key: ValueKey(
                        exerciseList[index],
                      ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
