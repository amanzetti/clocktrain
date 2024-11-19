import 'package:clocktrain/data/local/tables/app_settings_table.dart';
import 'package:drift/drift.dart';
import 'package:clocktrain/data/local/app_database.dart';
import 'package:clocktrain/data/local/dto/app_settings_dto.dart';
import 'package:clocktrain/utils/enum/common_error.dart';
import 'package:dartz/dartz.dart';

part 'app_settings_dao.g.dart';

@DriftAccessor(tables: [AppSettings])
class AppSettingsDao extends DatabaseAccessor<AppDatabase> with _$AppSettingsDaoMixin {
  AppSettingsDao(AppDatabase db) : super(db);

  Future<Either<CommonError, List<AppSettingDto>>> getAllAppSettings() async {
    try {
      final appSettings = await select(db.appSettings).get();
      final appSettingsDtos = appSettings.map((appSetting) => AppSettingDto(
        id: appSetting.id,
        settingName: appSetting.settingName,
        settingValue: appSetting.settingValue,
      )).toList();
      return Right(appSettingsDtos);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, AppSettingDto>> getAppSettingById(int id) async {
    try {
      final appSetting = await (select(db.appSettings)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
      if (appSetting != null) {
        return Right(AppSettingDto(
          id: appSetting.id,
          settingName: appSetting.settingName,
          settingValue: appSetting.settingValue,
        ));
      } else {
        return const Left(CommonError.notFound);
      }
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, void>> insertAppSetting(AppSettingDto appSettingDto) async {
    try {
      await into(db.appSettings).insert(AppSettingsCompanion.insert(
        settingName: (appSettingDto.settingName),
        settingValue: (appSettingDto.settingValue),
      ));
      return const Right(null);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, void>> updateAppSetting(AppSettingDto appSettingDto) async {
    try {
      await (update(db.appSettings)..where((tbl) => tbl.id.equals(appSettingDto.id)))
          .write(AppSettingsCompanion(
            settingName: Value(appSettingDto.settingName),
            settingValue: Value(appSettingDto.settingValue),
          ));
      return const Right(null);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, void>> deleteAppSetting(int id) async {
    try {
      await (delete(db.appSettings)..where((tbl) => tbl.id.equals(id))).go();
      return const Right(null);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }
}