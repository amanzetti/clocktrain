import 'package:clocktrain/domain/entities/exercise_entity.dart';
import 'package:clocktrain/domain/entities/tag_entity.dart';

class ExerciseSession {
  final Exercise? exercise;
  final int? weight;
  final int? rest;
  final int? duration;
  final List<Tag> tags;

  ExerciseSession({
    this.exercise,
    this.weight,
    this.rest,
    this.duration,
    required this.tags,
  });
}