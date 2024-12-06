import 'package:app_shared/config/logger_config.dart';
import 'package:realm/realm.dart';
import 'realm/tables/app_database.dart';

class LocalDb {
  static final LocalDb _instance = LocalDb._internal();
  late Realm realm;
  final isInitialized = false;
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

  LocalDb._internal();
  factory LocalDb() {
    return _instance;
  }

  initLocalDb(){
    if(!isInitialized){
      realm = Realm(config);
    }else{
      LoggerConfig.logger.i('LocalDb already initialized');
    }
  }
  // UserDto? get user => _user;

  // void setUser(UserDto user) {
  //   _user = user;
  // }

  // void clearUser() {
  //   _user = null;
  // }

  // Either<CommonError, String> getUserId() {
  //   if (_user == null) {
  //     return left(CommonError.userNotAuthenticated);
  //   } else {
  //     return right(_user!.id!);
  //   }
  // }
}
