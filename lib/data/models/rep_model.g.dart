// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rep_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepImpl _$$RepImplFromJson(Map<String, dynamic> json) => _$RepImpl(
      repNumber: (json['repNumber'] as num).toInt(),
      restTime: Duration(microseconds: (json['restTime'] as num).toInt()),
      weight: (json['weight'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RepImplToJson(_$RepImpl instance) => <String, dynamic>{
      'repNumber': instance.repNumber,
      'restTime': instance.restTime.inMicroseconds,
      'weight': instance.weight,
    };
