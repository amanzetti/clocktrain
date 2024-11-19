class Workout {
  final int id;
  final String name;
  final String? description;
  final int userId;
  final DateTime dateCreated;

  Workout({
    required this.id,
    required this.name,
    this.description,
    required this.userId,
    required this.dateCreated,
  });
}
