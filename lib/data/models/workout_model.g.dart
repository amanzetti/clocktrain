// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkoutImpl _$$WorkoutImplFromJson(Map<String, dynamic> json) =>
    _$WorkoutImpl(
      id: json['id'] as String?,
      exercises: (json['exercises'] as List<dynamic>?)
              ?.map((e) => Exercise.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: const TimestampSerializer().fromJson(json['createdAt']),
      name: json['name'] as String,
      description: json['description'] as String?,
      mediaUrl: json['mediaUrl'] as String?,
    );

Map<String, dynamic> _$$WorkoutImplToJson(_$WorkoutImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'exercises': instance.exercises,
      'createdAt': const TimestampSerializer().toJson(instance.createdAt),
      'name': instance.name,
      'description': instance.description,
      'mediaUrl': instance.mediaUrl,
    };
