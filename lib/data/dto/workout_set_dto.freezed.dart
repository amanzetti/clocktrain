// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_set_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkoutSetDto _$WorkoutSetDtoFromJson(Map<String, dynamic> json) {
  return _WorkoutSetDto.fromJson(json);
}

/// @nodoc
mixin _$WorkoutSetDto {
  int get id => throw _privateConstructorUsedError;
  int get workoutExerciseId => throw _privateConstructorUsedError;
  int get setNumber => throw _privateConstructorUsedError;
  int get reps => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError;
  int get restTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkoutSetDtoCopyWith<WorkoutSetDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutSetDtoCopyWith<$Res> {
  factory $WorkoutSetDtoCopyWith(
          WorkoutSetDto value, $Res Function(WorkoutSetDto) then) =
      _$WorkoutSetDtoCopyWithImpl<$Res, WorkoutSetDto>;
  @useResult
  $Res call(
      {int id,
      int workoutExerciseId,
      int setNumber,
      int reps,
      double? weight,
      int restTime});
}

/// @nodoc
class _$WorkoutSetDtoCopyWithImpl<$Res, $Val extends WorkoutSetDto>
    implements $WorkoutSetDtoCopyWith<$Res> {
  _$WorkoutSetDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? workoutExerciseId = null,
    Object? setNumber = null,
    Object? reps = null,
    Object? weight = freezed,
    Object? restTime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      workoutExerciseId: null == workoutExerciseId
          ? _value.workoutExerciseId
          : workoutExerciseId // ignore: cast_nullable_to_non_nullable
              as int,
      setNumber: null == setNumber
          ? _value.setNumber
          : setNumber // ignore: cast_nullable_to_non_nullable
              as int,
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      restTime: null == restTime
          ? _value.restTime
          : restTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkoutSetDtoImplCopyWith<$Res>
    implements $WorkoutSetDtoCopyWith<$Res> {
  factory _$$WorkoutSetDtoImplCopyWith(
          _$WorkoutSetDtoImpl value, $Res Function(_$WorkoutSetDtoImpl) then) =
      __$$WorkoutSetDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int workoutExerciseId,
      int setNumber,
      int reps,
      double? weight,
      int restTime});
}

/// @nodoc
class __$$WorkoutSetDtoImplCopyWithImpl<$Res>
    extends _$WorkoutSetDtoCopyWithImpl<$Res, _$WorkoutSetDtoImpl>
    implements _$$WorkoutSetDtoImplCopyWith<$Res> {
  __$$WorkoutSetDtoImplCopyWithImpl(
      _$WorkoutSetDtoImpl _value, $Res Function(_$WorkoutSetDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? workoutExerciseId = null,
    Object? setNumber = null,
    Object? reps = null,
    Object? weight = freezed,
    Object? restTime = null,
  }) {
    return _then(_$WorkoutSetDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      workoutExerciseId: null == workoutExerciseId
          ? _value.workoutExerciseId
          : workoutExerciseId // ignore: cast_nullable_to_non_nullable
              as int,
      setNumber: null == setNumber
          ? _value.setNumber
          : setNumber // ignore: cast_nullable_to_non_nullable
              as int,
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      restTime: null == restTime
          ? _value.restTime
          : restTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkoutSetDtoImpl implements _WorkoutSetDto {
  const _$WorkoutSetDtoImpl(
      {required this.id,
      required this.workoutExerciseId,
      required this.setNumber,
      required this.reps,
      this.weight,
      required this.restTime});

  factory _$WorkoutSetDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutSetDtoImplFromJson(json);

  @override
  final int id;
  @override
  final int workoutExerciseId;
  @override
  final int setNumber;
  @override
  final int reps;
  @override
  final double? weight;
  @override
  final int restTime;

  @override
  String toString() {
    return 'WorkoutSetDto(id: $id, workoutExerciseId: $workoutExerciseId, setNumber: $setNumber, reps: $reps, weight: $weight, restTime: $restTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutSetDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.workoutExerciseId, workoutExerciseId) ||
                other.workoutExerciseId == workoutExerciseId) &&
            (identical(other.setNumber, setNumber) ||
                other.setNumber == setNumber) &&
            (identical(other.reps, reps) || other.reps == reps) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.restTime, restTime) ||
                other.restTime == restTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, workoutExerciseId, setNumber, reps, weight, restTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutSetDtoImplCopyWith<_$WorkoutSetDtoImpl> get copyWith =>
      __$$WorkoutSetDtoImplCopyWithImpl<_$WorkoutSetDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkoutSetDtoImplToJson(
      this,
    );
  }
}

abstract class _WorkoutSetDto implements WorkoutSetDto {
  const factory _WorkoutSetDto(
      {required final int id,
      required final int workoutExerciseId,
      required final int setNumber,
      required final int reps,
      final double? weight,
      required final int restTime}) = _$WorkoutSetDtoImpl;

  factory _WorkoutSetDto.fromJson(Map<String, dynamic> json) =
      _$WorkoutSetDtoImpl.fromJson;

  @override
  int get id;
  @override
  int get workoutExerciseId;
  @override
  int get setNumber;
  @override
  int get reps;
  @override
  double? get weight;
  @override
  int get restTime;
  @override
  @JsonKey(ignore: true)
  _$$WorkoutSetDtoImplCopyWith<_$WorkoutSetDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
