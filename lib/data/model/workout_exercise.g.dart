// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkoutExerciseImpl _$$WorkoutExerciseImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkoutExerciseImpl(
      id: (json['id'] as num).toInt(),
      workoutId: (json['workoutId'] as num).toInt(),
      exerciseId: (json['exerciseId'] as num).toInt(),
      order: (json['order'] as num).toInt(),
      supersetGroup: (json['supersetGroup'] as num?)?.toInt(),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$WorkoutExerciseImplToJson(
        _$WorkoutExerciseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'workoutId': instance.workoutId,
      'exerciseId': instance.exerciseId,
      'order': instance.order,
      'supersetGroup': instance.supersetGroup,
      'notes': instance.notes,
    };
