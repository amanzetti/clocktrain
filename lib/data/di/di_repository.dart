import 'package:clocktrain/data/di/internal/di_internal_datasource_provider.dart';
import 'package:clocktrain/data/repositories/auth_repository_impl.dart';
import 'package:clocktrain/data/repositories/muscel_group_repository_impl.dart';
import 'package:clocktrain/data/repositories/user_repository_impl.dart';
import 'package:clocktrain/domain/repositories/app_settings_repository.dart';
import 'package:clocktrain/domain/repositories/auth_repository.dart';
import 'package:clocktrain/domain/repositories/user_repository.dart';
import 'package:clocktrain/domain/repositories/workout_exercise_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:clocktrain/data/datasource/local_db_datasource_impl.dart';
import 'package:clocktrain/data/repositories/user_repository_impl.dart';
import 'package:clocktrain/data/repositories/user_type_repository_impl.dart';
import 'package:clocktrain/data/repositories/tag_repository_impl.dart';
import 'package:clocktrain/data/repositories/progress_repository_impl.dart';
import 'package:clocktrain/data/repositories/exercise_repository_impl.dart';
import 'package:clocktrain/data/repositories/app_setting_repository_impl.dart';
import 'package:clocktrain/data/repositories/workout_repository_impl.dart';
import 'package:clocktrain/data/repositories/workout_exercise_repository_impl.dart';
import 'package:clocktrain/data/repositories/workout_set_repository_impl.dart';
import 'package:clocktrain/domain/repositories/user_repository.dart';
import 'package:clocktrain/domain/repositories/user_type_repository.dart';
import 'package:clocktrain/domain/repositories/tag_repository.dart';
import 'package:clocktrain/domain/repositories/progress_repository.dart';
import 'package:clocktrain/domain/repositories/muscle_group_repository.dart';
import 'package:clocktrain/domain/repositories/exercise_repository.dart';
import 'package:clocktrain/domain/repositories/workout_repository.dart';
import 'package:clocktrain/domain/repositories/workout_set_repository.dart';

// Provider per i repository
final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepositoryImpl(
    ref,
    localDbDatasource: ref.read(internalLocalDbDatasourceProvider),
  );
});

final userRepositoryProvider = Provider<UserRepository>((ref) {
  return UserRepositoryImpl(
    ref,
    localDbDatasource: ref.read(internalLocalDbDatasourceProvider),
  );
});

final userTypeRepositoryProvider = Provider<UserTypeRepository>((ref) {
  return UserTypeRepositoryImpl(
    ref,
    localDbDatasource: ref.read(internalLocalDbDatasourceProvider),
  );
});

final tagRepositoryProvider = Provider<TagRepository>((ref) {
  return TagRepositoryImpl(
    ref,
    localDbDatasource: ref.read(internalLocalDbDatasourceProvider),
  );
});

final progressRepositoryProvider = Provider<ProgressRepository>((ref) {
  return ProgressRepositoryImpl(
    ref,
    localDbDatasource: ref.read(internalLocalDbDatasourceProvider),
  );
});

final muscleGroupRepositoryProvider = Provider<MuscleGroupRepository>((ref) {
  return MuscleGroupRepositoryImpl(
    ref,
    localDbDatasource: ref.read(internalLocalDbDatasourceProvider),
  );
});

final exerciseRepositoryProvider = Provider<ExerciseRepository>((ref) {
  return ExerciseRepositoryImpl(
    ref,
    localDbDatasource: ref.read(internalLocalDbDatasourceProvider),
  );
});

final appSettingRepositoryProvider = Provider<AppSettingRepository>((ref) {
  return AppSettingRepositoryImpl(
    ref,
    localDbDatasource: ref.read(internalLocalDbDatasourceProvider),
  );
});

final workoutRepositoryProvider = Provider<WorkoutRepository>((ref) {
  return WorkoutRepositoryImpl(
    ref,
    localDbDatasource: ref.read(internalLocalDbDatasourceProvider),
  );
});

final workoutExerciseRepositoryProvider = Provider<WorkoutExerciseRepository>((ref) {
  return WorkoutExerciseRepositoryImpl(
    ref,
    localDbDatasource: ref.read(internalLocalDbDatasourceProvider),
  );
});

final workoutSetRepositoryProvider = Provider<WorkoutSetRepository>((ref) {
  return WorkoutSetRepositoryImpl(
    ref,
    localDbDatasource: ref.read(internalLocalDbDatasourceProvider),
  );
});


extension DiRepositoryProvider on Ref {
  AuthRepository get authRepository => read(authRepositoryProvider);
  UserRepository get userRepository => read(userRepositoryProvider);
  UserTypeRepository get userTypeRepository => read(userTypeRepositoryProvider);
  TagRepository get tagRepository => read(tagRepositoryProvider);
  ProgressRepository get progressRepository => read(progressRepositoryProvider);
  MuscleGroupRepository get muscleGroupRepository => read(muscleGroupRepositoryProvider);
  ExerciseRepository get exerciseRepository => read(exerciseRepositoryProvider);
  AppSettingRepository get appSettingRepository => read(appSettingRepositoryProvider);
  WorkoutRepository get workoutRepository => read(workoutRepositoryProvider);
  WorkoutExerciseRepository get workoutExerciseRepository => read(workoutExerciseRepositoryProvider);
  WorkoutSetRepository get workoutSetRepository => read(workoutSetRepositoryProvider);
}
