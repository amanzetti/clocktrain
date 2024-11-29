import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:clocktrain/domain/entities/workout_plan_entity.dart' as domain;
import 'package:clocktrain/data/local/app_database.dart';
import 'user_dto.dart';
import 'daily_plan_dto.dart';

part 'workout_plan_dto.freezed.dart';
part 'workout_plan_dto.g.dart';

@freezed
class WorkoutPlanDto with _$WorkoutPlanDto {
  const factory WorkoutPlanDto({
    int? id,
    required String name,
    UserDto? user,
    UserDto? trainer,
    required bool isPublic,
    required List<DailyPlanDto> dailyPlans,
  }) = _WorkoutPlanDto;

  factory WorkoutPlanDto.fromJson(Map<String, dynamic> json) => _$WorkoutPlanDtoFromJson(json);

  factory WorkoutPlanDto.fromRealm(WorkoutPlan workoutPlan) {
    return WorkoutPlanDto(
      id: workoutPlan.id,
      name: workoutPlan.name,
      user: workoutPlan.user != null ? UserDto.fromRealm(workoutPlan.user!) : null,
      trainer: workoutPlan.trainer != null ? UserDto.fromRealm(workoutPlan.trainer!) : null,
      isPublic: workoutPlan.isPublic,
      dailyPlans: workoutPlan.dailyPlans.map((plan) => DailyPlanDto.fromRealm(plan)).toList(),
    );
  }

  WorkoutPlan toRealm() {
    return WorkoutPlan(
      id: id,
      name: name,
      user: user?.toRealm(),
      trainer: trainer?.toRealm(),
      isPublic: isPublic,
      dailyPlans: dailyPlans.map((plan) => plan.toRealm()).toList(),
    );
  }

  factory WorkoutPlanDto.fromDomain(domain.WorkoutPlan workoutPlan) {
    return WorkoutPlanDto(
      id: workoutPlan.id,
      name: workoutPlan.name,
      user: workoutPlan.user != null ? UserDto.fromDomain(workoutPlan.user!) : null,
      trainer: workoutPlan.trainer != null ? UserDto.fromDomain(workoutPlan.trainer!) : null,
      isPublic: workoutPlan.isPublic,
      dailyPlans: workoutPlan.dailyPlans.map((plan) => DailyPlanDto.fromDomain(plan)).toList(),
    );
  }

  domain.WorkoutPlan toDomain() {
    return domain.WorkoutPlan(
      id: id,
      name: name,
      user: user?.toDomain(),
      trainer: trainer?.toDomain(),
      isPublic: isPublic,
      dailyPlans: dailyPlans.map((plan) => plan.toDomain()).toList(),
    );
  }
}