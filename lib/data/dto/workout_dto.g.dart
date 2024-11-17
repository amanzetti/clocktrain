// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkoutDtoImpl _$$WorkoutDtoImplFromJson(Map<String, dynamic> json) =>
    _$WorkoutDtoImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String?,
      userId: (json['userId'] as num).toInt(),
      dateCreated: DateTime.parse(json['dateCreated'] as String),
    );

Map<String, dynamic> _$$WorkoutDtoImplToJson(_$WorkoutDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'userId': instance.userId,
      'dateCreated': instance.dateCreated.toIso8601String(),
    };
