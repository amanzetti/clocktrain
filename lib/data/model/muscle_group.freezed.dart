// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'muscle_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MuscleGroup _$MuscleGroupFromJson(Map<String, dynamic> json) {
  return _MuscleGroup.fromJson(json);
}

/// @nodoc
mixin _$MuscleGroup {
  int get id => throw _privateConstructorUsedError;
  String get groupName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MuscleGroupCopyWith<MuscleGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MuscleGroupCopyWith<$Res> {
  factory $MuscleGroupCopyWith(
          MuscleGroup value, $Res Function(MuscleGroup) then) =
      _$MuscleGroupCopyWithImpl<$Res, MuscleGroup>;
  @useResult
  $Res call({int id, String groupName});
}

/// @nodoc
class _$MuscleGroupCopyWithImpl<$Res, $Val extends MuscleGroup>
    implements $MuscleGroupCopyWith<$Res> {
  _$MuscleGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MuscleGroupImplCopyWith<$Res>
    implements $MuscleGroupCopyWith<$Res> {
  factory _$$MuscleGroupImplCopyWith(
          _$MuscleGroupImpl value, $Res Function(_$MuscleGroupImpl) then) =
      __$$MuscleGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String groupName});
}

/// @nodoc
class __$$MuscleGroupImplCopyWithImpl<$Res>
    extends _$MuscleGroupCopyWithImpl<$Res, _$MuscleGroupImpl>
    implements _$$MuscleGroupImplCopyWith<$Res> {
  __$$MuscleGroupImplCopyWithImpl(
      _$MuscleGroupImpl _value, $Res Function(_$MuscleGroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupName = null,
  }) {
    return _then(_$MuscleGroupImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MuscleGroupImpl implements _MuscleGroup {
  const _$MuscleGroupImpl({required this.id, required this.groupName});

  factory _$MuscleGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$MuscleGroupImplFromJson(json);

  @override
  final int id;
  @override
  final String groupName;

  @override
  String toString() {
    return 'MuscleGroup(id: $id, groupName: $groupName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MuscleGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, groupName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MuscleGroupImplCopyWith<_$MuscleGroupImpl> get copyWith =>
      __$$MuscleGroupImplCopyWithImpl<_$MuscleGroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MuscleGroupImplToJson(
      this,
    );
  }
}

abstract class _MuscleGroup implements MuscleGroup {
  const factory _MuscleGroup(
      {required final int id,
      required final String groupName}) = _$MuscleGroupImpl;

  factory _MuscleGroup.fromJson(Map<String, dynamic> json) =
      _$MuscleGroupImpl.fromJson;

  @override
  int get id;
  @override
  String get groupName;
  @override
  @JsonKey(ignore: true)
  _$$MuscleGroupImplCopyWith<_$MuscleGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
