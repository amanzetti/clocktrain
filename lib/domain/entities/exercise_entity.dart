class Exercise {
  final int id;
  final String name;
  final String description;
  final String? videoUrl;
  final String? imageUrl;
  final String difficultyLevel;

  Exercise({
    required this.id,
    required this.name,
    required this.description,
    this.videoUrl,
    this.imageUrl,
    required this.difficultyLevel,
  });
}
