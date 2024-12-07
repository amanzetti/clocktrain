import 'dart:io';

import 'package:app_data/local/realm/tables/app_database.dart';
import 'package:app_shared/config/logger_config.dart';
import 'package:path_provider/path_provider.dart';
import 'package:realm/realm.dart';

class LocalDb {
  static final LocalDb _instance = LocalDb._internal();
  late Realm realm;
  bool isInitialized = false;

  // Configurazione della connessione a Realm
  final config = Configuration.local([
    User.schema,
    UserType.schema,
    WorkoutPlan.schema,
    DailyPlan.schema,
    WorkoutItem.schema,
    ExerciseSession.schema,
    Exercise.schema,
    MuscleGroup.schema,
    Tag.schema,
  ]);

  // Costruttore privato per Singleton
  LocalDb._internal();

  // Factory che restituisce l'istanza del singleton
  factory LocalDb() {
    return _instance;
  }

  // Inizializzazione di Realm
  void initLocalDb() {
    print('initLocalDb');
    if (!isInitialized) {
      realm = Realm(config);
      isInitialized = true;
      print('LocalDb initialized');
    } else {
      print('LocalDb already initialized');
    }
  }

  Future<void> deleteDatabase() async {
    final appDocDir = await getApplicationDocumentsDirectory();
    final realmPath = '${appDocDir.path}/default.realm'; // Nome predefinito
    final realmLockPath = '$realmPath.lock'; // Lock file associato

    final realmFile = File(realmPath);
    final lockFile = File(realmLockPath);

    if (await realmFile.exists()) {
      await realmFile.delete();
      print('Realm database deleted: $realmPath');
    }

    if (await lockFile.exists()) {
      await lockFile.delete();
      print('Realm lock file deleted: $realmLockPath');
    }
  }

  // Esegui un'operazione di scrittura su Realm
  void write(void Function(Realm realm) callback) {
    print('write');
    try {
      realm.write(() {
        callback(realm);
      });
    } catch (e) {
      // Gestisci l'errore, puoi loggarlo o rilanciarlo
      print('Error during write: $e');
      // Puoi anche lanciare un'eccezione personalizzata se necessario
      throw Exception('Error during write operation: $e');
    }
  }

  // Funzione per ottenere Realm
  Realm getRealm() {
    if (!isInitialized) {
      throw Exception('LocalDb is not initialized');
    }
    return realm;
  }
}
