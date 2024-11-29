import 'package:clocktrain/app_data/lib/local/realm/tables/app_database.dart';

class WorkoutItem {
  final int? id;
  final ExerciseSession? exerciseSession;
  final int numberOfSets;

  WorkoutItem({
    this.id,
    this.exerciseSession,
    required this.numberOfSets,
  });
}