import 'package:clocktrain/data/local/app_database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings_dto.freezed.dart';
part 'app_settings_dto.g.dart';

@freezed
class AppSettingDto with _$AppSettingDto {
  const factory AppSettingDto({
    required int id,
    required String settingName,
    required String settingValue,
  }) = _AppSettingDto;

  factory AppSettingDto.fromJson(Map<String, dynamic> json) =>
      _$AppSettingDtoFromJson(json);

  factory AppSettingDto.fromEntity(AppSetting entity) {
    return AppSettingDto(
      id: entity.id,
      settingName: entity.settingName,
      settingValue: entity.settingValue,
    );
  }
}

extension AppSettingDtoX on AppSettingDto {
  AppSetting toEntity() {
    return AppSetting(
      id: id,
      settingName: settingName,
      settingValue: settingValue,
    );
  }
}
