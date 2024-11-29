// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_type_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserTypeDto _$UserTypeDtoFromJson(Map<String, dynamic> json) {
  return _UserTypeDto.fromJson(json);
}

/// @nodoc
mixin _$UserTypeDto {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this UserTypeDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserTypeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserTypeDtoCopyWith<UserTypeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTypeDtoCopyWith<$Res> {
  factory $UserTypeDtoCopyWith(
          UserTypeDto value, $Res Function(UserTypeDto) then) =
      _$UserTypeDtoCopyWithImpl<$Res, UserTypeDto>;
  @useResult
  $Res call({int? id, String name});
}

/// @nodoc
class _$UserTypeDtoCopyWithImpl<$Res, $Val extends UserTypeDto>
    implements $UserTypeDtoCopyWith<$Res> {
  _$UserTypeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserTypeDto
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
abstract class _$$UserTypeDtoImplCopyWith<$Res>
    implements $UserTypeDtoCopyWith<$Res> {
  factory _$$UserTypeDtoImplCopyWith(
          _$UserTypeDtoImpl value, $Res Function(_$UserTypeDtoImpl) then) =
      __$$UserTypeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String name});
}

/// @nodoc
class __$$UserTypeDtoImplCopyWithImpl<$Res>
    extends _$UserTypeDtoCopyWithImpl<$Res, _$UserTypeDtoImpl>
    implements _$$UserTypeDtoImplCopyWith<$Res> {
  __$$UserTypeDtoImplCopyWithImpl(
      _$UserTypeDtoImpl _value, $Res Function(_$UserTypeDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserTypeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
  }) {
    return _then(_$UserTypeDtoImpl(
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
class _$UserTypeDtoImpl implements _UserTypeDto {
  const _$UserTypeDtoImpl({this.id, required this.name});

  factory _$UserTypeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserTypeDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final String name;

  @override
  String toString() {
    return 'UserTypeDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserTypeDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of UserTypeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserTypeDtoImplCopyWith<_$UserTypeDtoImpl> get copyWith =>
      __$$UserTypeDtoImplCopyWithImpl<_$UserTypeDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserTypeDtoImplToJson(
      this,
    );
  }
}

abstract class _UserTypeDto implements UserTypeDto {
  const factory _UserTypeDto({final int? id, required final String name}) =
      _$UserTypeDtoImpl;

  factory _UserTypeDto.fromJson(Map<String, dynamic> json) =
      _$UserTypeDtoImpl.fromJson;

  @override
  int? get id;
  @override
  String get name;

  /// Create a copy of UserTypeDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserTypeDtoImplCopyWith<_$UserTypeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
