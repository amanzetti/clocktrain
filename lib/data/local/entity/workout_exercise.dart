import 'package:drift/drift.dart';

import 'exercise.dart';
import 'workout.dart';

@DataClassName('WorkoutExercise')
class WorkoutExercises extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get workoutId =>
      integer().customConstraint('REFERENCES workouts(id) NOT NULL')();
  IntColumn get exerciseId =>
      integer().customConstraint('REFERENCES exercises(id) NOT NULL')();
  IntColumn get order => integer()();
  IntColumn get supersetGroup => integer().nullable()();
  TextColumn get notes => text().nullable()();

  ///Specifying which from the field above is the primary key
  // @override
  // Set<Column> get primaryKey => {id};
}
