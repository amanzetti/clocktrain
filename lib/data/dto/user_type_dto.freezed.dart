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
  int get id => throw _privateConstructorUsedError;
  String get typeName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserTypeDtoCopyWith<UserTypeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTypeDtoCopyWith<$Res> {
  factory $UserTypeDtoCopyWith(
          UserTypeDto value, $Res Function(UserTypeDto) then) =
      _$UserTypeDtoCopyWithImpl<$Res, UserTypeDto>;
  @useResult
  $Res call({int id, String typeName});
}

/// @nodoc
class _$UserTypeDtoCopyWithImpl<$Res, $Val extends UserTypeDto>
    implements $UserTypeDtoCopyWith<$Res> {
  _$UserTypeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$UserTypeDtoImplCopyWith<$Res>
    implements $UserTypeDtoCopyWith<$Res> {
  factory _$$UserTypeDtoImplCopyWith(
          _$UserTypeDtoImpl value, $Res Function(_$UserTypeDtoImpl) then) =
      __$$UserTypeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String typeName});
}

/// @nodoc
class __$$UserTypeDtoImplCopyWithImpl<$Res>
    extends _$UserTypeDtoCopyWithImpl<$Res, _$UserTypeDtoImpl>
    implements _$$UserTypeDtoImplCopyWith<$Res> {
  __$$UserTypeDtoImplCopyWithImpl(
      _$UserTypeDtoImpl _value, $Res Function(_$UserTypeDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? typeName = null,
  }) {
    return _then(_$UserTypeDtoImpl(
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
class _$UserTypeDtoImpl implements _UserTypeDto {
  const _$UserTypeDtoImpl({required this.id, required this.typeName});

  factory _$UserTypeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserTypeDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String typeName;

  @override
  String toString() {
    return 'UserTypeDto(id: $id, typeName: $typeName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserTypeDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, typeName);

  @JsonKey(ignore: true)
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
  const factory _UserTypeDto(
      {required final int id,
      required final String typeName}) = _$UserTypeDtoImpl;

  factory _UserTypeDto.fromJson(Map<String, dynamic> json) =
      _$UserTypeDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get typeName;
  @override
  @JsonKey(ignore: true)
  _$$UserTypeDtoImplCopyWith<_$UserTypeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
