import 'package:drift/drift.dart';

@DataClassName('ExerciseMuscleGroup')
class ExerciseMuscleGroups extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get exerciseId => integer().customConstraint('REFERENCES exercises(id)')();
  IntColumn get muscleGroupId => integer().customConstraint('REFERENCES muscle_groups(id)')();
}