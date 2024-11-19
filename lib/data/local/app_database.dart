import 'dart:io';

import 'package:clocktrain/data/local/tables/export_table.dart';
import 'package:clocktrain/data/local/dao/export_dao.dart';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'app_database.g.dart';

@DriftDatabase(tables: [
  Users,
  UserTypes,
  Exercises,
  Tags,
  MuscleGroups,
  Workouts,
  WorkoutExercises,
  WorkoutSets,
  Progresses,
  AppSettings,
  ExerciseTags,
  ExerciseMuscleGroups,
], daos: [
  UserDao,
  UserTypeDao,
  ExerciseDao,
  TagDao,
  MuscleGroupDao,
  WorkoutDao,
  WorkoutExerciseDao,
  WorkoutSetDao,
  ProgressDao,
  AppSettingsDao,
  // ExerciseTagDao,
  // ExerciseMuscleGroupDao,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  static LazyDatabase _openConnection() {
    return LazyDatabase(() async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'db_dev_001.sqlite'));
      return NativeDatabase(file);
    });
  }
}
