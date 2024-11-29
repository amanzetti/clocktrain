// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_plan_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkoutPlanDto _$WorkoutPlanDtoFromJson(Map<String, dynamic> json) {
  return _WorkoutPlanDto.fromJson(json);
}

/// @nodoc
mixin _$WorkoutPlanDto {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  UserDto? get user => throw _privateConstructorUsedError;
  UserDto? get trainer => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;
  List<DailyPlanDto> get dailyPlans => throw _privateConstructorUsedError;

  /// Serializes this WorkoutPlanDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkoutPlanDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkoutPlanDtoCopyWith<WorkoutPlanDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutPlanDtoCopyWith<$Res> {
  factory $WorkoutPlanDtoCopyWith(
          WorkoutPlanDto value, $Res Function(WorkoutPlanDto) then) =
      _$WorkoutPlanDtoCopyWithImpl<$Res, WorkoutPlanDto>;
  @useResult
  $Res call(
      {int? id,
      String name,
      UserDto? user,
      UserDto? trainer,
      bool isPublic,
      List<DailyPlanDto> dailyPlans});

  $UserDtoCopyWith<$Res>? get user;
  $UserDtoCopyWith<$Res>? get trainer;
}

/// @nodoc
class _$WorkoutPlanDtoCopyWithImpl<$Res, $Val extends WorkoutPlanDto>
    implements $WorkoutPlanDtoCopyWith<$Res> {
  _$WorkoutPlanDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkoutPlanDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? user = freezed,
    Object? trainer = freezed,
    Object? isPublic = null,
    Object? dailyPlans = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto?,
      trainer: freezed == trainer
          ? _value.trainer
          : trainer // ignore: cast_nullable_to_non_nullable
              as UserDto?,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      dailyPlans: null == dailyPlans
          ? _value.dailyPlans
          : dailyPlans // ignore: cast_nullable_to_non_nullable
              as List<DailyPlanDto>,
    ) as $Val);
  }

  /// Create a copy of WorkoutPlanDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserDtoCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of WorkoutPlanDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res>? get trainer {
    if (_value.trainer == null) {
      return null;
    }

    return $UserDtoCopyWith<$Res>(_value.trainer!, (value) {
      return _then(_value.copyWith(trainer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WorkoutPlanDtoImplCopyWith<$Res>
    implements $WorkoutPlanDtoCopyWith<$Res> {
  factory _$$WorkoutPlanDtoImplCopyWith(_$WorkoutPlanDtoImpl value,
          $Res Function(_$WorkoutPlanDtoImpl) then) =
      __$$WorkoutPlanDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String name,
      UserDto? user,
      UserDto? trainer,
      bool isPublic,
      List<DailyPlanDto> dailyPlans});

  @override
  $UserDtoCopyWith<$Res>? get user;
  @override
  $UserDtoCopyWith<$Res>? get trainer;
}

/// @nodoc
class __$$WorkoutPlanDtoImplCopyWithImpl<$Res>
    extends _$WorkoutPlanDtoCopyWithImpl<$Res, _$WorkoutPlanDtoImpl>
    implements _$$WorkoutPlanDtoImplCopyWith<$Res> {
  __$$WorkoutPlanDtoImplCopyWithImpl(
      _$WorkoutPlanDtoImpl _value, $Res Function(_$WorkoutPlanDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkoutPlanDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? user = freezed,
    Object? trainer = freezed,
    Object? isPublic = null,
    Object? dailyPlans = null,
  }) {
    return _then(_$WorkoutPlanDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto?,
      trainer: freezed == trainer
          ? _value.trainer
          : trainer // ignore: cast_nullable_to_non_nullable
              as UserDto?,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      dailyPlans: null == dailyPlans
          ? _value._dailyPlans
          : dailyPlans // ignore: cast_nullable_to_non_nullable
              as List<DailyPlanDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkoutPlanDtoImpl implements _WorkoutPlanDto {
  const _$WorkoutPlanDtoImpl(
      {this.id,
      required this.name,
      this.user,
      this.trainer,
      required this.isPublic,
      required final List<DailyPlanDto> dailyPlans})
      : _dailyPlans = dailyPlans;

  factory _$WorkoutPlanDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutPlanDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final String name;
  @override
  final UserDto? user;
  @override
  final UserDto? trainer;
  @override
  final bool isPublic;
  final List<DailyPlanDto> _dailyPlans;
  @override
  List<DailyPlanDto> get dailyPlans {
    if (_dailyPlans is EqualUnmodifiableListView) return _dailyPlans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dailyPlans);
  }

  @override
  String toString() {
    return 'WorkoutPlanDto(id: $id, name: $name, user: $user, trainer: $trainer, isPublic: $isPublic, dailyPlans: $dailyPlans)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutPlanDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.trainer, trainer) || other.trainer == trainer) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            const DeepCollectionEquality()
                .equals(other._dailyPlans, _dailyPlans));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, user, trainer,
      isPublic, const DeepCollectionEquality().hash(_dailyPlans));

  /// Create a copy of WorkoutPlanDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutPlanDtoImplCopyWith<_$WorkoutPlanDtoImpl> get copyWith =>
      __$$WorkoutPlanDtoImplCopyWithImpl<_$WorkoutPlanDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkoutPlanDtoImplToJson(
      this,
    );
  }
}

abstract class _WorkoutPlanDto implements WorkoutPlanDto {
  const factory _WorkoutPlanDto(
      {final int? id,
      required final String name,
      final UserDto? user,
      final UserDto? trainer,
      required final bool isPublic,
      required final List<DailyPlanDto> dailyPlans}) = _$WorkoutPlanDtoImpl;

  factory _WorkoutPlanDto.fromJson(Map<String, dynamic> json) =
      _$WorkoutPlanDtoImpl.fromJson;

  @override
  int? get id;
  @override
  String get name;
  @override
  UserDto? get user;
  @override
  UserDto? get trainer;
  @override
  bool get isPublic;
  @override
  List<DailyPlanDto> get dailyPlans;

  /// Create a copy of WorkoutPlanDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkoutPlanDtoImplCopyWith<_$WorkoutPlanDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
