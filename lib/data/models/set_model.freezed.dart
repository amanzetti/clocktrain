// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Set _$SetFromJson(Map<String, dynamic> json) {
  return _Set.fromJson(json);
}

/// @nodoc
mixin _$Set {
  String? get id => throw _privateConstructorUsedError;
  int get setNumber => throw _privateConstructorUsedError; // Numero della serie
  List<Rep> get reps => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetCopyWith<Set> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetCopyWith<$Res> {
  factory $SetCopyWith(Set value, $Res Function(Set) then) =
      _$SetCopyWithImpl<$Res, Set>;
  @useResult
  $Res call({String? id, int setNumber, List<Rep> reps});
}

/// @nodoc
class _$SetCopyWithImpl<$Res, $Val extends Set> implements $SetCopyWith<$Res> {
  _$SetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? setNumber = null,
    Object? reps = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      setNumber: null == setNumber
          ? _value.setNumber
          : setNumber // ignore: cast_nullable_to_non_nullable
              as int,
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as List<Rep>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetImplCopyWith<$Res> implements $SetCopyWith<$Res> {
  factory _$$SetImplCopyWith(_$SetImpl value, $Res Function(_$SetImpl) then) =
      __$$SetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, int setNumber, List<Rep> reps});
}

/// @nodoc
class __$$SetImplCopyWithImpl<$Res> extends _$SetCopyWithImpl<$Res, _$SetImpl>
    implements _$$SetImplCopyWith<$Res> {
  __$$SetImplCopyWithImpl(_$SetImpl _value, $Res Function(_$SetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? setNumber = null,
    Object? reps = null,
  }) {
    return _then(_$SetImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      setNumber: null == setNumber
          ? _value.setNumber
          : setNumber // ignore: cast_nullable_to_non_nullable
              as int,
      reps: null == reps
          ? _value._reps
          : reps // ignore: cast_nullable_to_non_nullable
              as List<Rep>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetImpl implements _Set {
  const _$SetImpl(
      {this.id, required this.setNumber, final List<Rep> reps = const []})
      : _reps = reps;

  factory _$SetImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetImplFromJson(json);

  @override
  final String? id;
  @override
  final int setNumber;
// Numero della serie
  final List<Rep> _reps;
// Numero della serie
  @override
  @JsonKey()
  List<Rep> get reps {
    if (_reps is EqualUnmodifiableListView) return _reps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reps);
  }

  @override
  String toString() {
    return 'Set(id: $id, setNumber: $setNumber, reps: $reps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.setNumber, setNumber) ||
                other.setNumber == setNumber) &&
            const DeepCollectionEquality().equals(other._reps, _reps));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, setNumber, const DeepCollectionEquality().hash(_reps));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetImplCopyWith<_$SetImpl> get copyWith =>
      __$$SetImplCopyWithImpl<_$SetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetImplToJson(
      this,
    );
  }
}

abstract class _Set implements Set {
  const factory _Set(
      {final String? id,
      required final int setNumber,
      final List<Rep> reps}) = _$SetImpl;

  factory _Set.fromJson(Map<String, dynamic> json) = _$SetImpl.fromJson;

  @override
  String? get id;
  @override
  int get setNumber;
  @override // Numero della serie
  List<Rep> get reps;
  @override
  @JsonKey(ignore: true)
  _$$SetImplCopyWith<_$SetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
