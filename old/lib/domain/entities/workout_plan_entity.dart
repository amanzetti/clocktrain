import 'package:clocktrain/domain/entities/daily_plan_entity.dart';
import 'package:clocktrain/domain/entities/user_entity.dart';

class WorkoutPlan {
  final int? id;
  final String name;
  final User? user;
  final User? trainer;
  final bool isPublic;
  final List<DailyPlan> dailyPlans;

  WorkoutPlan({
    this.id,
    required this.name,
    this.user,
    this.trainer,
    required this.isPublic,
    required this.dailyPlans,
  });
}