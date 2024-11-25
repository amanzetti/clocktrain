class Progress {
  final int id;
  final String userId;
  final int exerciseId;
  final DateTime progressDate;
  final int reps;
  final double? weight;
  final String? notes;

  Progress({
    required this.id,
    required this.userId,
    required this.exerciseId,
    required this.progressDate,
    required this.reps,
    this.weight,
    this.notes,
  });
}
