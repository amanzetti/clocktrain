// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExerciseDto _$ExerciseDtoFromJson(Map<String, dynamic> json) {
  return _ExerciseDto.fromJson(json);
}

/// @nodoc
mixin _$ExerciseDto {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get media => throw _privateConstructorUsedError;
  List<MuscleGroupDto> get muscleGroups => throw _privateConstructorUsedError;

  /// Serializes this ExerciseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExerciseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExerciseDtoCopyWith<ExerciseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseDtoCopyWith<$Res> {
  factory $ExerciseDtoCopyWith(
          ExerciseDto value, $Res Function(ExerciseDto) then) =
      _$ExerciseDtoCopyWithImpl<$Res, ExerciseDto>;
  @useResult
  $Res call(
      {int? id,
      String name,
      String? description,
      String? media,
      List<MuscleGroupDto> muscleGroups});
}

/// @nodoc
class _$ExerciseDtoCopyWithImpl<$Res, $Val extends ExerciseDto>
    implements $ExerciseDtoCopyWith<$Res> {
  _$ExerciseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExerciseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? media = freezed,
    Object? muscleGroups = null,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as String?,
      muscleGroups: null == muscleGroups
          ? _value.muscleGroups
          : muscleGroups // ignore: cast_nullable_to_non_nullable
              as List<MuscleGroupDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExerciseDtoImplCopyWith<$Res>
    implements $ExerciseDtoCopyWith<$Res> {
  factory _$$ExerciseDtoImplCopyWith(
          _$ExerciseDtoImpl value, $Res Function(_$ExerciseDtoImpl) then) =
      __$$ExerciseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String name,
      String? description,
      String? media,
      List<MuscleGroupDto> muscleGroups});
}

/// @nodoc
class __$$ExerciseDtoImplCopyWithImpl<$Res>
    extends _$ExerciseDtoCopyWithImpl<$Res, _$ExerciseDtoImpl>
    implements _$$ExerciseDtoImplCopyWith<$Res> {
  __$$ExerciseDtoImplCopyWithImpl(
      _$ExerciseDtoImpl _value, $Res Function(_$ExerciseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExerciseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? media = freezed,
    Object? muscleGroups = null,
  }) {
    return _then(_$ExerciseDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as String?,
      muscleGroups: null == muscleGroups
          ? _value._muscleGroups
          : muscleGroups // ignore: cast_nullable_to_non_nullable
              as List<MuscleGroupDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExerciseDtoImpl implements _ExerciseDto {
  const _$ExerciseDtoImpl(
      {this.id,
      required this.name,
      this.description,
      this.media,
      required final List<MuscleGroupDto> muscleGroups})
      : _muscleGroups = muscleGroups;

  factory _$ExerciseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExerciseDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String? media;
  final List<MuscleGroupDto> _muscleGroups;
  @override
  List<MuscleGroupDto> get muscleGroups {
    if (_muscleGroups is EqualUnmodifiableListView) return _muscleGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_muscleGroups);
  }

  @override
  String toString() {
    return 'ExerciseDto(id: $id, name: $name, description: $description, media: $media, muscleGroups: $muscleGroups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.media, media) || other.media == media) &&
            const DeepCollectionEquality()
                .equals(other._muscleGroups, _muscleGroups));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, media,
      const DeepCollectionEquality().hash(_muscleGroups));

  /// Create a copy of ExerciseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseDtoImplCopyWith<_$ExerciseDtoImpl> get copyWith =>
      __$$ExerciseDtoImplCopyWithImpl<_$ExerciseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExerciseDtoImplToJson(
      this,
    );
  }
}

abstract class _ExerciseDto implements ExerciseDto {
  const factory _ExerciseDto(
      {final int? id,
      required final String name,
      final String? description,
      final String? media,
      required final List<MuscleGroupDto> muscleGroups}) = _$ExerciseDtoImpl;

  factory _ExerciseDto.fromJson(Map<String, dynamic> json) =
      _$ExerciseDtoImpl.fromJson;

  @override
  int? get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  String? get media;
  @override
  List<MuscleGroupDto> get muscleGroups;

  /// Create a copy of ExerciseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExerciseDtoImplCopyWith<_$ExerciseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
