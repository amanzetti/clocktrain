import 'package:clocktrain/presentation/widgets/list_tile_exercise.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SheetPage extends ConsumerWidget {
  SheetPage({super.key});

  final List<Exercise> mockListExercise = List.generate(10, (index) {
    return Exercise(
      name: "Bench Press $index",
      rep: 3,
      set: 3,
      videoUrl: 'https://www.youtube.com/watch?v=xfyxEaUWo3M&pp=ygUFc3F1YXQ%3D',
    );
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Name workout',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    debugPrint('EDIT');
                  },
                  icon: const Icon(Icons.edit))
            ],
          )),
          Expanded(
            child: ListView.separated(
              itemCount: mockListExercise.length,
              itemBuilder: (context, index) {
                return Dismissible(
                    key: ValueKey(index),
                    background: const ColoredBox(
                      color: Colors.red,
                    ),
                    child: ListTileExercise(
                      key: ValueKey(index),
                      exerciseName: mockListExercise[index].name,
                      rep: mockListExercise[index].rep,
                      set: mockListExercise[index].set,
                      videoUrl:
                          'https://www.youtube.com/watch?v=xfyxEaUWo3M&pp=ygUFc3F1YXQ%3D',
                    ));
              },
              separatorBuilder: (context, index) => const SizedBox(height: 6),
            ),
          ),
        ],
      ),
    );
  }
}

class Exercise {
  final String name;
  final int rep;
  final int set;
  final String videoUrl;

  Exercise({
    required this.name,
    required this.rep,
    required this.set,
    required this.videoUrl,
  });
}
