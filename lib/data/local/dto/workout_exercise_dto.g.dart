// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_exercise_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkoutExerciseDtoImpl _$$WorkoutExerciseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkoutExerciseDtoImpl(
      id: (json['id'] as num).toInt(),
      workoutId: (json['workoutId'] as num).toInt(),
      exerciseId: (json['exerciseId'] as num).toInt(),
      order: (json['order'] as num).toInt(),
      supersetGroup: (json['supersetGroup'] as num?)?.toInt(),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$WorkoutExerciseDtoImplToJson(
        _$WorkoutExerciseDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'workoutId': instance.workoutId,
      'exerciseId': instance.exerciseId,
      'order': instance.order,
      'supersetGroup': instance.supersetGroup,
      'notes': instance.notes,
    };