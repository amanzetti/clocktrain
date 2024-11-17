import 'package:clocktrain/data/di/internal/di_internal_datasource_provider.dart';
import 'package:clocktrain/data/repositories/user_repository_impl.dart';
import 'package:clocktrain/domain/repositories/user_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userRepositroyProvider = Provider<UserRepository>((ref) {
  return UserRepositoryImpl(
    ref,
    localDbDatasource: ref.read(internalLocalDbDatasourceProvider),
  );
});

extension DiRepositoryProvider on Ref{
  UserRepository get userRepository => read(userRepositroyProvider);
}