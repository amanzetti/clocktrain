// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetImpl _$$SetImplFromJson(Map<String, dynamic> json) => _$SetImpl(
      id: json['id'] as String?,
      setNumber: (json['setNumber'] as num).toInt(),
      reps: (json['reps'] as List<dynamic>?)
              ?.map((e) => Rep.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SetImplToJson(_$SetImpl instance) => <String, dynamic>{
      'id': instance.id,
      'setNumber': instance.setNumber,
      'reps': instance.reps,
    };
