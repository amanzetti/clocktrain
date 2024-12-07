import 'package:realm/realm.dart';

part 'app_database.realm.dart';

///USER
@RealmModel()
class _User {
  @PrimaryKey()
  late String id;
  late String username;
  late String email;
  late String name;
  late String surname;
  late DateTime birthDate;
  late double weight;
  late int height;
  late String? avatar;
  late _UserType? userType;
}

@RealmModel()
class _UserType {
  @PrimaryKey()
  late int id;
  late String name;
}

///SHEET
@RealmModel()
class _WorkoutPlan {
  @PrimaryKey()
  late int id;
  late String name;
  late _User? user;
  late _User? trainer;
  late bool isPublic;
  late List<_DailyPlan> dailyPlans;
}

@RealmModel()
class _DailyPlan {
  @PrimaryKey()
  late int id;
  late String? day;
  late List<_WorkoutItem> workoutItems;
}

@RealmModel()
class _WorkoutItem {
  @PrimaryKey()
  late String id;
  late _ExerciseSession? exerciseSession;
  late int numberOfSets;
}

@RealmModel()
class _ExerciseSession {
  @PrimaryKey()
  late int id;
  late _Exercise? exercise;
  late int? weight;
  late int? rest;
  late int? duration;
  late List<_Tag> tags;
}

@RealmModel()
class _Exercise {
  @PrimaryKey()
  late int id;
  late String name;
  late String? description;
  late String? media;
  late List<_MuscleGroup> muscleGroups;
}

@RealmModel()
class _MuscleGroup {
  @PrimaryKey()
  late int id;
  late String name;
}

@RealmModel()
class _Tag {
  @PrimaryKey()
  late int id;
  late String name;
  late _User? user;
  late bool isGlobal;
}
