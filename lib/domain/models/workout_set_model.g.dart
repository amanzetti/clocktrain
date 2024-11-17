// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_set_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkoutSetImpl _$$WorkoutSetImplFromJson(Map<String, dynamic> json) =>
    _$WorkoutSetImpl(
      id: (json['id'] as num).toInt(),
      workoutExerciseId: (json['workoutExerciseId'] as num).toInt(),
      setNumber: (json['setNumber'] as num).toInt(),
      reps: (json['reps'] as num).toInt(),
      weight: (json['weight'] as num?)?.toDouble(),
      restTime: (json['restTime'] as num).toInt(),
    );

Map<String, dynamic> _$$WorkoutSetImplToJson(_$WorkoutSetImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'workoutExerciseId': instance.workoutExerciseId,
      'setNumber': instance.setNumber,
      'reps': instance.reps,
      'weight': instance.weight,
      'restTime': instance.restTime,
    };
