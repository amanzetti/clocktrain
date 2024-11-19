import 'package:clocktrain/domain/entities/app_settings_entity.dart';

abstract class AppSettingRepository {
  Future<List<AppSetting>> getAllAppSettings();
  Future<AppSetting> getAppSettingById(int id);
  Future<void> addAppSetting(AppSetting appSetting);
  Future<void> updateAppSetting(AppSetting appSetting);
  Future<void> deleteAppSetting(int id);
}