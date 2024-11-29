// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_session_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExerciseSessionDtoImpl _$$ExerciseSessionDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ExerciseSessionDtoImpl(
      id: (json['id'] as num).toInt(),
      exercise: json['exercise'] == null
          ? null
          : ExerciseDto.fromJson(json['exercise'] as Map<String, dynamic>),
      weight: (json['weight'] as num?)?.toInt(),
      rest: (json['rest'] as num?)?.toInt(),
      duration: (json['duration'] as num?)?.toInt(),
      tags: (json['tags'] as List<dynamic>)
          .map((e) => TagDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ExerciseSessionDtoImplToJson(
        _$ExerciseSessionDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'exercise': instance.exercise,
      'weight': instance.weight,
      'rest': instance.rest,
      'duration': instance.duration,
      'tags': instance.tags,
    };
