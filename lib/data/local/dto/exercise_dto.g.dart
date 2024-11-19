// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExerciseDtoImpl _$$ExerciseDtoImplFromJson(Map<String, dynamic> json) =>
    _$ExerciseDtoImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      videoUrl: json['videoUrl'] as String?,
      imageUrl: json['imageUrl'] as String?,
      difficultyLevel: json['difficultyLevel'] as String,
    );

Map<String, dynamic> _$$ExerciseDtoImplToJson(_$ExerciseDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'videoUrl': instance.videoUrl,
      'imageUrl': instance.imageUrl,
      'difficultyLevel': instance.difficultyLevel,
    };
