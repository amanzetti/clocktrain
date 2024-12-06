import 'workout_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:clocktrain/domain/entities/daily_plan_entity.dart' as domain;

part 'daily_plan_dto.freezed.dart';

@freezed
class DailyPlanDto with _$DailyPlanDto {
  const factory DailyPlanDto({
    int? id,
    String? day,
    required List<WorkoutItemDto> workoutItems,
  }) = _DailyPlanDto;

  factory DailyPlanDto.fromJson(Map<String, dynamic> json) => _$DailyPlanDtoFromJson(json);

  factory DailyPlanDto.fromDomain(domain.DailyPlan dailyPlan, int? id) {
    return DailyPlanDto(
      id: id,
      day: dailyPlan.day,
      workoutItems: dailyPlan.workoutItems.map((item) => WorkoutItemDto.fromDomain(item)).toList(),
    );
  }

  domain.DailyPlan toDomain() {
    return domain.DailyPlan(
      id: id,
      day: day,
      workoutItems: workoutItems.map((item) => item.toDomain()).toList(),
    );
  }
}