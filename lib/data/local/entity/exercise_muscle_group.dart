import 'package:drift/drift.dart';
import 'exercise.dart';
import 'muscle_group.dart';

@DataClassName('ExerciseMuscleGroup')
class ExerciseMuscleGroups extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get exerciseId =>
      integer().customConstraint('REFERENCES exercises(id) NOT NULL')();
  IntColumn get muscleGroupId =>
      integer().customConstraint('REFERENCES muscle_groups(id) NOT NULL')();

  ///Specifying which from the field above is the primary key
  // @override
  // Set<Column> get primaryKey => {id};
}
