// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_session_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExerciseSessionDto _$ExerciseSessionDtoFromJson(Map<String, dynamic> json) {
  return _ExerciseSessionDto.fromJson(json);
}

/// @nodoc
mixin _$ExerciseSessionDto {
  int get id => throw _privateConstructorUsedError;
  ExerciseDto? get exercise => throw _privateConstructorUsedError;
  int? get weight => throw _privateConstructorUsedError;
  int? get rest => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  List<TagDto> get tags => throw _privateConstructorUsedError;

  /// Serializes this ExerciseSessionDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExerciseSessionDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExerciseSessionDtoCopyWith<ExerciseSessionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseSessionDtoCopyWith<$Res> {
  factory $ExerciseSessionDtoCopyWith(
          ExerciseSessionDto value, $Res Function(ExerciseSessionDto) then) =
      _$ExerciseSessionDtoCopyWithImpl<$Res, ExerciseSessionDto>;
  @useResult
  $Res call(
      {int id,
      ExerciseDto? exercise,
      int? weight,
      int? rest,
      int? duration,
      List<TagDto> tags});

  $ExerciseDtoCopyWith<$Res>? get exercise;
}

/// @nodoc
class _$ExerciseSessionDtoCopyWithImpl<$Res, $Val extends ExerciseSessionDto>
    implements $ExerciseSessionDtoCopyWith<$Res> {
  _$ExerciseSessionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExerciseSessionDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? exercise = freezed,
    Object? weight = freezed,
    Object? rest = freezed,
    Object? duration = freezed,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      exercise: freezed == exercise
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as ExerciseDto?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      rest: freezed == rest
          ? _value.rest
          : rest // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagDto>,
    ) as $Val);
  }

  /// Create a copy of ExerciseSessionDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExerciseDtoCopyWith<$Res>? get exercise {
    if (_value.exercise == null) {
      return null;
    }

    return $ExerciseDtoCopyWith<$Res>(_value.exercise!, (value) {
      return _then(_value.copyWith(exercise: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExerciseSessionDtoImplCopyWith<$Res>
    implements $ExerciseSessionDtoCopyWith<$Res> {
  factory _$$ExerciseSessionDtoImplCopyWith(_$ExerciseSessionDtoImpl value,
          $Res Function(_$ExerciseSessionDtoImpl) then) =
      __$$ExerciseSessionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      ExerciseDto? exercise,
      int? weight,
      int? rest,
      int? duration,
      List<TagDto> tags});

  @override
  $ExerciseDtoCopyWith<$Res>? get exercise;
}

/// @nodoc
class __$$ExerciseSessionDtoImplCopyWithImpl<$Res>
    extends _$ExerciseSessionDtoCopyWithImpl<$Res, _$ExerciseSessionDtoImpl>
    implements _$$ExerciseSessionDtoImplCopyWith<$Res> {
  __$$ExerciseSessionDtoImplCopyWithImpl(_$ExerciseSessionDtoImpl _value,
      $Res Function(_$ExerciseSessionDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExerciseSessionDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? exercise = freezed,
    Object? weight = freezed,
    Object? rest = freezed,
    Object? duration = freezed,
    Object? tags = null,
  }) {
    return _then(_$ExerciseSessionDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      exercise: freezed == exercise
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as ExerciseDto?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      rest: freezed == rest
          ? _value.rest
          : rest // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExerciseSessionDtoImpl implements _ExerciseSessionDto {
  const _$ExerciseSessionDtoImpl(
      {required this.id,
      this.exercise,
      this.weight,
      this.rest,
      this.duration,
      required final List<TagDto> tags})
      : _tags = tags;

  factory _$ExerciseSessionDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExerciseSessionDtoImplFromJson(json);

  @override
  final int id;
  @override
  final ExerciseDto? exercise;
  @override
  final int? weight;
  @override
  final int? rest;
  @override
  final int? duration;
  final List<TagDto> _tags;
  @override
  List<TagDto> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'ExerciseSessionDto(id: $id, exercise: $exercise, weight: $weight, rest: $rest, duration: $duration, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseSessionDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.exercise, exercise) ||
                other.exercise == exercise) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.rest, rest) || other.rest == rest) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, exercise, weight, rest,
      duration, const DeepCollectionEquality().hash(_tags));

  /// Create a copy of ExerciseSessionDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseSessionDtoImplCopyWith<_$ExerciseSessionDtoImpl> get copyWith =>
      __$$ExerciseSessionDtoImplCopyWithImpl<_$ExerciseSessionDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExerciseSessionDtoImplToJson(
      this,
    );
  }
}

abstract class _ExerciseSessionDto implements ExerciseSessionDto {
  const factory _ExerciseSessionDto(
      {required final int id,
      final ExerciseDto? exercise,
      final int? weight,
      final int? rest,
      final int? duration,
      required final List<TagDto> tags}) = _$ExerciseSessionDtoImpl;

  factory _ExerciseSessionDto.fromJson(Map<String, dynamic> json) =
      _$ExerciseSessionDtoImpl.fromJson;

  @override
  int get id;
  @override
  ExerciseDto? get exercise;
  @override
  int? get weight;
  @override
  int? get rest;
  @override
  int? get duration;
  @override
  List<TagDto> get tags;

  /// Create a copy of ExerciseSessionDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExerciseSessionDtoImplCopyWith<_$ExerciseSessionDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
