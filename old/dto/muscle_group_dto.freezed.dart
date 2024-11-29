// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'muscle_group_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MuscleGroupDto _$MuscleGroupDtoFromJson(Map<String, dynamic> json) {
  return _MuscleGroupDto.fromJson(json);
}

/// @nodoc
mixin _$MuscleGroupDto {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this MuscleGroupDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MuscleGroupDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MuscleGroupDtoCopyWith<MuscleGroupDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MuscleGroupDtoCopyWith<$Res> {
  factory $MuscleGroupDtoCopyWith(
          MuscleGroupDto value, $Res Function(MuscleGroupDto) then) =
      _$MuscleGroupDtoCopyWithImpl<$Res, MuscleGroupDto>;
  @useResult
  $Res call({int? id, String name});
}

/// @nodoc
class _$MuscleGroupDtoCopyWithImpl<$Res, $Val extends MuscleGroupDto>
    implements $MuscleGroupDtoCopyWith<$Res> {
  _$MuscleGroupDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MuscleGroupDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MuscleGroupDtoImplCopyWith<$Res>
    implements $MuscleGroupDtoCopyWith<$Res> {
  factory _$$MuscleGroupDtoImplCopyWith(_$MuscleGroupDtoImpl value,
          $Res Function(_$MuscleGroupDtoImpl) then) =
      __$$MuscleGroupDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String name});
}

/// @nodoc
class __$$MuscleGroupDtoImplCopyWithImpl<$Res>
    extends _$MuscleGroupDtoCopyWithImpl<$Res, _$MuscleGroupDtoImpl>
    implements _$$MuscleGroupDtoImplCopyWith<$Res> {
  __$$MuscleGroupDtoImplCopyWithImpl(
      _$MuscleGroupDtoImpl _value, $Res Function(_$MuscleGroupDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MuscleGroupDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
  }) {
    return _then(_$MuscleGroupDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MuscleGroupDtoImpl implements _MuscleGroupDto {
  const _$MuscleGroupDtoImpl({this.id, required this.name});

  factory _$MuscleGroupDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MuscleGroupDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final String name;

  @override
  String toString() {
    return 'MuscleGroupDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MuscleGroupDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of MuscleGroupDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MuscleGroupDtoImplCopyWith<_$MuscleGroupDtoImpl> get copyWith =>
      __$$MuscleGroupDtoImplCopyWithImpl<_$MuscleGroupDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MuscleGroupDtoImplToJson(
      this,
    );
  }
}

abstract class _MuscleGroupDto implements MuscleGroupDto {
  const factory _MuscleGroupDto({final int? id, required final String name}) =
      _$MuscleGroupDtoImpl;

  factory _MuscleGroupDto.fromJson(Map<String, dynamic> json) =
      _$MuscleGroupDtoImpl.fromJson;

  @override
  int? get id;
  @override
  String get name;

  /// Create a copy of MuscleGroupDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MuscleGroupDtoImplCopyWith<_$MuscleGroupDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
