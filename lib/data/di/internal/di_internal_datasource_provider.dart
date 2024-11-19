import 'package:clocktrain/data/datasource/abtraction/local_db_datasource.dart';
import 'package:clocktrain/data/datasource/local_db_datasource_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final internalLocalDbDatasourceProvider = Provider<LocalDbDatasource>((ref) {
  return LocalDbDatasourceImpl();
});
