import 'package:drift/drift.dart';

import 'workout_exercise.dart';

@DataClassName('WorkoutSet')
class WorkoutSets extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get workoutExerciseId =>
      integer().customConstraint('REFERENCES workout_exercises(id) NOT NULL')();
  IntColumn get setNumber => integer()();
  IntColumn get reps => integer()();
  RealColumn get weight => real().nullable()();
  IntColumn get restTime => integer()();

  ///Specifying which from the field above is the primary key
  // @override
  // Set<Column> get primaryKey => {id};
}
