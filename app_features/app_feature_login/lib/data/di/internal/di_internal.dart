import 'package:app_feature_login/data/datasource/abstraction/auth_local_db_datasource.dart';
import 'package:app_feature_login/data/datasource/auth_local_db_datasource_impl.dart';
import 'package:app_shared/app_shared.dart';

final internalAuthLocalDbDatasourceProvider = Provider<AuthLocalDbDatasource>((ref) {
  return AuthLocalDbDatasourceImpl();
});