class WorkoutExercise {
  final int id;
  final int workoutId;
  final int exerciseId;
  final int order;
  final int? supersetGroup;
  final String? notes;

  WorkoutExercise({
    required this.id,
    required this.workoutId,
    required this.exerciseId,
    required this.order,
    this.supersetGroup,
    this.notes,
  });
}
