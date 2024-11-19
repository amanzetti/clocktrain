class WorkoutSet {
  final int id;
  final int workoutExerciseId;
  final int setNumber;
  final int reps;
  final double? weight;
  final int restTime;

  WorkoutSet({
    required this.id,
    required this.workoutExerciseId,
    required this.setNumber,
    required this.reps,
    this.weight,
    required this.restTime,
  });
}
