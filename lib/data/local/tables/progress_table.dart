import 'package:drift/drift.dart';

// ignore: unused_import
import 'package:clocktrain/data/local/tables/exercise_table.dart';
// ignore: unused_import
import 'package:clocktrain/data/local/tables/user_table.dart';

@DataClassName('Progress')
class Progresses extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get userId =>
      text().customConstraint('REFERENCES users(id) NOT NULL')();
  IntColumn get exerciseId =>
      integer().customConstraint('REFERENCES exercises(id) NOT NULL')();
  DateTimeColumn get progressDate => dateTime()();
  IntColumn get reps => integer()();
  RealColumn get weight => real().nullable()();
  TextColumn get notes => text().nullable()();
}
