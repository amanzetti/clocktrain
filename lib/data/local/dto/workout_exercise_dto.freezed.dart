// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_exercise_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkoutExerciseDto _$WorkoutExerciseDtoFromJson(Map<String, dynamic> json) {
  return _WorkoutExerciseDto.fromJson(json);
}

/// @nodoc
mixin _$WorkoutExerciseDto {
  int get id => throw _privateConstructorUsedError;
  int get workoutId => throw _privateConstructorUsedError;
  int get exerciseId => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  int? get supersetGroup => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  /// Serializes this WorkoutExerciseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkoutExerciseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkoutExerciseDtoCopyWith<WorkoutExerciseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutExerciseDtoCopyWith<$Res> {
  factory $WorkoutExerciseDtoCopyWith(
          WorkoutExerciseDto value, $Res Function(WorkoutExerciseDto) then) =
      _$WorkoutExerciseDtoCopyWithImpl<$Res, WorkoutExerciseDto>;
  @useResult
  $Res call(
      {int id,
      int workoutId,
      int exerciseId,
      int order,
      int? supersetGroup,
      String? notes});
}

/// @nodoc
class _$WorkoutExerciseDtoCopyWithImpl<$Res, $Val extends WorkoutExerciseDto>
    implements $WorkoutExerciseDtoCopyWith<$Res> {
  _$WorkoutExerciseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkoutExerciseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? workoutId = null,
    Object? exerciseId = null,
    Object? order = null,
    Object? supersetGroup = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      workoutId: null == workoutId
          ? _value.workoutId
          : workoutId // ignore: cast_nullable_to_non_nullable
              as int,
      exerciseId: null == exerciseId
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as int,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      supersetGroup: freezed == supersetGroup
          ? _value.supersetGroup
          : supersetGroup // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkoutExerciseDtoImplCopyWith<$Res>
    implements $WorkoutExerciseDtoCopyWith<$Res> {
  factory _$$WorkoutExerciseDtoImplCopyWith(_$WorkoutExerciseDtoImpl value,
          $Res Function(_$WorkoutExerciseDtoImpl) then) =
      __$$WorkoutExerciseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int workoutId,
      int exerciseId,
      int order,
      int? supersetGroup,
      String? notes});
}

/// @nodoc
class __$$WorkoutExerciseDtoImplCopyWithImpl<$Res>
    extends _$WorkoutExerciseDtoCopyWithImpl<$Res, _$WorkoutExerciseDtoImpl>
    implements _$$WorkoutExerciseDtoImplCopyWith<$Res> {
  __$$WorkoutExerciseDtoImplCopyWithImpl(_$WorkoutExerciseDtoImpl _value,
      $Res Function(_$WorkoutExerciseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkoutExerciseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? workoutId = null,
    Object? exerciseId = null,
    Object? order = null,
    Object? supersetGroup = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$WorkoutExerciseDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      workoutId: null == workoutId
          ? _value.workoutId
          : workoutId // ignore: cast_nullable_to_non_nullable
              as int,
      exerciseId: null == exerciseId
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as int,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      supersetGroup: freezed == supersetGroup
          ? _value.supersetGroup
          : supersetGroup // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkoutExerciseDtoImpl implements _WorkoutExerciseDto {
  const _$WorkoutExerciseDtoImpl(
      {required this.id,
      required this.workoutId,
      required this.exerciseId,
      required this.order,
      this.supersetGroup,
      this.notes});

  factory _$WorkoutExerciseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutExerciseDtoImplFromJson(json);

  @override
  final int id;
  @override
  final int workoutId;
  @override
  final int exerciseId;
  @override
  final int order;
  @override
  final int? supersetGroup;
  @override
  final String? notes;

  @override
  String toString() {
    return 'WorkoutExerciseDto(id: $id, workoutId: $workoutId, exerciseId: $exerciseId, order: $order, supersetGroup: $supersetGroup, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutExerciseDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.workoutId, workoutId) ||
                other.workoutId == workoutId) &&
            (identical(other.exerciseId, exerciseId) ||
                other.exerciseId == exerciseId) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.supersetGroup, supersetGroup) ||
                other.supersetGroup == supersetGroup) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, workoutId, exerciseId, order, supersetGroup, notes);

  /// Create a copy of WorkoutExerciseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutExerciseDtoImplCopyWith<_$WorkoutExerciseDtoImpl> get copyWith =>
      __$$WorkoutExerciseDtoImplCopyWithImpl<_$WorkoutExerciseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkoutExerciseDtoImplToJson(
      this,
    );
  }
}

abstract class _WorkoutExerciseDto implements WorkoutExerciseDto {
  const factory _WorkoutExerciseDto(
      {required final int id,
      required final int workoutId,
      required final int exerciseId,
      required final int order,
      final int? supersetGroup,
      final String? notes}) = _$WorkoutExerciseDtoImpl;

  factory _WorkoutExerciseDto.fromJson(Map<String, dynamic> json) =
      _$WorkoutExerciseDtoImpl.fromJson;

  @override
  int get id;
  @override
  int get workoutId;
  @override
  int get exerciseId;
  @override
  int get order;
  @override
  int? get supersetGroup;
  @override
  String? get notes;

  /// Create a copy of WorkoutExerciseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkoutExerciseDtoImplCopyWith<_$WorkoutExerciseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
