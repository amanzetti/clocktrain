import 'dart:io';

import 'package:clocktrain/data/local/tables/export_table.dart';
import 'package:clocktrain/data/local/dao/export_dao.dart';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:uuid/uuid.dart';

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
      final file = File(p.join(dbFolder.path, 'db_dev_002.sqlite'));
      return NativeDatabase(file);
    });
  }

  Future<void> addInitialRecords() async {
    final setting = await (select(appSettings)..where((tbl) => tbl.settingName.equals('initial_records_added'))).getSingleOrNull();
    if (setting == null) {
      // Aggiungi i record iniziali qui
      await batch((batch) {
        batch.insertAll(userTypes, [
          UserTypesCompanion.insert(typeName: 'ATHLETE'),
          UserTypesCompanion.insert(typeName: 'TRAINER'),
        ]);
        // Aggiungi altri record iniziali qui
      });

      // Imposta il flag di configurazione per indicare che i record iniziali sono stati aggiunti
      // await into(appSettings).insert(AppSettingsCompanion.insert(
      //   settingName: 'initial_records_added',
      //   settingValue: 'true',
      // ));
    }
  }
}
