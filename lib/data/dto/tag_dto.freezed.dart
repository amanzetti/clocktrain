// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tag_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TagDto _$TagDtoFromJson(Map<String, dynamic> json) {
  return _TagDto.fromJson(json);
}

/// @nodoc
mixin _$TagDto {
  int get id => throw _privateConstructorUsedError;
  String get tagName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TagDtoCopyWith<TagDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagDtoCopyWith<$Res> {
  factory $TagDtoCopyWith(TagDto value, $Res Function(TagDto) then) =
      _$TagDtoCopyWithImpl<$Res, TagDto>;
  @useResult
  $Res call({int id, String tagName});
}

/// @nodoc
class _$TagDtoCopyWithImpl<$Res, $Val extends TagDto>
    implements $TagDtoCopyWith<$Res> {
  _$TagDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tagName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tagName: null == tagName
          ? _value.tagName
          : tagName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TagDtoImplCopyWith<$Res> implements $TagDtoCopyWith<$Res> {
  factory _$$TagDtoImplCopyWith(
          _$TagDtoImpl value, $Res Function(_$TagDtoImpl) then) =
      __$$TagDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String tagName});
}

/// @nodoc
class __$$TagDtoImplCopyWithImpl<$Res>
    extends _$TagDtoCopyWithImpl<$Res, _$TagDtoImpl>
    implements _$$TagDtoImplCopyWith<$Res> {
  __$$TagDtoImplCopyWithImpl(
      _$TagDtoImpl _value, $Res Function(_$TagDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tagName = null,
  }) {
    return _then(_$TagDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tagName: null == tagName
          ? _value.tagName
          : tagName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TagDtoImpl implements _TagDto {
  const _$TagDtoImpl({required this.id, required this.tagName});

  factory _$TagDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TagDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String tagName;

  @override
  String toString() {
    return 'TagDto(id: $id, tagName: $tagName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tagName, tagName) || other.tagName == tagName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, tagName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TagDtoImplCopyWith<_$TagDtoImpl> get copyWith =>
      __$$TagDtoImplCopyWithImpl<_$TagDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TagDtoImplToJson(
      this,
    );
  }
}

abstract class _TagDto implements TagDto {
  const factory _TagDto(
      {required final int id, required final String tagName}) = _$TagDtoImpl;

  factory _TagDto.fromJson(Map<String, dynamic> json) = _$TagDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get tagName;
  @override
  @JsonKey(ignore: true)
  _$$TagDtoImplCopyWith<_$TagDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
