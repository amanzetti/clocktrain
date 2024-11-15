import 'package:drift/drift.dart';

@DataClassName('Progress')
class Progresses extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get userId => integer().customConstraint('REFERENCES users(id)')();
  IntColumn get exerciseId => integer().customConstraint('REFERENCES exercises(id)')();
  DateTimeColumn get progressDate => dateTime()();
  IntColumn get reps => integer()();
  RealColumn get weight => real().nullable()();
  TextColumn get notes => text().nullable()();
}