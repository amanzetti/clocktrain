import 'package:drift/drift.dart';

@DataClassName('User')
class Users extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1, max: 50)();
  TextColumn get email => text().withLength(min: 1, max: 100)();
  TextColumn get password => text().withLength(min: 6, max: 100)();
  DateTimeColumn get dateOfBirth => dateTime()();
  RealColumn get height => real()();
  RealColumn get weight => real()();
  TextColumn get avatar => text().nullable()();
  IntColumn get userTypeId => integer().customConstraint('REFERENCES user_types(id)')();
}