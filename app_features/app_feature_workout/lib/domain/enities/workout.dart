class Workout {
  final String name;
  final DateTime duration;
  final List<String> tags;
  final int difficulty;
  final int numExercise;

  Workout({
    required this.name,
    required this.duration,
    required this.tags,
    required this.difficulty,
    required this.numExercise,
  });
}
