import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_setting_dto.freezed.dart';

@freezed
class AppSettingDto with _$AppSettingDto {
  const factory AppSettingDto({
    required int id,
    required String settingName,
    required String settingValue,
  }) = _AppSettingDto;

  factory AppSettingDto.fromJson(Map<String, dynamic> json) => _$AppSettingDtoFromJson(json);
}