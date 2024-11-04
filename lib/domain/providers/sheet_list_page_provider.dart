import 'package:flutter_riverpod/flutter_riverpod.dart';

class Workout {
  final String exercise;
  final String description;
  final String image;

  Workout({
    required this.exercise,
    required this.description,
    required this.image,
  });
}

final List<Workout> initialExerciseList = [
  Workout(
    exercise: 'Morning workout',
    description: 'A refreshing workout to start your day.',
    image: 'assets/images/morning_workout.png', // Replace with an actual image path
  ),
  Workout(
    exercise: 'Evening workout',
    description: 'A calming workout to wind down your day.',
    image: 'assets/images/evening_workout.png', // Replace with an actual image path
  ),
  Workout(
    exercise: 'Afternoon workout',
    description: 'A quick workout to boost your energy.',
    image: 'assets/images/afternoon_workout.png', // Replace with an actual image path
  ),
  Workout(
    exercise: 'Night workout',
    description: 'A light workout for a peaceful night.',
    image: 'assets/images/night_workout.png', // Replace with an actual image path
  ),
  Workout(
    exercise: 'Strength workout',
    description: 'Focus on building strength and muscle.',
    image: 'assets/images/strength_workout.png', // Replace with an actual image path
  ),
  Workout(
    exercise: 'Cardio workout',
    description: 'Get your heart pumping with this cardio routine.',
    image: 'assets/images/cardio_workout.png', // Replace with an actual image path
  ),
];

final exerciseListProvider =
    StateNotifierProvider<ExerciseListNotifier, List<Workout>>(
  (ref) => ExerciseListNotifier(),
);

class ExerciseListNotifier extends StateNotifier<List<Workout>> {
  ExerciseListNotifier() : super(initialExerciseList);

  void reorderList(int oldIndex, int newIndex) {
    final updatedList = List<Workout>.from(state);
    if (newIndex > oldIndex) {
      newIndex -= 1;
    }
    final item = updatedList.removeAt(oldIndex);
    updatedList.insert(newIndex, item);
    state = updatedList;
  }
}
