import 'package:app_feature_login/data/di/internal/di_internal.dart';
import 'package:app_feature_login/data/repositories_impl/auth_repository_impl.dart';
import 'package:app_feature_login/domain/repositories/auth_repository.dart';
import 'package:app_shared/app_shared.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepositoryImpl(
    ref,
    authLocalDbDatasource: ref.read(internalAuthLocalDbDatasourceProvider),
  );
});

extension DiRepositoryProvider on Ref {
  AuthRepository get authRepository => read(authRepositoryProvider);
}
