import 'package:app_data/local/local_db.dart';
import 'abtraction/local_db_datasource.dart';
import 'package:realm/realm.dart';

class LocalDbDatasourceImpl implements LocalDbDatasource {
  late final Realm _db;
  bool _isInitialized = false;

  LocalDbDatasourceImpl();

  @override
  Future<void> init() async {
    if (!_isInitialized) {
      _db = Realm(LocalDb().config);
      _isInitialized = true;
    }
  }
}
