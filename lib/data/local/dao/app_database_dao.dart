// import 'package:clocktrain/data/local/app_database.dart';

// class AppDatabaseDao {

//   final AppDatabase _appDatabase;

//   Future<void> insertInitialData() async {
//     final userCount = await select(users).get().then((value) => value.length);
//     if (userCount == 0) {
//       // Inserisci i dati predefiniti
//       await into(userTypes)
//           .insert(UserTypesCompanion.insert(typeName: 'Atleta'));
//       await into(userTypes)
//           .insert(UserTypesCompanion.insert(typeName: 'train_apper'));

//       await into(users).insert(
//         UsersCompanion.insert(
//           name: 'John Doe',
//           email: 'john@example.com',
//           password: 'password123',
//           dateOfBirth: DateTime(1990, 1, 1),
//           height: 180.0,
//           weight: 75.0,
//           userTypeId: 1, // Atleta
//         ),
//       );
//       await into(users).insert(
//         UsersCompanion.insert(
//           name: 'Jane Doe',
//           email: 'jane@example.com',
//           password: 'password123',
//           dateOfBirth: DateTime(1985, 5, 5),
//           height: 165.0,
//           weight: 60.0,
//           userTypeId: 2, // train_apper
//         ),
//       );

//       await into(muscleGroups)
//           .insert(MuscleGroupsCompanion.insert(groupName: 'Chest'));
//       await into(muscleGroups)
//           .insert(MuscleGroupsCompanion.insert(groupName: 'Back'));
//       await into(muscleGroups)
//           .insert(MuscleGroupsCompanion.insert(groupName: 'Legs'));

//       await into(tags).insert(TagsCompanion.insert(tagName: 'Cardio'));
//       await into(tags).insert(TagsCompanion.insert(tagName: 'Strength'));

//       await into(exercises).insert(ExercisesCompanion.insert(
//         name: 'Push Up',
//         description: const Value('A basic push up exercise'),
//         videoUrl: const Value('https://example.com/push_up'),
//         imageUrl: const Value('https://example.com/push_up.jpg'),
//         difficultyLevel: 1,
//       ));
//       await into(exercises).insert(ExercisesCompanion.insert(
//         name: 'Squat',
//         description: const Value('Basic bodyweight squat'),
//         videoUrl: const Value('https://example.com/squat'),
//         imageUrl: const Value('https://example.com/squat.jpg'),
//         difficultyLevel: 2,
//       ));

//       final workoutId = await into(workouts).insert(WorkoutsCompanion.insert(
//         name: 'Full Body Workout',
//         description:
//             const Value('A complete workout plan for overall body strength.'),
//         userId: 1, // John Doe
//         dateCreated: DateTime.now(),
//       ));

//       await into(workoutExercises).insert(WorkoutExercisesCompanion.insert(
//         workoutId: workoutId,
//         exerciseId: 1, // Push Up
//         order: 1,
//       ));
//       await into(workoutExercises).insert(WorkoutExercisesCompanion.insert(
//         workoutId: workoutId,
//         exerciseId: 2, // Squat
//         order: 2,
//       ));

//       final workoutExerciseId =
//           await into(workoutExercises).insert(WorkoutExercisesCompanion.insert(
//         workoutId: workoutId,
//         exerciseId: 1, // Push Up
//         order: 1,
//       ));

//       await into(workoutSets).insert(WorkoutSetsCompanion.insert(
//         workoutExerciseId: workoutExerciseId,
//         setNumber: 1,
//         reps: 15,
//         weight: const Value(0.0),
//         restTime: 60,
//       ));

//       await into(progresses).insert(ProgressesCompanion.insert(
//         userId: 1, // John Doe
//         exerciseId: 1, // Push Up
//         progressDate: DateTime.now(),
//         reps: 15,
//         weight: const Value(0.0),
//         notes: const Value('Completed with good form'),
//       ));

//       await into(appSettings).insert(AppSettingsCompanion.insert(
//         settingName: 'theme',
//         settingValue: 'dark',
//       ));
//       await into(appSettings).insert(AppSettingsCompanion.insert(
//         settingName: 'language',
//         settingValue: 'en',
//       ));
//     }
//   }
// }