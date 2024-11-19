import 'package:clocktrain/data/datasource/abtraction/local_db_datasource.dart';
import 'package:clocktrain/domain/entities/app_settings_entity.dart';
import 'package:clocktrain/domain/repositories/app_settings_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:clocktrain/data/local/dto/app_settings_dto.dart';

class AppSettingRepositoryImpl implements AppSettingRepository {
  final Ref ref;
  final LocalDbDatasource localDbDatasource;

  AppSettingRepositoryImpl(this.ref, {required this.localDbDatasource});

  @override
  Future<List<AppSetting>> getAllAppSettings() async {
    final result = await localDbDatasource.getAllAppSettings();
    return result.fold(
      (error) => throw Exception('Error fetching app settings: $error'),
      (appSettingDtos) => appSettingDtos.map((appSettingDto) => AppSetting(
        id: appSettingDto.id,
        name: appSettingDto.settingName,
        value: appSettingDto.settingValue,
      )).toList(),
    );
  }

  @override
  Future<AppSetting> getAppSettingById(int id) async {
    final result = await localDbDatasource.getAppSettingById(id);
    return result.fold(
      (error) => throw Exception('Error fetching app setting: $error'),
      (appSettingDto) => AppSetting(
        id: appSettingDto.id,
        name: appSettingDto.settingName,
        value: appSettingDto.settingValue,
      ),
    );
  }

  @override
  Future<void> addAppSetting(AppSetting appSetting) async {
    final appSettingDto = AppSettingDto(
      id: appSetting.id,
      settingName: appSetting.name,
      settingValue: appSetting.value,
    );
    final result = await localDbDatasource.insertAppSetting(appSettingDto);
    result.fold(
      (error) => throw Exception('Error adding app setting: $error'),
      (_) => null,
    );
  }

  @override
  Future<void> updateAppSetting(AppSetting appSetting) async {
    final appSettingDto = AppSettingDto(
      id: appSetting.id,
      settingName: appSetting.name,
      settingValue: appSetting.value,
    );
    final result = await localDbDatasource.updateAppSetting(appSettingDto);
    result.fold(
      (error) => throw Exception('Error updating app setting: $error'),
      (_) => null,
    );
  }

  @override
  Future<void> deleteAppSetting(int id) async {
    final result = await localDbDatasource.deleteAppSetting(id);
    result.fold(
      (error) => throw Exception('Error deleting app setting: $error'),
      (_) => null,
    );
  }
}