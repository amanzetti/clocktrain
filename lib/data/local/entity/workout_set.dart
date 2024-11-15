import 'package:drift/drift.dart';

@DataClassName('WorkoutSet')
class WorkoutSets extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get workoutExerciseId => integer().customConstraint('REFERENCES workout_exercises(id)')();
  IntColumn get setNumber => integer()();
  IntColumn get reps => integer()();
  RealColumn get weight => real().nullable()();
  IntColumn get restTime => integer()();
}