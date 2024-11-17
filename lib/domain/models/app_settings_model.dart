import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_setting.freezed.dart';

@freezed
class AppSetting with _$AppSetting {
  const factory AppSetting({
    required int id,
    required String settingName,
    required String settingValue,
  }) = _AppSetting;

  factory AppSetting.fromJson(Map<String, dynamic> json) => _$AppSettingFromJson(json);
}