import 'package:clocktrain/data/datasource/abtraction/local_db_datasource.dart';
import 'package:clocktrain/data/local/app_database.dart';
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

class LocalDbDatasourceImpl implements LocalDbDatasource {
  late final AppDatabase _db;

  LocalDbDatasourceImpl();

  @override
  Future<void> init() async {
    _db = AppDatabase();
  }

  // UserType methods
  @override
  Future<Either<CommonError, List<UserTypeDto>>> getAllUserTypeDto() async {
    return await _db.userTypeDao.getAllUserTypeDto();
  }

  @override
  Future<Either<CommonError, UserTypeDto>> getUserTypeDtoById(int id) async {
    return await _db.userTypeDao.getUserTypeDtoById(id);
  }

  @override
  Future<Either<CommonError, void>> putUserTypeDto(UserTypeDto userTypeDto) async {
    return await _db.userTypeDao.putUserTypeDto(userTypeDto);
  }

  @override
  Future<Either<CommonError, void>> updateUserType(UserTypeDto userTypeDto) async {
    return await _db.userTypeDao.updateUserType(userTypeDto);
  }

  @override
  Future<Either<CommonError, void>> deleteUserType(int id) async {
    return await _db.userTypeDao.deleteUserType(id);
  }

  // User methods
  @override
  Future<Either<CommonError, List<UserDto>>> getAllUsers() async {
    return await _db.userDao.getAllUsers();
  }

  @override
  Future<Either<CommonError, UserDto>> getUserById(int id) async {
    return await _db.userDao.getUserById(id);
  }

  @override
  Future<Either<CommonError, void>> insertUser(UserDto userDto) async {
    return await _db.userDao.insertUser(userDto);
  }

  @override
  Future<Either<CommonError, void>> updateUser(UserDto userDto) async {
    return await _db.userDao.updateUser(userDto);
  }

  @override
  Future<Either<CommonError, void>> deleteUser(int id) async {
    return await _db.userDao.deleteUser(id);
  }

  // Tag methods
  @override
  Future<Either<CommonError, List<TagDto>>> getAllTags() async {
    return await _db.tagDao.getAllTags();
  }

  @override
  Future<Either<CommonError, TagDto>> getTagById(int id) async {
    return await _db.tagDao.getTagById(id);
  }

  @override
  Future<Either<CommonError, void>> insertTag(TagDto tagDto) async {
    return await _db.tagDao.insertTag(tagDto);
  }

  @override
  Future<Either<CommonError, void>> updateTag(TagDto tagDto) async {
    return await _db.tagDao.updateTag(tagDto);
  }

  @override
  Future<Either<CommonError, void>> deleteTag(int id) async {
    return await _db.tagDao.deleteTag(id);
  }

  // Progress methods
  @override
  Future<Either<CommonError, List<ProgressDto>>> getAllProgresses() async {
    return await _db.progressDao.getAllProgresses();
  }

  @override
  Future<Either<CommonError, ProgressDto>> getProgressById(int id) async {
    return await _db.progressDao.getProgressById(id);
  }

  @override
  Future<Either<CommonError, void>> insertProgress(ProgressDto progressDto) async {
    return await _db.progressDao.insertProgress(progressDto);
  }

  @override
  Future<Either<CommonError, void>> updateProgress(ProgressDto progressDto) async {
    return await _db.progressDao.updateProgress(progressDto);
  }

  @override
  Future<Either<CommonError, void>> deleteProgress(int id) async {
    return await _db.progressDao.deleteProgress(id);
  }

  // MuscleGroup methods
  @override
  Future<Either<CommonError, List<MuscleGroupDto>>> getAllMuscleGroups() async {
    return await _db.muscleGroupDao.getAllMuscleGroups();
  }

  @override
  Future<Either<CommonError, MuscleGroupDto>> getMuscleGroupById(int id) async {
    return await _db.muscleGroupDao.getMuscleGroupById(id);
  }

  @override
  Future<Either<CommonError, void>> insertMuscleGroup(MuscleGroupDto muscleGroupDto) async {
    return await _db.muscleGroupDao.insertMuscleGroup(muscleGroupDto);
  }

  @override
  Future<Either<CommonError, void>> updateMuscleGroup(MuscleGroupDto muscleGroupDto) async {
    return await _db.muscleGroupDao.updateMuscleGroup(muscleGroupDto);
  }

  @override
  Future<Either<CommonError, void>> deleteMuscleGroup(int id) async {
    return await _db.muscleGroupDao.deleteMuscleGroup(id);
  }

