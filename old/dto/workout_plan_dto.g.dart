// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_plan_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkoutPlanDtoImpl _$$WorkoutPlanDtoImplFromJson(Map<String, dynamic> json) =>
    _$WorkoutPlanDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String,
      user: json['user'] == null
          ? null
          : UserDto.fromJson(json['user'] as Map<String, dynamic>),
      trainer: json['trainer'] == null
          ? null
          : UserDto.fromJson(json['trainer'] as Map<String, dynamic>),
      isPublic: json['isPublic'] as bool,
      dailyPlans: (json['dailyPlans'] as List<dynamic>)
          .map((e) => DailyPlanDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WorkoutPlanDtoImplToJson(
        _$WorkoutPlanDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'user': instance.user,
      'trainer': instance.trainer,
      'isPublic': instance.isPublic,
      'dailyPlans': instance.dailyPlans,
    };
