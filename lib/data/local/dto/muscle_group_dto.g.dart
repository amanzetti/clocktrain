// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'muscle_group_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MuscleGroupDtoImpl _$$MuscleGroupDtoImplFromJson(Map<String, dynamic> json) =>
    _$MuscleGroupDtoImpl(
      id: (json['id'] as num).toInt(),
      groupName: json['groupName'] as String,
    );

Map<String, dynamic> _$$MuscleGroupDtoImplToJson(
        _$MuscleGroupDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'groupName': instance.groupName,
    };
