import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:clocktrain/domain/entities/workout_item_entity.dart' as domain;
import 'package:clocktrain/data/local/app_database.dart';
import 'exercise_session_dto.dart';

part '../../lib/data/local/realm/dto/workout_item_dto.freezed.dart';
part '../../lib/data/local/realm/dto/workout_item_dto.g.dart';

@freezed
class WorkoutItemDto with _$WorkoutItemDto {
  const factory WorkoutItemDto({
    int? id,
    ExerciseSessionDto? exerciseSession,
    required int numberOfSets,
  }) = _WorkoutItemDto;

  factory WorkoutItemDto.fromJson(Map<String, dynamic> json) => _$WorkoutItemDtoFromJson(json);

  factory WorkoutItemDto.fromRealm(WorkoutItem workoutItem) {
    return WorkoutItemDto(
      id: workoutItem.id,
      exerciseSession: workoutItem.exerciseSession != null ? ExerciseSessionDto.fromRealm(workoutItem.exerciseSession!) : null,
      numberOfSets: workoutItem.numberOfSets,
    );
  }

  WorkoutItem toRealm() {
    return WorkoutItem(
      id: id,
      exerciseSession: exerciseSession?.toRealm(),
      numberOfSets: numberOfSets,
    );
  }

  factory WorkoutItemDto.fromDomain(domain.WorkoutItem workoutItem) {
    return WorkoutItemDto(
      id: workoutItem.id,
      exerciseSession: workoutItem.exerciseSession != null ? ExerciseSessionDto.fromDomain(workoutItem.exerciseSession!) : null,
      numberOfSets: workoutItem.numberOfSets,
    );
  }

  domain.WorkoutItem toDomain() {
    return domain.WorkoutItem(
      id: id,
      exerciseSession: exerciseSession?.toDomain(),
      numberOfSets: numberOfSets,
    );
  }
}