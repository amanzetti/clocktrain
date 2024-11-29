import 'package:clocktrain/domain/entities/workout_item_entity.dart';

class DailyPlan {
  final int? id;
  final String? day;
  final List<WorkoutItem> workoutItems;

  DailyPlan({
    this.id,
    this.day,
    required this.workoutItems,
  });
}