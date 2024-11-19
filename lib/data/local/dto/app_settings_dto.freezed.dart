// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppSettingDto _$AppSettingDtoFromJson(Map<String, dynamic> json) {
  return _AppSettingDto.fromJson(json);
}

/// @nodoc
mixin _$AppSettingDto {
  int get id => throw _privateConstructorUsedError;
  String get settingName => throw _privateConstructorUsedError;
  String get settingValue => throw _privateConstructorUsedError;

  /// Serializes this AppSettingDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppSettingDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppSettingDtoCopyWith<AppSettingDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingDtoCopyWith<$Res> {
  factory $AppSettingDtoCopyWith(
          AppSettingDto value, $Res Function(AppSettingDto) then) =
      _$AppSettingDtoCopyWithImpl<$Res, AppSettingDto>;
  @useResult
  $Res call({int id, String settingName, String settingValue});
}

/// @nodoc
class _$AppSettingDtoCopyWithImpl<$Res, $Val extends AppSettingDto>
    implements $AppSettingDtoCopyWith<$Res> {
  _$AppSettingDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppSettingDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? settingName = null,
    Object? settingValue = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      settingName: null == settingName
          ? _value.settingName
          : settingName // ignore: cast_nullable_to_non_nullable
              as String,
      settingValue: null == settingValue
          ? _value.settingValue
          : settingValue // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppSettingDtoImplCopyWith<$Res>
    implements $AppSettingDtoCopyWith<$Res> {
  factory _$$AppSettingDtoImplCopyWith(
          _$AppSettingDtoImpl value, $Res Function(_$AppSettingDtoImpl) then) =
      __$$AppSettingDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String settingName, String settingValue});
}

/// @nodoc
class __$$AppSettingDtoImplCopyWithImpl<$Res>
    extends _$AppSettingDtoCopyWithImpl<$Res, _$AppSettingDtoImpl>
    implements _$$AppSettingDtoImplCopyWith<$Res> {
  __$$AppSettingDtoImplCopyWithImpl(
      _$AppSettingDtoImpl _value, $Res Function(_$AppSettingDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSettingDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? settingName = null,
    Object? settingValue = null,
  }) {
    return _then(_$AppSettingDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      settingName: null == settingName
          ? _value.settingName
          : settingName // ignore: cast_nullable_to_non_nullable
              as String,
      settingValue: null == settingValue
          ? _value.settingValue
          : settingValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppSettingDtoImpl implements _AppSettingDto {
  const _$AppSettingDtoImpl(
      {required this.id,
      required this.settingName,
      required this.settingValue});

  factory _$AppSettingDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppSettingDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String settingName;
  @override
  final String settingValue;

  @override
  String toString() {
    return 'AppSettingDto(id: $id, settingName: $settingName, settingValue: $settingValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSettingDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.settingName, settingName) ||
                other.settingName == settingName) &&
            (identical(other.settingValue, settingValue) ||
                other.settingValue == settingValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, settingName, settingValue);

  /// Create a copy of AppSettingDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingDtoImplCopyWith<_$AppSettingDtoImpl> get copyWith =>
      __$$AppSettingDtoImplCopyWithImpl<_$AppSettingDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppSettingDtoImplToJson(
      this,
    );
  }
}

abstract class _AppSettingDto implements AppSettingDto {
  const factory _AppSettingDto(
      {required final int id,
      required final String settingName,
      required final String settingValue}) = _$AppSettingDtoImpl;

  factory _AppSettingDto.fromJson(Map<String, dynamic> json) =
      _$AppSettingDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get settingName;
  @override
  String get settingValue;

  /// Create a copy of AppSettingDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppSettingDtoImplCopyWith<_$AppSettingDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
