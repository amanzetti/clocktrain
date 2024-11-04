import 'package:flutter_riverpod/flutter_riverpod.dart';

final List<String> initialExerciseList = [
  'Morning workout',
  'Evening workout',
  'Afternoon workout',
  'Night workout',
  'Strength workout',
  'Cardio workout',
];

final exerciseListProvider =
    StateNotifierProvider<ExerciseListNotifier, List<String>>(
  (ref) => ExerciseListNotifier(),
);

class ExerciseListNotifier extends StateNotifier<List<String>> {
  ExerciseListNotifier() : super(initialExerciseList);

  void reorderList(int oldIndex, int newIndex) {
    final updatedList = List<String>.from(state);
    if (newIndex > oldIndex) {
      newIndex -= 1;
    }
    final item = updatedList.removeAt(oldIndex);
    updatedList.insert(newIndex, item);
    state = updatedList;
  }
}
