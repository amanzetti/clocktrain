// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserType _$UserTypeFromJson(Map<String, dynamic> json) {
  return _UserType.fromJson(json);
}

/// @nodoc
mixin _$UserType {
  int get id => throw _privateConstructorUsedError;
  String get typeName => throw _privateConstructorUsedError;

  /// Serializes this UserType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserTypeCopyWith<UserType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTypeCopyWith<$Res> {
  factory $UserTypeCopyWith(UserType value, $Res Function(UserType) then) =
      _$UserTypeCopyWithImpl<$Res, UserType>;
  @useResult
  $Res call({int id, String typeName});
}

/// @nodoc
class _$UserTypeCopyWithImpl<$Res, $Val extends UserType>
    implements $UserTypeCopyWith<$Res> {
  _$UserTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? typeName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      typeName: null == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserTypeImplCopyWith<$Res>
    implements $UserTypeCopyWith<$Res> {
  factory _$$UserTypeImplCopyWith(
          _$UserTypeImpl value, $Res Function(_$UserTypeImpl) then) =
      __$$UserTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String typeName});
}

/// @nodoc
class __$$UserTypeImplCopyWithImpl<$Res>
    extends _$UserTypeCopyWithImpl<$Res, _$UserTypeImpl>
    implements _$$UserTypeImplCopyWith<$Res> {
  __$$UserTypeImplCopyWithImpl(
      _$UserTypeImpl _value, $Res Function(_$UserTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? typeName = null,
  }) {
    return _then(_$UserTypeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      typeName: null == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserTypeImpl implements _UserType {
  const _$UserTypeImpl({required this.id, required this.typeName});

  factory _$UserTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserTypeImplFromJson(json);

  @override
  final int id;
  @override
  final String typeName;

  @override
  String toString() {
    return 'UserType(id: $id, typeName: $typeName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, typeName);

  /// Create a copy of UserType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserTypeImplCopyWith<_$UserTypeImpl> get copyWith =>
      __$$UserTypeImplCopyWithImpl<_$UserTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserTypeImplToJson(
      this,
    );
  }
}

abstract class _UserType implements UserType {
  const factory _UserType(
      {required final int id, required final String typeName}) = _$UserTypeImpl;

  factory _UserType.fromJson(Map<String, dynamic> json) =
      _$UserTypeImpl.fromJson;

  @override
  int get id;
  @override
  String get typeName;

  /// Create a copy of UserType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserTypeImplCopyWith<_$UserTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
