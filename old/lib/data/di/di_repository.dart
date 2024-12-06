import 'package:clocktrain/data/di/internal/di_internal_datasource_provider.dart';
import 'package:clocktrain/app_features/app_feature_login/lib/data/repositories_impl/auth_repository_impl.dart';
import 'package:clocktrain/data/repositories/muscel_group_repository_impl.dart';
import 'package:clocktrain/data/repositories/user_repository_impl.dart';
import 'package:clocktrain/app_features/app_feature_login/lib/domain/repositories/auth_repository.dart';
import 'package:clocktrain/domain/repositories/user_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:clocktrain/data/repositories/user_type_repository_impl.dart';
import 'package:clocktrain/data/repositories/tag_repository_impl.dart';
import 'package:clocktrain/data/repositories/exercise_repository_impl.dart';
import 'package:clocktrain/domain/repositories/user_type_repository.dart';
import 'package:clocktrain/domain/repositories/tag_repository.dart';
import 'package:clocktrain/domain/repositories/muscle_group_repository.dart';
import 'package:clocktrain/domain/repositories/exercise_repository.dart';

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



extension DiRepositoryProvider on Ref {
  AuthRepository get authRepository => read(authRepositoryProvider);
  UserRepository get userRepository => read(userRepositoryProvider);
  UserTypeRepository get userTypeRepository => read(userTypeRepositoryProvider);
  TagRepository get tagRepository => read(tagRepositoryProvider);
  MuscleGroupRepository get muscleGroupRepository => read(muscleGroupRepositoryProvider);
  ExerciseRepository get exerciseRepository => read(exerciseRepositoryProvider);
}