  // Exercise methods
  @override
  Future<Either<CommonError, List<ExerciseDto>>> getAllExercises() async {
    return await _db.exerciseDao.getAllExercises();
  }

  @override
  Future<Either<CommonError, ExerciseDto>> getExerciseById(int id) async {
    return await _db.exerciseDao.getExerciseById(id);
  }

  @override
  Future<Either<CommonError, void>> insertExercise(ExerciseDto exerciseDto) async {
    return await _db.exerciseDao.insertExercise(exerciseDto);
  }

  @override
  Future<Either<CommonError, void>> updateExercise(ExerciseDto exerciseDto) async {
    return await _db.exerciseDao.updateExercise(exerciseDto);
  }

  @override
  Future<Either<CommonError, void>> deleteExercise(int id) async {
    return await _db.exerciseDao.deleteExercise(id);
  }

  // AppSettings methods
  @override
  Future<Either<CommonError, List<AppSettingDto>>> getAllAppSettings() async {
    return await _db.appSettingsDao.getAllAppSettings();
  }

  @override
  Future<Either<CommonError, AppSettingDto>> getAppSettingById(int id) async {
    return await _db.appSettingsDao.getAppSettingById(id);
  }

  @override
  Future<Either<CommonError, void>> insertAppSetting(AppSettingDto appSettingDto) async {
    return await _db.appSettingsDao.insertAppSetting(appSettingDto);
  }

  @override
  Future<Either<CommonError, void>> updateAppSetting(AppSettingDto appSettingDto) async {
    return await _db.appSettingsDao.updateAppSetting(appSettingDto);
  }

  @override
  Future<Either<CommonError, void>> deleteAppSetting(int id) async {
    return await _db.appSettingsDao.deleteAppSetting(id);
  }

  // Workout methods
  @override
  Future<Either<CommonError, List<WorkoutDto>>> getAllWorkouts() async {
    return await _db.workoutDao.getAllWorkouts();
  }

  @override
  Future<Either<CommonError, WorkoutDto>> getWorkoutById(int id) async {
    return await _db.workoutDao.getWorkoutById(id);
  }

  @override
  Future<Either<CommonError, void>> insertWorkout(WorkoutDto workoutDto) async {
    return await _db.workoutDao.insertWorkout(workoutDto);
  }

  @override
  Future<Either<CommonError, void>> updateWorkout(WorkoutDto workoutDto) async {
    return await _db.workoutDao.updateWorkout(workoutDto);
  }

  @override
  Future<Either<CommonError, void>> deleteWorkout(int id) async {
    return await _db.workoutDao.deleteWorkout(id);
  }

  // WorkoutExercise methods
  @override
  Future<Either<CommonError, List<WorkoutExerciseDto>>> getAllWorkoutExercises() async {
    return await _db.workoutExerciseDao.getAllWorkoutExercises();
  }

  @override
  Future<Either<CommonError, WorkoutExerciseDto>> getWorkoutExerciseById(int id) async {
    return await _db.workoutExerciseDao.getWorkoutExerciseById(id);
  }

  @override
  Future<Either<CommonError, void>> insertWorkoutExercise(WorkoutExerciseDto workoutExerciseDto) async {
    return await _db.workoutExerciseDao.insertWorkoutExercise(workoutExerciseDto);
  }

  @override
  Future<Either<CommonError, void>> updateWorkoutExercise(WorkoutExerciseDto workoutExerciseDto) async {
    return await _db.workoutExerciseDao.updateWorkoutExercise(workoutExerciseDto);
  }

  @override
  Future<Either<CommonError, void>> deleteWorkoutExercise(int id) async {
    return await _db.workoutExerciseDao.deleteWorkoutExercise(id);
  }

  // WorkoutSet methods
  @override
  Future<Either<CommonError, List<WorkoutSetDto>>> getAllWorkoutSets() async {
    return await _db.workoutSetDao.getAllWorkoutSets();
  }

  @override
  Future<Either<CommonError, WorkoutSetDto>> getWorkoutSetById(int id) async {
    return await _db.workoutSetDao.getWorkoutSetById(id);
  }

  @override
  Future<Either<CommonError, void>> insertWorkoutSet(WorkoutSetDto workoutSetDto) async {
    return await _db.workoutSetDao.insertWorkoutSet(workoutSetDto);
  }

  @override
  Future<Either<CommonError, void>> updateWorkoutSet(WorkoutSetDto workoutSetDto) async {
    return await _db.workoutSetDao.updateWorkoutSet(workoutSetDto);
  }

  @override
  Future<Either<CommonError, void>> deleteWorkoutSet(int id) async {
    return await _db.workoutSetDao.deleteWorkoutSet(id);
  }
}