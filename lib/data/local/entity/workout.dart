import 'package:drift/drift.dart';

@DataClassName('Workout')
class Workouts extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get userId => integer().customConstraint('REFERENCES users(id)')();
  TextColumn get name => text().withLength(min: 1, max: 100)();
  TextColumn get description => text().nullable()();
  DateTimeColumn get dateCreated => dateTime()();
}