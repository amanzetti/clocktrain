import 'package:drift/drift.dart';

// ignore: unused_import
import 'package:clocktrain/data/local/tables/workout_exercise_table.dart';

@DataClassName('WorkoutSet')
class WorkoutSets extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get workoutExerciseId =>
      integer().customConstraint('REFERENCES workout_exercises(id) NOT NULL')();
  IntColumn get setNumber => integer()();
  IntColumn get reps => integer()();
  RealColumn get weight => real().nullable()();
  IntColumn get restTime => integer()();
}
