// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkoutDto _$WorkoutDtoFromJson(Map<String, dynamic> json) {
  return _WorkoutDto.fromJson(json);
}

/// @nodoc
mixin _$WorkoutDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  DateTime get dateCreated => throw _privateConstructorUsedError;

  /// Serializes this WorkoutDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkoutDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkoutDtoCopyWith<WorkoutDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutDtoCopyWith<$Res> {
  factory $WorkoutDtoCopyWith(
          WorkoutDto value, $Res Function(WorkoutDto) then) =
      _$WorkoutDtoCopyWithImpl<$Res, WorkoutDto>;
  @useResult
  $Res call(
      {int id,
      String name,
      String? description,
      String userId,
      DateTime dateCreated});
}

/// @nodoc
class _$WorkoutDtoCopyWithImpl<$Res, $Val extends WorkoutDto>
    implements $WorkoutDtoCopyWith<$Res> {
  _$WorkoutDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkoutDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? userId = null,
    Object? dateCreated = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkoutDtoImplCopyWith<$Res>
    implements $WorkoutDtoCopyWith<$Res> {
  factory _$$WorkoutDtoImplCopyWith(
          _$WorkoutDtoImpl value, $Res Function(_$WorkoutDtoImpl) then) =
      __$$WorkoutDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String? description,
      String userId,
      DateTime dateCreated});
}

/// @nodoc
class __$$WorkoutDtoImplCopyWithImpl<$Res>
    extends _$WorkoutDtoCopyWithImpl<$Res, _$WorkoutDtoImpl>
    implements _$$WorkoutDtoImplCopyWith<$Res> {
  __$$WorkoutDtoImplCopyWithImpl(
      _$WorkoutDtoImpl _value, $Res Function(_$WorkoutDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkoutDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? userId = null,
    Object? dateCreated = null,
  }) {
    return _then(_$WorkoutDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkoutDtoImpl implements _WorkoutDto {
  const _$WorkoutDtoImpl(
      {required this.id,
      required this.name,
      this.description,
      required this.userId,
      required this.dateCreated});

  factory _$WorkoutDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String userId;
  @override
  final DateTime dateCreated;

  @override
  String toString() {
    return 'WorkoutDto(id: $id, name: $name, description: $description, userId: $userId, dateCreated: $dateCreated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, userId, dateCreated);

  /// Create a copy of WorkoutDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutDtoImplCopyWith<_$WorkoutDtoImpl> get copyWith =>
      __$$WorkoutDtoImplCopyWithImpl<_$WorkoutDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkoutDtoImplToJson(
      this,
    );
  }
}

abstract class _WorkoutDto implements WorkoutDto {
  const factory _WorkoutDto(
      {required final int id,
      required final String name,
      final String? description,
      required final String userId,
      required final DateTime dateCreated}) = _$WorkoutDtoImpl;

  factory _WorkoutDto.fromJson(Map<String, dynamic> json) =
      _$WorkoutDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  String get userId;
  @override
  DateTime get dateCreated;

  /// Create a copy of WorkoutDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkoutDtoImplCopyWith<_$WorkoutDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
