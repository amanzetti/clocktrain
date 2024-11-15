// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
      height: (json['height'] as num).toDouble(),
      weight: (json['weight'] as num).toDouble(),
      avatar: json['avatar'] as String?,
      userTypeId: (json['userTypeId'] as num).toInt(),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'height': instance.height,
      'weight': instance.weight,
      'avatar': instance.avatar,
      'userTypeId': instance.userTypeId,
    };
