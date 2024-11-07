// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  @TimestampSerializer()
  DateTime get birthDate => throw _privateConstructorUsedError;
  String get userRole => throw _privateConstructorUsedError;
  String get goal => throw _privateConstructorUsedError;
  String? get profileImageUrl => throw _privateConstructorUsedError;
  List<Workout> get workouts =>
      throw _privateConstructorUsedError; // Lista dei workout personalizzati
  bool get darkModeEnabled =>
      throw _privateConstructorUsedError; // Stato del tema scuro
  @TimestampSerializer()
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String? id,
      String name,
      String surname,
      String username,
      String email,
      int height,
      double weight,
      @TimestampSerializer() DateTime birthDate,
      String userRole,
      String goal,
      String? profileImageUrl,
      List<Workout> workouts,
      bool darkModeEnabled,
      @TimestampSerializer() DateTime createdAt});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? surname = null,
    Object? username = null,
    Object? email = null,
    Object? height = null,
    Object? weight = null,
    Object? birthDate = null,
    Object? userRole = null,
    Object? goal = null,
    Object? profileImageUrl = freezed,
    Object? workouts = null,
    Object? darkModeEnabled = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userRole: null == userRole
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as String,
      goal: null == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      workouts: null == workouts
          ? _value.workouts
          : workouts // ignore: cast_nullable_to_non_nullable
              as List<Workout>,
      darkModeEnabled: null == darkModeEnabled
          ? _value.darkModeEnabled
          : darkModeEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String name,
      String surname,
      String username,
      String email,
      int height,
      double weight,
      @TimestampSerializer() DateTime birthDate,
      String userRole,
      String goal,
      String? profileImageUrl,
      List<Workout> workouts,
      bool darkModeEnabled,
      @TimestampSerializer() DateTime createdAt});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? surname = null,
    Object? username = null,
    Object? email = null,
    Object? height = null,
    Object? weight = null,
    Object? birthDate = null,
    Object? userRole = null,
    Object? goal = null,
    Object? profileImageUrl = freezed,
    Object? workouts = null,
    Object? darkModeEnabled = null,
    Object? createdAt = null,
  }) {
    return _then(_$UserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userRole: null == userRole
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as String,
      goal: null == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      workouts: null == workouts
          ? _value._workouts
          : workouts // ignore: cast_nullable_to_non_nullable
              as List<Workout>,
      darkModeEnabled: null == darkModeEnabled
          ? _value.darkModeEnabled
          : darkModeEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {this.id,
      required this.name,
      required this.surname,
      required this.username,
      required this.email,
      required this.height,
      required this.weight,
      @TimestampSerializer() required this.birthDate,
      required this.userRole,
      required this.goal,
      this.profileImageUrl,
      final List<Workout> workouts = const [],
      this.darkModeEnabled = false,
      @TimestampSerializer() required this.createdAt})
      : _workouts = workouts;

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @override
  final String surname;
  @override
  final String username;
  @override
  final String email;
  @override
  final int height;
  @override
  final double weight;
  @override
  @TimestampSerializer()
  final DateTime birthDate;
  @override
  final String userRole;
  @override
  final String goal;
  @override
  final String? profileImageUrl;
  final List<Workout> _workouts;
  @override
  @JsonKey()
  List<Workout> get workouts {
    if (_workouts is EqualUnmodifiableListView) return _workouts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workouts);
  }

// Lista dei workout personalizzati
  @override
  @JsonKey()
  final bool darkModeEnabled;
// Stato del tema scuro
  @override
  @TimestampSerializer()
  final DateTime createdAt;

  @override
  String toString() {
    return 'User(id: $id, name: $name, surname: $surname, username: $username, email: $email, height: $height, weight: $weight, birthDate: $birthDate, userRole: $userRole, goal: $goal, profileImageUrl: $profileImageUrl, workouts: $workouts, darkModeEnabled: $darkModeEnabled, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.userRole, userRole) ||
                other.userRole == userRole) &&
            (identical(other.goal, goal) || other.goal == goal) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            const DeepCollectionEquality().equals(other._workouts, _workouts) &&
            (identical(other.darkModeEnabled, darkModeEnabled) ||
                other.darkModeEnabled == darkModeEnabled) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      surname,
      username,
      email,
      height,
      weight,
      birthDate,
      userRole,
      goal,
      profileImageUrl,
      const DeepCollectionEquality().hash(_workouts),
      darkModeEnabled,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {final String? id,
      required final String name,
      required final String surname,
      required final String username,
      required final String email,
      required final int height,
      required final double weight,
      @TimestampSerializer() required final DateTime birthDate,
      required final String userRole,
      required final String goal,
      final String? profileImageUrl,
      final List<Workout> workouts,
      final bool darkModeEnabled,
      @TimestampSerializer() required final DateTime createdAt}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String? get id;
  @override
  String get name;
  @override
  String get surname;
  @override
  String get username;
  @override
  String get email;
  @override
  int get height;
  @override
  double get weight;
  @override
  @TimestampSerializer()
  DateTime get birthDate;
  @override
  String get userRole;
  @override
  String get goal;
  @override
  String? get profileImageUrl;
  @override
  List<Workout> get workouts;
  @override // Lista dei workout personalizzati
  bool get darkModeEnabled;
  @override // Stato del tema scuro
  @TimestampSerializer()
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
