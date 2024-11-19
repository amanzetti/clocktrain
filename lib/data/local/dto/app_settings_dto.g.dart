// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppSettingDtoImpl _$$AppSettingDtoImplFromJson(Map<String, dynamic> json) =>
    _$AppSettingDtoImpl(
      id: (json['id'] as num).toInt(),
      settingName: json['settingName'] as String,
      settingValue: json['settingValue'] as String,
    );

Map<String, dynamic> _$$AppSettingDtoImplToJson(_$AppSettingDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'settingName': instance.settingName,
      'settingValue': instance.settingValue,
    };
