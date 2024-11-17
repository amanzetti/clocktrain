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

  factory AppSettingDto.fromJson(Map<String, dynamic> json) => _$AppSettingDtoFromJson(json);
}