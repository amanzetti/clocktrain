import 'package:clocktrain/data/local/dto/user_dto.dart';
import 'package:clocktrain/data/local/dto/user_type_dto.dart';
import 'package:clocktrain/data/local/dto/tag_dto.dart';
import 'package:clocktrain/data/local/dto/progress_dto.dart';
import 'package:clocktrain/data/local/dto/muscle_group_dto.dart';
import 'package:clocktrain/data/local/dto/exercise_dto.dart';
import 'package:clocktrain/data/local/dto/app_settings_dto.dart';
import 'package:clocktrain/data/local/dto/workout_dto.dart';
import 'package:clocktrain/data/local/dto/workout_exercise_dto.dart';
import 'package:clocktrain/data/local/dto/workout_set_dto.dart';
import 'package:clocktrain/utils/enum/common_error.dart';
import 'package:dartz/dartz.dart';

abstract class LocalDbDatasource {
  Future<void> init();

  void addInitialData();

  // UserType methods
  Future<Either<CommonError, List<UserTypeDto>>> getAllUserTypeDto();
  Future<Either<CommonError, UserTypeDto>> getUserTypeDtoById(int id);
  Future<Either<CommonError, void>> putUserTypeDto(UserTypeDto userTypeDto);
  Future<Either<CommonError, void>> updateUserType(UserTypeDto userTypeDto);
  Future<Either<CommonError, void>> deleteUserType(int id);

  // User methods
  Future<Either<CommonError, List<UserDto>>> getAllUsers();
  Future<Either<CommonError, UserDto>> getUserById(String id);
  Future<Either<CommonError, UserDto>> getUserByEmail(String email);
  Future<Either<CommonError, void>> insertUser(UserDto userDto);
  Future<Either<CommonError, void>> updateUser(UserDto userDto);
  Future<Either<CommonError, void>> deleteUser(String id);

  // Tag methods
  Future<Either<CommonError, List<TagDto>>> getAllTags();
  Future<Either<CommonError, TagDto>> getTagById(int id);
  Future<Either<CommonError, void>> insertTag(TagDto tagDto);
  Future<Either<CommonError, void>> updateTag(TagDto tagDto);
  Future<Either<CommonError, void>> deleteTag(int id);

  // Progress methods
  Future<Either<CommonError, List<ProgressDto>>> getAllProgresses();
  Future<Either<CommonError, ProgressDto>> getProgressById(int id);
  Future<Either<CommonError, void>> insertProgress(ProgressDto progressDto);
  Future<Either<CommonError, void>> updateProgress(ProgressDto progressDto);
  Future<Either<CommonError, void>> deleteProgress(int id);

  // MuscleGroup methods
  Future<Either<CommonError, List<MuscleGroupDto>>> getAllMuscleGroups();
  Future<Either<CommonError, MuscleGroupDto>> getMuscleGroupById(int id);
  Future<Either<CommonError, void>> insertMuscleGroup(MuscleGroupDto muscleGroupDto);
  Future<Either<CommonError, void>> updateMuscleGroup(MuscleGroupDto muscleGroupDto);
  Future<Either<CommonError, void>> deleteMuscleGroup(int id);

  // Exercise methods
  Future<Either<CommonError, List<ExerciseDto>>> getAllExercises();
  Future<Either<CommonError, ExerciseDto>> getExerciseById(int id);
  Future<Either<CommonError, void>> insertExercise(ExerciseDto exerciseDto);
  Future<Either<CommonError, void>> updateExercise(ExerciseDto exerciseDto);
  Future<Either<CommonError, void>> deleteExercise(int id);

  // AppSettings methods
  Future<Either<CommonError, List<AppSettingDto>>> getAllAppSettings();
  Future<Either<CommonError, AppSettingDto>> getAppSettingById(int id);
  Future<Either<CommonError, void>> insertAppSetting(AppSettingDto appSettingDto);
  Future<Either<CommonError, void>> updateAppSetting(AppSettingDto appSettingDto);
  Future<Either<CommonError, void>> deleteAppSetting(int id);

  // Workout methods
  Future<Either<CommonError, List<WorkoutDto>>> getAllWorkouts();
  Future<Either<CommonError, WorkoutDto>> getWorkoutById(int id);
  Future<Either<CommonError, void>> insertWorkout(WorkoutDto workoutDto);
  Future<Either<CommonError, void>> updateWorkout(WorkoutDto workoutDto);
  Future<Either<CommonError, void>> deleteWorkout(int id);

  // WorkoutExercise methods
  Future<Either<CommonError, List<WorkoutExerciseDto>>> getAllWorkoutExercises();
  Future<Either<CommonError, WorkoutExerciseDto>> getWorkoutExerciseById(int id);
  Future<Either<CommonError, void>> insertWorkoutExercise(WorkoutExerciseDto workoutExerciseDto);
  Future<Either<CommonError, void>> updateWorkoutExercise(WorkoutExerciseDto workoutExerciseDto);
  Future<Either<CommonError, void>> deleteWorkoutExercise(int id);

  // WorkoutSet methods
  Future<Either<CommonError, List<WorkoutSetDto>>> getAllWorkoutSets();
  Future<Either<CommonError, WorkoutSetDto>> getWorkoutSetById(int id);
  Future<Either<CommonError, void>> insertWorkoutSet(WorkoutSetDto workoutSetDto);
  Future<Either<CommonError, void>> updateWorkoutSet(WorkoutSetDto workoutSetDto);
  Future<Either<CommonError, void>> deleteWorkoutSet(int id);
}