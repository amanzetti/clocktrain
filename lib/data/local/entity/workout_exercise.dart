import 'package:drift/drift.dart';

@DataClassName('WorkoutExercise')
class WorkoutExercises extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get workoutId => integer().customConstraint('REFERENCES workouts(id)')();
  IntColumn get exerciseId => integer().customConstraint('REFERENCES exercises(id)')();
  IntColumn get order => integer()();
  IntColumn get supersetGroup => integer().nullable()();
  TextColumn get notes => text().nullable()();
}