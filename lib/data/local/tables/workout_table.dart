import 'package:drift/drift.dart';

// ignore: unused_import
import 'package:clocktrain/data/local/tables/user_table.dart';

@DataClassName('Workout')
class Workouts extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get userId =>
      integer().customConstraint('REFERENCES users(id) NOT NULL')();
  TextColumn get name => text().withLength(min: 1, max: 100)();
  TextColumn get description => text().nullable()();
  DateTimeColumn get dateCreated => dateTime()();

  ///Specifying which from the field above is the primary key
  // @override
  // Set<Column> get primaryKey => {id};
}
