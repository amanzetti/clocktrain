import 'package:clocktrain/data/local/entity/app_settings.dart';
import 'package:clocktrain/data/local/entity/exercise.dart';
import 'package:clocktrain/data/local/entity/exercise_muscle_group.dart';
import 'package:clocktrain/data/local/entity/exercise_tag.dart';
import 'package:clocktrain/data/local/entity/muscle_group.dart';
import 'package:clocktrain/data/local/entity/progress.dart';
import 'package:clocktrain/data/local/entity/tag.dart';
import 'package:clocktrain/data/local/entity/user.dart';
import 'package:clocktrain/data/local/entity/user_type.dart';
import 'package:clocktrain/data/local/entity/workout.dart';
import 'package:clocktrain/data/local/entity/workout_exercise.dart';
import 'package:clocktrain/data/local/entity/workout_set.dart';
import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

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
])
class AppDatabase extends _$AppDatabase {
  static AppDatabase instance() => AppDatabase();

  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(name: 'dev_db');
  }

  Future<void> insertInitialData() async {
    final userCount = await select(users).get().then((value) => value.length);
    if (userCount == 0) {
      // Inserisci i dati predefiniti
      await into(userTypes)
          .insert(UserTypesCompanion.insert(typeName: 'Atleta'));
      await into(userTypes)
          .insert(UserTypesCompanion.insert(typeName: 'Trainer'));

      await into(users).insert(
        UsersCompanion.insert(
          name: 'John Doe',
          email: 'john@example.com',
          password: 'password123',
          dateOfBirth: DateTime(1990, 1, 1),
          height: 180.0,
          weight: 75.0,
          userTypeId: 1, // Atleta
        ),
      );
      await into(users).insert(
        UsersCompanion.insert(
          name: 'Jane Doe',
          email: 'jane@example.com',
          password: 'password123',
          dateOfBirth: DateTime(1985, 5, 5),
          height: 165.0,
          weight: 60.0,
          userTypeId: 2, // Trainer
        ),
      );

      await into(muscleGroups)
          .insert(MuscleGroupsCompanion.insert(groupName: 'Chest'));
      await into(muscleGroups)
          .insert(MuscleGroupsCompanion.insert(groupName: 'Back'));
      await into(muscleGroups)
          .insert(MuscleGroupsCompanion.insert(groupName: 'Legs'));

      await into(tags).insert(TagsCompanion.insert(tagName: 'Cardio'));
      await into(tags).insert(TagsCompanion.insert(tagName: 'Strength'));

      await into(exercises).insert(ExercisesCompanion.insert(
        name: 'Push Up',
        description: Value('A basic push up exercise'),
        videoUrl: Value('https://example.com/push_up'),
        imageUrl: Value('https://example.com/push_up.jpg'),
        difficultyLevel: 1,
      ));
      await into(exercises).insert(ExercisesCompanion.insert(
        name: 'Squat',
        description: Value('Basic bodyweight squat'),
        videoUrl: Value('https://example.com/squat'),
        imageUrl: Value('https://example.com/squat.jpg'),
        difficultyLevel: 2,
      ));

      final workoutId = await into(workouts).insert(WorkoutsCompanion.insert(
        name: 'Full Body Workout',
        description:
            Value('A complete workout plan for overall body strength.'),
        userId: 1, // John Doe
        dateCreated: DateTime.now(),
      ));

      await into(workoutExercises).insert(WorkoutExercisesCompanion.insert(
        workoutId: workoutId,
        exerciseId: 1, // Push Up
        order: 1,
      ));
      await into(workoutExercises).insert(WorkoutExercisesCompanion.insert(
        workoutId: workoutId,
        exerciseId: 2, // Squat
        order: 2,
      ));

      final workoutExerciseId =
          await into(workoutExercises).insert(WorkoutExercisesCompanion.insert(
        workoutId: workoutId,
        exerciseId: 1, // Push Up
        order: 1,
      ));

      await into(workoutSets).insert(WorkoutSetsCompanion.insert(
        workoutExerciseId: workoutExerciseId,
        setNumber: 1,
        reps: 15,
        weight: Value(0.0),
        restTime: 60,
      ));

      await into(progresses).insert(ProgressesCompanion.insert(
        userId: 1, // John Doe
        exerciseId: 1, // Push Up
        progressDate: DateTime.now(),
        reps: 15,
        weight: Value(0.0),
        notes: Value('Completed with good form'),
      ));

      await into(appSettings).insert(AppSettingsCompanion.insert(
        settingName: 'theme',
        settingValue: 'dark',
      ));
      await into(appSettings).insert(AppSettingsCompanion.insert(
        settingName: 'language',
        settingValue: 'en',
      ));
    }
  }
}

// LazyDatabase _openConnection() {
//   return LazyDatabase(() async {
//     final dbFolder = await getApplicationDocumentsDirectory();
//     final file = File(p.join(dbFolder.path, 'db.sqlite'));
//     return NativeDatabase.createInBackground(file);
//   });
    
// }
