// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'progress_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProgressDto _$ProgressDtoFromJson(Map<String, dynamic> json) {
  return _ProgressDto.fromJson(json);
}

/// @nodoc
mixin _$ProgressDto {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get exerciseId => throw _privateConstructorUsedError;
  DateTime get progressDate => throw _privateConstructorUsedError;
  int get reps => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgressDtoCopyWith<ProgressDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressDtoCopyWith<$Res> {
  factory $ProgressDtoCopyWith(
          ProgressDto value, $Res Function(ProgressDto) then) =
      _$ProgressDtoCopyWithImpl<$Res, ProgressDto>;
  @useResult
  $Res call(
      {int id,
      int userId,
      int exerciseId,
      DateTime progressDate,
      int reps,
      double? weight,
      String? notes});
}

/// @nodoc
class _$ProgressDtoCopyWithImpl<$Res, $Val extends ProgressDto>
    implements $ProgressDtoCopyWith<$Res> {
  _$ProgressDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? exerciseId = null,
    Object? progressDate = null,
    Object? reps = null,
    Object? weight = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      exerciseId: null == exerciseId
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as int,
      progressDate: null == progressDate
          ? _value.progressDate
          : progressDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgressDtoImplCopyWith<$Res>
    implements $ProgressDtoCopyWith<$Res> {
  factory _$$ProgressDtoImplCopyWith(
          _$ProgressDtoImpl value, $Res Function(_$ProgressDtoImpl) then) =
      __$$ProgressDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int userId,
      int exerciseId,
      DateTime progressDate,
      int reps,
      double? weight,
      String? notes});
}

/// @nodoc
class __$$ProgressDtoImplCopyWithImpl<$Res>
    extends _$ProgressDtoCopyWithImpl<$Res, _$ProgressDtoImpl>
    implements _$$ProgressDtoImplCopyWith<$Res> {
  __$$ProgressDtoImplCopyWithImpl(
      _$ProgressDtoImpl _value, $Res Function(_$ProgressDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? exerciseId = null,
    Object? progressDate = null,
    Object? reps = null,
    Object? weight = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$ProgressDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      exerciseId: null == exerciseId
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as int,
      progressDate: null == progressDate
          ? _value.progressDate
          : progressDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgressDtoImpl implements _ProgressDto {
  const _$ProgressDtoImpl(
      {required this.id,
      required this.userId,
      required this.exerciseId,
      required this.progressDate,
      required this.reps,
      this.weight,
      this.notes});

  factory _$ProgressDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgressDtoImplFromJson(json);

  @override
  final int id;
  @override
  final int userId;
  @override
  final int exerciseId;
  @override
  final DateTime progressDate;
  @override
  final int reps;
  @override
  final double? weight;
  @override
  final String? notes;

  @override
  String toString() {
    return 'ProgressDto(id: $id, userId: $userId, exerciseId: $exerciseId, progressDate: $progressDate, reps: $reps, weight: $weight, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgressDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.exerciseId, exerciseId) ||
                other.exerciseId == exerciseId) &&
            (identical(other.progressDate, progressDate) ||
                other.progressDate == progressDate) &&
            (identical(other.reps, reps) || other.reps == reps) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, exerciseId, progressDate, reps, weight, notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgressDtoImplCopyWith<_$ProgressDtoImpl> get copyWith =>
      __$$ProgressDtoImplCopyWithImpl<_$ProgressDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgressDtoImplToJson(
      this,
    );
  }
}

abstract class _ProgressDto implements ProgressDto {
  const factory _ProgressDto(
      {required final int id,
      required final int userId,
      required final int exerciseId,
      required final DateTime progressDate,
      required final int reps,
      final double? weight,
      final String? notes}) = _$ProgressDtoImpl;

  factory _ProgressDto.fromJson(Map<String, dynamic> json) =
      _$ProgressDtoImpl.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  int get exerciseId;
  @override
  DateTime get progressDate;
  @override
  int get reps;
  @override
  double? get weight;
  @override
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$ProgressDtoImplCopyWith<_$ProgressDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
