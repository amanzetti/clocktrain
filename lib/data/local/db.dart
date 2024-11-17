import 'package:clocktrain/data/local/entity/app_settings.dart';
import 'package:clocktrain/data/local/entity/exercise.dart';
import 'package:clocktrain/data/local/entity/muscle_group.dart';
import 'package:clocktrain/data/local/entity/progress.dart';
import 'package:clocktrain/data/local/entity/tag.dart';
import 'package:clocktrain/data/local/entity/user.dart';
import 'package:clocktrain/data/local/entity/user_type.dart';
import 'package:clocktrain/data/local/entity/workout.dart';
import 'package:clocktrain/data/local/entity/workout_exercise.dart';
import 'package:clocktrain/data/local/entity/workout_set.dart';
import 'package:clocktrain/data/dto/progress_dto.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';

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
  AppSettings
])


class AppDatabase extends _$AppDatabase {
  AppDatabase(super.e);

  @override
  int get schemaVersion => 1;

  Future<Users> getUser(String userId) {
    return (select(users)..where((tbl) => tbl.id.equals(userId))).getSingle();
  }
  // Metodi per inserire i dati predefiniti
  Future<void> insertInitialData() async {
    // Inserimento dei tipi di utenti
    await into(userTypes).insert(UserTypeCompanion.insert(typeName: 'Atleta'));
    await into(userTypes).insert(UserTypeCompanion.insert(typeName: 'Trainer'));

    // Inserimento degli utenti (1 per tipo)
    await into(users).insert(
      UserCompanion.insert(
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
      UserCompanion.insert(
        name: 'Jane Doe',
        email: 'jane@example.com',
        password: 'password123',
        dateOfBirth: DateTime(1985, 5, 5),
        height: 165.0,
        weight: 60.0,
        userTypeId: 2, // Trainer
      ),
    );

    // Inserimento dei gruppi muscolari
    await into(muscleGroups).insert(MuscleGroupCompanion.insert(groupName: 'Chest'));
    await into(muscleGroups).insert(MuscleGroupCompanion.insert(groupName: 'Back'));
    await into(muscleGroups).insert(MuscleGroupCompanion.insert(groupName: 'Legs'));

    // Inserimento dei tag
    await into(tags).insert(TagCompanion.insert(tagName: 'Cardio'));
    await into(tags).insert(TagCompanion.insert(tagName: 'Strength'));
    
    // Inserimento degli esercizi
    await into(exercises).insert(ExerciseCompanion.insert(
      name: 'Push Up',
      description: 'A basic push up exercise',
      videoUrl: 'https://example.com/push_up',
      imageUrl: 'https://example.com/push_up.jpg',
      difficultyLevel: 'Easy',
    ));
    await into(exercises).insert(ExerciseCompanion.insert(
      name: 'Squat',
      description: 'Basic bodyweight squat',
      videoUrl: 'https://example.com/squat',
      imageUrl: 'https://example.com/squat.jpg',
      difficultyLevel: 'Medium',
    ));

    // Inserimento di un workout (per esempio per un atleta)
    final workoutId = await into(workouts).insert(WorkoutCompanion.insert(
      name: 'Full Body Workout',
      description: 'A complete workout plan for overall body strength.',
      userId: 1, // John Doe
      dateCreated: DateTime.now(),
    ));

    // Inserimento degli esercizi nel workout
    await into(workoutExercises).insert(WorkoutExerciseCompanion.insert(
      workoutId: workoutId,
      exerciseId: 1, // Push Up
      order: 1,
    ));
    await into(workoutExercises).insert(WorkoutExerciseCompanion.insert(
      workoutId: workoutId,
      exerciseId: 2, // Squat
      order: 2,
    ));

    // Inserimento dei set di esercizi
    final workoutExerciseId = await into(workoutExercises).insert(WorkoutExerciseCompanion.insert(
      workoutId: workoutId,
      exerciseId: 1, // Push Up
      order: 1,
    ));

    await into(workoutSets).insert(WorkoutSetCompanion.insert(
      workoutExerciseId: workoutExerciseId,
      setNumber: 1,
      reps: 15,
      weight: 0.0,
      restTime: 60,
    ));

    // Inserimento dei progressi per l'utente
    await into(progress).insert(ProgressCompanion.insert(
      userId: 1, // John Doe
      exerciseId: 1, // Push Up
      progressDate: DateTime.now(),
      reps: 15,
      weight: 0.0,
      notes: 'Completed with good form',
    ));

    // Inserimento delle impostazioni dell'app
    await into(appSettings).insert(AppSettingCompanion.insert(
      settingName: 'theme',
      settingValue: 'dark',
    ));
    await into(appSettings).insert(AppSettingCompanion.insert(
      settingName: 'language',
      settingValue: 'en',
    ));
  }
}

// LazyDatabase _openConnection() {
//   return LazyDatabase(() async {
//     final dbFolder = await getApplicationDocumentsDirectory();
//     final file = File(p.join(dbFolder.path, 'app_database.sqlite'));
//     return NativeDatabase(file);
//   });
// }