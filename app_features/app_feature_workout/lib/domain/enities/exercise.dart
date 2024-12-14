import 'package:app_feature_workout/domain/enities/muscle_group.dart';

class Exercise {
  late final int id;
  late final String name;
  late final String? description;
  late final String? media;
  late final Duration? duration;
  late final List<MuscleGroup>? muscleGroups;

  Exercise({
    required this.id,
    required this.name,
    this.muscleGroups,
    this.description,
    this.media,
    this.duration,
  });
}
