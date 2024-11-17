// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProgressImpl _$$ProgressImplFromJson(Map<String, dynamic> json) =>
    _$ProgressImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      exerciseId: (json['exerciseId'] as num).toInt(),
      progressDate: DateTime.parse(json['progressDate'] as String),
      reps: (json['reps'] as num).toInt(),
      weight: (json['weight'] as num?)?.toDouble(),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$ProgressImplToJson(_$ProgressImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'exerciseId': instance.exerciseId,
      'progressDate': instance.progressDate.toIso8601String(),
      'reps': instance.reps,
      'weight': instance.weight,
      'notes': instance.notes,
    };
