// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class User extends _User with RealmEntity, RealmObjectBase, RealmObject {
  User(
    String id,
    String username,
    String email,
    String name,
    String surname,
    DateTime birthDate,
    int weight,
    int height, {
    String? avatar,
    UserType? userType,
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'username', username);
    RealmObjectBase.set(this, 'email', email);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'surname', surname);
    RealmObjectBase.set(this, 'birthDate', birthDate);
    RealmObjectBase.set(this, 'weight', weight);
    RealmObjectBase.set(this, 'height', height);
    RealmObjectBase.set(this, 'avatar', avatar);
    RealmObjectBase.set(this, 'userType', userType);
  }

  User._();

  @override
  String get id => RealmObjectBase.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get username =>
      RealmObjectBase.get<String>(this, 'username') as String;
  @override
  set username(String value) => RealmObjectBase.set(this, 'username', value);

  @override
  String get email => RealmObjectBase.get<String>(this, 'email') as String;
  @override
  set email(String value) => RealmObjectBase.set(this, 'email', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  String get surname => RealmObjectBase.get<String>(this, 'surname') as String;
  @override
  set surname(String value) => RealmObjectBase.set(this, 'surname', value);

  @override
  DateTime get birthDate =>
      RealmObjectBase.get<DateTime>(this, 'birthDate') as DateTime;
  @override
  set birthDate(DateTime value) =>
      RealmObjectBase.set(this, 'birthDate', value);

  @override
  int get weight => RealmObjectBase.get<int>(this, 'weight') as int;
  @override
  set weight(int value) => RealmObjectBase.set(this, 'weight', value);

  @override
  int get height => RealmObjectBase.get<int>(this, 'height') as int;
  @override
  set height(int value) => RealmObjectBase.set(this, 'height', value);

  @override
  String? get avatar => RealmObjectBase.get<String>(this, 'avatar') as String?;
  @override
  set avatar(String? value) => RealmObjectBase.set(this, 'avatar', value);

  @override
  UserType? get userType =>
      RealmObjectBase.get<UserType>(this, 'userType') as UserType?;
  @override
  set userType(covariant UserType? value) =>
      RealmObjectBase.set(this, 'userType', value);

  @override
  Stream<RealmObjectChanges<User>> get changes =>
      RealmObjectBase.getChanges<User>(this);

  @override
  Stream<RealmObjectChanges<User>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<User>(this, keyPaths);

  @override
  User freeze() => RealmObjectBase.freezeObject<User>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'username': username.toEJson(),
      'email': email.toEJson(),
      'name': name.toEJson(),
      'surname': surname.toEJson(),
      'birthDate': birthDate.toEJson(),
      'weight': weight.toEJson(),
      'height': height.toEJson(),
      'avatar': avatar.toEJson(),
      'userType': userType.toEJson(),
    };
  }

  static EJsonValue _toEJson(User value) => value.toEJson();
  static User _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'username': EJsonValue username,
        'email': EJsonValue email,
        'name': EJsonValue name,
        'surname': EJsonValue surname,
        'birthDate': EJsonValue birthDate,
        'weight': EJsonValue weight,
        'height': EJsonValue height,
      } =>
        User(
          fromEJson(id),
          fromEJson(username),
          fromEJson(email),
          fromEJson(name),
          fromEJson(surname),
          fromEJson(birthDate),
          fromEJson(weight),
          fromEJson(height),
          avatar: fromEJson(ejson['avatar']),
          userType: fromEJson(ejson['userType']),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(User._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(ObjectType.realmObject, User, 'User', [
      SchemaProperty('id', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('username', RealmPropertyType.string),
      SchemaProperty('email', RealmPropertyType.string),
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('surname', RealmPropertyType.string),
      SchemaProperty('birthDate', RealmPropertyType.timestamp),
      SchemaProperty('weight', RealmPropertyType.int),
      SchemaProperty('height', RealmPropertyType.int),
      SchemaProperty('avatar', RealmPropertyType.string, optional: true),
      SchemaProperty('userType', RealmPropertyType.object,
          optional: true, linkTarget: 'UserType'),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class UserType extends _UserType
    with RealmEntity, RealmObjectBase, RealmObject {
  UserType(
    int id,
    String name,
  ) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'name', name);
  }

  UserType._();

  @override
  int get id => RealmObjectBase.get<int>(this, 'id') as int;
  @override
  set id(int value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  Stream<RealmObjectChanges<UserType>> get changes =>
      RealmObjectBase.getChanges<UserType>(this);

  @override
  Stream<RealmObjectChanges<UserType>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<UserType>(this, keyPaths);

  @override
  UserType freeze() => RealmObjectBase.freezeObject<UserType>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'name': name.toEJson(),
    };
  }

  static EJsonValue _toEJson(UserType value) => value.toEJson();
  static UserType _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'name': EJsonValue name,
      } =>
        UserType(
          fromEJson(id),
          fromEJson(name),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(UserType._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(ObjectType.realmObject, UserType, 'UserType', [
      SchemaProperty('id', RealmPropertyType.int, primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class WorkoutPlan extends _WorkoutPlan
    with RealmEntity, RealmObjectBase, RealmObject {
  WorkoutPlan(
    int id,
    String name,
    bool isPublic, {
    User? user,
    User? trainer,
    Iterable<DailyPlan> dailyPlans = const [],
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'user', user);
    RealmObjectBase.set(this, 'trainer', trainer);
    RealmObjectBase.set(this, 'isPublic', isPublic);
    RealmObjectBase.set<RealmList<DailyPlan>>(
        this, 'dailyPlans', RealmList<DailyPlan>(dailyPlans));
  }

  WorkoutPlan._();

  @override
  int get id => RealmObjectBase.get<int>(this, 'id') as int;
  @override
  set id(int value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  User? get user => RealmObjectBase.get<User>(this, 'user') as User?;
  @override
  set user(covariant User? value) => RealmObjectBase.set(this, 'user', value);

  @override
  User? get trainer => RealmObjectBase.get<User>(this, 'trainer') as User?;
  @override
  set trainer(covariant User? value) =>
      RealmObjectBase.set(this, 'trainer', value);

  @override
  bool get isPublic => RealmObjectBase.get<bool>(this, 'isPublic') as bool;
  @override
  set isPublic(bool value) => RealmObjectBase.set(this, 'isPublic', value);

  @override
  RealmList<DailyPlan> get dailyPlans =>
      RealmObjectBase.get<DailyPlan>(this, 'dailyPlans')
          as RealmList<DailyPlan>;
  @override
  set dailyPlans(covariant RealmList<DailyPlan> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<WorkoutPlan>> get changes =>
      RealmObjectBase.getChanges<WorkoutPlan>(this);

  @override
  Stream<RealmObjectChanges<WorkoutPlan>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<WorkoutPlan>(this, keyPaths);

  @override
  WorkoutPlan freeze() => RealmObjectBase.freezeObject<WorkoutPlan>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'name': name.toEJson(),
      'user': user.toEJson(),
      'trainer': trainer.toEJson(),
      'isPublic': isPublic.toEJson(),
      'dailyPlans': dailyPlans.toEJson(),
    };
  }

  static EJsonValue _toEJson(WorkoutPlan value) => value.toEJson();
  static WorkoutPlan _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'name': EJsonValue name,
        'isPublic': EJsonValue isPublic,
      } =>
        WorkoutPlan(
          fromEJson(id),
          fromEJson(name),
          fromEJson(isPublic),
          user: fromEJson(ejson['user']),
          trainer: fromEJson(ejson['trainer']),
          dailyPlans: fromEJson(ejson['dailyPlans']),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(WorkoutPlan._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(
        ObjectType.realmObject, WorkoutPlan, 'WorkoutPlan', [
      SchemaProperty('id', RealmPropertyType.int, primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('user', RealmPropertyType.object,
          optional: true, linkTarget: 'User'),
      SchemaProperty('trainer', RealmPropertyType.object,
          optional: true, linkTarget: 'User'),
      SchemaProperty('isPublic', RealmPropertyType.bool),
      SchemaProperty('dailyPlans', RealmPropertyType.object,
          linkTarget: 'DailyPlan', collectionType: RealmCollectionType.list),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class DailyPlan extends _DailyPlan
    with RealmEntity, RealmObjectBase, RealmObject {
  DailyPlan(
    int id, {
    String? day,
    Iterable<WorkoutItem> workoutItems = const [],
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'day', day);
    RealmObjectBase.set<RealmList<WorkoutItem>>(
        this, 'workoutItems', RealmList<WorkoutItem>(workoutItems));
  }

  DailyPlan._();

  @override
  int get id => RealmObjectBase.get<int>(this, 'id') as int;
  @override
  set id(int value) => RealmObjectBase.set(this, 'id', value);

  @override
  String? get day => RealmObjectBase.get<String>(this, 'day') as String?;
  @override
  set day(String? value) => RealmObjectBase.set(this, 'day', value);

  @override
  RealmList<WorkoutItem> get workoutItems =>
      RealmObjectBase.get<WorkoutItem>(this, 'workoutItems')
          as RealmList<WorkoutItem>;
  @override
  set workoutItems(covariant RealmList<WorkoutItem> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<DailyPlan>> get changes =>
      RealmObjectBase.getChanges<DailyPlan>(this);

  @override
  Stream<RealmObjectChanges<DailyPlan>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<DailyPlan>(this, keyPaths);

  @override
  DailyPlan freeze() => RealmObjectBase.freezeObject<DailyPlan>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'day': day.toEJson(),
      'workoutItems': workoutItems.toEJson(),
    };
  }

  static EJsonValue _toEJson(DailyPlan value) => value.toEJson();
  static DailyPlan _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
      } =>
        DailyPlan(
          fromEJson(id),
          day: fromEJson(ejson['day']),
          workoutItems: fromEJson(ejson['workoutItems']),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(DailyPlan._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(ObjectType.realmObject, DailyPlan, 'DailyPlan', [
      SchemaProperty('id', RealmPropertyType.int, primaryKey: true),
      SchemaProperty('day', RealmPropertyType.string, optional: true),
      SchemaProperty('workoutItems', RealmPropertyType.object,
          linkTarget: 'WorkoutItem', collectionType: RealmCollectionType.list),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class WorkoutItem extends _WorkoutItem
    with RealmEntity, RealmObjectBase, RealmObject {
  WorkoutItem(
    String id,
    int numberOfSets, {
    ExerciseSession? exerciseSession,
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'exerciseSession', exerciseSession);
    RealmObjectBase.set(this, 'numberOfSets', numberOfSets);
  }

  WorkoutItem._();

  @override
  String get id => RealmObjectBase.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObjectBase.set(this, 'id', value);

  @override
  ExerciseSession? get exerciseSession =>
      RealmObjectBase.get<ExerciseSession>(this, 'exerciseSession')
          as ExerciseSession?;
  @override
  set exerciseSession(covariant ExerciseSession? value) =>
      RealmObjectBase.set(this, 'exerciseSession', value);

  @override
  int get numberOfSets => RealmObjectBase.get<int>(this, 'numberOfSets') as int;
  @override
  set numberOfSets(int value) =>
      RealmObjectBase.set(this, 'numberOfSets', value);

  @override
  Stream<RealmObjectChanges<WorkoutItem>> get changes =>
      RealmObjectBase.getChanges<WorkoutItem>(this);

  @override
  Stream<RealmObjectChanges<WorkoutItem>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<WorkoutItem>(this, keyPaths);

  @override
  WorkoutItem freeze() => RealmObjectBase.freezeObject<WorkoutItem>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'exerciseSession': exerciseSession.toEJson(),
      'numberOfSets': numberOfSets.toEJson(),
    };
  }

  static EJsonValue _toEJson(WorkoutItem value) => value.toEJson();
  static WorkoutItem _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'numberOfSets': EJsonValue numberOfSets,
      } =>
        WorkoutItem(
          fromEJson(id),
          fromEJson(numberOfSets),
          exerciseSession: fromEJson(ejson['exerciseSession']),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(WorkoutItem._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(
        ObjectType.realmObject, WorkoutItem, 'WorkoutItem', [
      SchemaProperty('id', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('exerciseSession', RealmPropertyType.object,
          optional: true, linkTarget: 'ExerciseSession'),
      SchemaProperty('numberOfSets', RealmPropertyType.int),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class ExerciseSession extends _ExerciseSession
    with RealmEntity, RealmObjectBase, RealmObject {
  ExerciseSession(
    int id, {
    Exercise? exercise,
    int? weight,
    int? rest,
    int? duration,
    Iterable<Tag> tags = const [],
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'exercise', exercise);
    RealmObjectBase.set(this, 'weight', weight);
    RealmObjectBase.set(this, 'rest', rest);
    RealmObjectBase.set(this, 'duration', duration);
    RealmObjectBase.set<RealmList<Tag>>(this, 'tags', RealmList<Tag>(tags));
  }

  ExerciseSession._();

  @override
  int get id => RealmObjectBase.get<int>(this, 'id') as int;
  @override
  set id(int value) => RealmObjectBase.set(this, 'id', value);

  @override
  Exercise? get exercise =>
      RealmObjectBase.get<Exercise>(this, 'exercise') as Exercise?;
  @override
  set exercise(covariant Exercise? value) =>
      RealmObjectBase.set(this, 'exercise', value);

  @override
  int? get weight => RealmObjectBase.get<int>(this, 'weight') as int?;
  @override
  set weight(int? value) => RealmObjectBase.set(this, 'weight', value);

  @override
  int? get rest => RealmObjectBase.get<int>(this, 'rest') as int?;
  @override
  set rest(int? value) => RealmObjectBase.set(this, 'rest', value);

  @override
  int? get duration => RealmObjectBase.get<int>(this, 'duration') as int?;
  @override
  set duration(int? value) => RealmObjectBase.set(this, 'duration', value);

  @override
  RealmList<Tag> get tags =>
      RealmObjectBase.get<Tag>(this, 'tags') as RealmList<Tag>;
  @override
  set tags(covariant RealmList<Tag> value) => throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<ExerciseSession>> get changes =>
      RealmObjectBase.getChanges<ExerciseSession>(this);

  @override
  Stream<RealmObjectChanges<ExerciseSession>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<ExerciseSession>(this, keyPaths);

  @override
  ExerciseSession freeze() =>
      RealmObjectBase.freezeObject<ExerciseSession>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'exercise': exercise.toEJson(),
      'weight': weight.toEJson(),
      'rest': rest.toEJson(),
      'duration': duration.toEJson(),
      'tags': tags.toEJson(),
    };
  }

  static EJsonValue _toEJson(ExerciseSession value) => value.toEJson();
  static ExerciseSession _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
      } =>
        ExerciseSession(
          fromEJson(id),
          exercise: fromEJson(ejson['exercise']),
          weight: fromEJson(ejson['weight']),
          rest: fromEJson(ejson['rest']),
          duration: fromEJson(ejson['duration']),
          tags: fromEJson(ejson['tags']),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(ExerciseSession._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(
        ObjectType.realmObject, ExerciseSession, 'ExerciseSession', [
      SchemaProperty('id', RealmPropertyType.int, primaryKey: true),
      SchemaProperty('exercise', RealmPropertyType.object,
          optional: true, linkTarget: 'Exercise'),
      SchemaProperty('weight', RealmPropertyType.int, optional: true),
      SchemaProperty('rest', RealmPropertyType.int, optional: true),
      SchemaProperty('duration', RealmPropertyType.int, optional: true),
      SchemaProperty('tags', RealmPropertyType.object,
          linkTarget: 'Tag', collectionType: RealmCollectionType.list),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class Exercise extends _Exercise
    with RealmEntity, RealmObjectBase, RealmObject {
  Exercise(
    int id,
    String name, {
    String? description,
    String? media,
    Iterable<MuscleGroup> muscleGroups = const [],
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'description', description);
    RealmObjectBase.set(this, 'media', media);
    RealmObjectBase.set<RealmList<MuscleGroup>>(
        this, 'muscleGroups', RealmList<MuscleGroup>(muscleGroups));
  }

  Exercise._();

  @override
  int get id => RealmObjectBase.get<int>(this, 'id') as int;
  @override
  set id(int value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  String? get description =>
      RealmObjectBase.get<String>(this, 'description') as String?;
  @override
  set description(String? value) =>
      RealmObjectBase.set(this, 'description', value);

  @override
  String? get media => RealmObjectBase.get<String>(this, 'media') as String?;
  @override
  set media(String? value) => RealmObjectBase.set(this, 'media', value);

  @override
  RealmList<MuscleGroup> get muscleGroups =>
      RealmObjectBase.get<MuscleGroup>(this, 'muscleGroups')
          as RealmList<MuscleGroup>;
  @override
  set muscleGroups(covariant RealmList<MuscleGroup> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<Exercise>> get changes =>
      RealmObjectBase.getChanges<Exercise>(this);

  @override
  Stream<RealmObjectChanges<Exercise>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Exercise>(this, keyPaths);

  @override
  Exercise freeze() => RealmObjectBase.freezeObject<Exercise>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'name': name.toEJson(),
      'description': description.toEJson(),
      'media': media.toEJson(),
      'muscleGroups': muscleGroups.toEJson(),
    };
  }

  static EJsonValue _toEJson(Exercise value) => value.toEJson();
  static Exercise _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'name': EJsonValue name,
      } =>
        Exercise(
          fromEJson(id),
          fromEJson(name),
          description: fromEJson(ejson['description']),
          media: fromEJson(ejson['media']),
          muscleGroups: fromEJson(ejson['muscleGroups']),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Exercise._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(ObjectType.realmObject, Exercise, 'Exercise', [
      SchemaProperty('id', RealmPropertyType.int, primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('description', RealmPropertyType.string, optional: true),
      SchemaProperty('media', RealmPropertyType.string, optional: true),
      SchemaProperty('muscleGroups', RealmPropertyType.object,
          linkTarget: 'MuscleGroup', collectionType: RealmCollectionType.list),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class MuscleGroup extends _MuscleGroup
    with RealmEntity, RealmObjectBase, RealmObject {
  MuscleGroup(
    int id,
    String name,
  ) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'name', name);
  }

  MuscleGroup._();

  @override
  int get id => RealmObjectBase.get<int>(this, 'id') as int;
  @override
  set id(int value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  Stream<RealmObjectChanges<MuscleGroup>> get changes =>
      RealmObjectBase.getChanges<MuscleGroup>(this);

  @override
  Stream<RealmObjectChanges<MuscleGroup>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<MuscleGroup>(this, keyPaths);

  @override
  MuscleGroup freeze() => RealmObjectBase.freezeObject<MuscleGroup>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'name': name.toEJson(),
    };
  }

  static EJsonValue _toEJson(MuscleGroup value) => value.toEJson();
  static MuscleGroup _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'name': EJsonValue name,
      } =>
        MuscleGroup(
          fromEJson(id),
          fromEJson(name),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(MuscleGroup._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(
        ObjectType.realmObject, MuscleGroup, 'MuscleGroup', [
      SchemaProperty('id', RealmPropertyType.int, primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class Tag extends _Tag with RealmEntity, RealmObjectBase, RealmObject {
  Tag(
    int id,
    String name,
    bool isGlobal, {
    User? user,
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'user', user);
    RealmObjectBase.set(this, 'isGlobal', isGlobal);
  }

  Tag._();

  @override
  int get id => RealmObjectBase.get<int>(this, 'id') as int;
  @override
  set id(int value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  User? get user => RealmObjectBase.get<User>(this, 'user') as User?;
  @override
  set user(covariant User? value) => RealmObjectBase.set(this, 'user', value);

  @override
  bool get isGlobal => RealmObjectBase.get<bool>(this, 'isGlobal') as bool;
  @override
  set isGlobal(bool value) => RealmObjectBase.set(this, 'isGlobal', value);

  @override
  Stream<RealmObjectChanges<Tag>> get changes =>
      RealmObjectBase.getChanges<Tag>(this);

  @override
  Stream<RealmObjectChanges<Tag>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Tag>(this, keyPaths);

  @override
  Tag freeze() => RealmObjectBase.freezeObject<Tag>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'name': name.toEJson(),
      'user': user.toEJson(),
      'isGlobal': isGlobal.toEJson(),
    };
  }

  static EJsonValue _toEJson(Tag value) => value.toEJson();
  static Tag _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'name': EJsonValue name,
        'isGlobal': EJsonValue isGlobal,
      } =>
        Tag(
          fromEJson(id),
          fromEJson(name),
          fromEJson(isGlobal),
          user: fromEJson(ejson['user']),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Tag._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(ObjectType.realmObject, Tag, 'Tag', [
      SchemaProperty('id', RealmPropertyType.int, primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('user', RealmPropertyType.object,
          optional: true, linkTarget: 'User'),
      SchemaProperty('isGlobal', RealmPropertyType.bool),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
