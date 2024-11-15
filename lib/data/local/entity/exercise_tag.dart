import 'package:drift/drift.dart';

@DataClassName('ExerciseTag')
class ExerciseTags extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get exerciseId => integer().customConstraint('REFERENCES exercises(id)')();
  IntColumn get tagId => integer().customConstraint('REFERENCES tags(id)')();
}