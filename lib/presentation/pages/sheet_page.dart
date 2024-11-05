import 'package:clocktrain/presentation/widgets/molecule/list_tile_app.dart';
import 'package:clocktrain/utils/enum/standard_rateo_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SheetPage extends ConsumerWidget {
  final String exerciseId;

  SheetPage({required this.exerciseId, super.key});

  final List<Exercise> mockListExercise = List.generate(10, (index) {
    return Exercise(
      name: "Bench Press $index",
      rep: 3,
      set: 3,
      mediaUrl: 'https://www.youtube.com/watch?v=xfyxEaUWo3M&pp=ygUFc3F1YXQ%3D',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec odio vitae nunc.',
    );
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Expanded(
            child: ReorderableListView(
              onReorder: (oldIndex, newIndex) {
                // ref
                // .read(exerciseListProvider.notifier)
                // .reorderList(oldIndex, newIndex);
              },
              children: [
                for (int index = 0; index < mockListExercise.length; index++)
                  ListTileApp<Exercise>(
                      rateo: StandardRateo.ratio_4_5,
                      widthImage: 100,
                      object: mockListExercise[index],
                      mediaUrl: mockListExercise[index].mediaUrl,
                      rep: mockListExercise[index].rep,
                      set: mockListExercise[index].set,
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      key: ValueKey(
                        mockListExercise[index],
                      ))
              ],
            ),
          ),
          // Expanded(
          //   child: ListView.separated(
          //     itemCount: mockListExercise.length,
          //     itemBuilder: (context, index) {
          //       return Dismissible(
          //           key: ValueKey(index),
          //           background: const ColoredBox(
          //             color: Colors.red,
          //           ),
          //           child: ListTileExercise(
          //             key: ValueKey(index),
          //             exerciseName: mockListExercise[index].name,
          //             rep: mockListExercise[index].rep,
          //             set: mockListExercise[index].set,
          //             videoUrl:
          //                 'https://www.youtube.com/watch?v=xfyxEaUWo3M&pp=ygUFc3F1YXQ%3D',
          //           ));
          //     },
          //     separatorBuilder: (context, index) => const SizedBox(height: 6),
          //   ),
          // ),
        ],
      ),
    );
  }
}

class Exercise implements ObjectT {
  @override
  final String name;
  @override
  final String mediaUrl;
  @override
  final String? description;
  final int rep;
  final int set;

  Exercise({
    required this.name,
    required this.mediaUrl,
    this.description,
    required this.rep,
    required this.set,
  });
}
