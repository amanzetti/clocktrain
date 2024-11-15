import 'package:drift/drift.dart';

@DataClassName('UserType')
class UserTypes extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get typeName => text().withLength(min: 1, max: 50)();
}