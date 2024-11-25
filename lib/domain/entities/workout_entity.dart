class Workout {
  final int id;
  final String name;
  final String? description;
  final String userId;
  final DateTime dateCreated;

  Workout({
    required this.id,
    required this.name,
    this.description,
    required this.userId,
    required this.dateCreated,
  });
}
