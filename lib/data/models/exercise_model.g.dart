// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExerciseImpl _$$ExerciseImplFromJson(Map<String, dynamic> json) =>
    _$ExerciseImpl(
      id: json['id'] as String?,
      name: json['name'] as String,
      description: json['description'] as String?,
      mediaUrl: json['mediaUrl'] as String?,
      targetMuscle: json['targetMuscle'] as String,
      duration: json['duration'] == null
          ? null
          : Duration(microseconds: (json['duration'] as num).toInt()),
      videoUrl: json['videoUrl'] as String,
      sets: (json['sets'] as List<dynamic>?)
              ?.map((e) => Set.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ExerciseImplToJson(_$ExerciseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'mediaUrl': instance.mediaUrl,
      'targetMuscle': instance.targetMuscle,
      'duration': instance.duration?.inMicroseconds,
      'videoUrl': instance.videoUrl,
      'sets': instance.sets,
    };
