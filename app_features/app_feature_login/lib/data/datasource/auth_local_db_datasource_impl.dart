import 'package:app_data/local/realm/tables/app_database.dart';
import 'package:app_feature_login/data/datasource/abstraction/auth_local_db_datasource.dart';
import 'package:app_feature_login/data/dto/user_dto.dart';
import 'package:app_shared/utils/enum/common_error.dart';
import 'package:dartz/dartz.dart';
import 'package:app_data/app_data.dart';
import 'package:uuid/uuid.dart';

class AuthLocalDbDatasourceImpl implements AuthLocalDbDatasource {
  @override
  Future<Either<CommonError, UserDto>> getUserByEmail(String email) async {
    try {
      // Inizializza il database locale
      LocalDb().initLocalDb();

      // Ottieni l'istanza di Realm
      final realm = LocalDb().getRealm();

      // Filtra i risultati per l'email specificata
      final results =
          realm.all<User>().where((user) => user.email == email).toList();

      if (results.isEmpty) {
        // Nessun utente trovato
        return left(CommonError.notFound);
      }

      final user = results.first;

      // Mappa l'oggetto Realm a un UserDto
      final userDto = UserDto(
        id: user.id,
        name: user.name,
        surname: user.surname,
        email: user.email,
        username: user.username,
        birthDate: user.birthDate,
        height: user.height,
        weight: user.weight,
        avatar: user.avatar,
      );

      return right(userDto);
    } catch (e) {
      // Gestione degli errori
      return left(CommonError.databaseError);
    }
  }

  @override
  Future<Either<CommonError, void>> insertUser(UserDto userDto) async {
    try {
      LocalDb().initLocalDb();

      final realm = LocalDb().getRealm();

      const uuid = Uuid();
      final userType = realm.all<UserType>().firstWhere(
            (type) => type.id == 1,
            orElse: () =>
                UserType(1, "ATHLETE"), // Crea un nuovo oggetto se non trovato
          );
      final user = User(
        uuid.v4(),
        userDto.username,
        userDto.email,
        userDto.name,
        userDto.surname,
        userDto.birthDate,
        userDto.weight,
        userDto.height,
        avatar: userDto.avatar,
        userType: userType,
      );

      // LocalDb().deleteDatabase();

      // Utilizzo della funzione di scrittura di LocalDb
      LocalDb().write((realm) {
        realm.add(user);
      });

      return right(null);
    } catch (e) {
      return left(CommonError.databaseError);
    }
  }
}
