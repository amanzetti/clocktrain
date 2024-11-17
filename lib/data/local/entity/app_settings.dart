import 'package:drift/drift.dart';

@DataClassName('AppSetting')
class AppSettings extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get settingName => text().withLength(min: 1, max: 100)();
  TextColumn get settingValue => text().withLength(min: 1, max: 100)();

  ///Specifying which from the field above is the primary key
  // @override
  // Set<Column> get primaryKey => {id};
}
