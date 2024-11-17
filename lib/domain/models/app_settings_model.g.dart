// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppSettingImpl _$$AppSettingImplFromJson(Map<String, dynamic> json) =>
    _$AppSettingImpl(
      id: (json['id'] as num).toInt(),
      settingName: json['settingName'] as String,
      settingValue: json['settingValue'] as String,
    );

Map<String, dynamic> _$$AppSettingImplToJson(_$AppSettingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'settingName': instance.settingName,
      'settingValue': instance.settingValue,
    };
