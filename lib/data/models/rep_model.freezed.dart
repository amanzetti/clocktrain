// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rep_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Rep _$RepFromJson(Map<String, dynamic> json) {
  return _Rep.fromJson(json);
}

/// @nodoc
mixin _$Rep {
  int get repNumber =>
      throw _privateConstructorUsedError; // Numero di ripetizioni
  Duration get restTime =>
      throw _privateConstructorUsedError; // Tempo di riposo tra le ripetizioni
  int? get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepCopyWith<Rep> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepCopyWith<$Res> {
  factory $RepCopyWith(Rep value, $Res Function(Rep) then) =
      _$RepCopyWithImpl<$Res, Rep>;
  @useResult
  $Res call({int repNumber, Duration restTime, int? weight});
}

/// @nodoc
class _$RepCopyWithImpl<$Res, $Val extends Rep> implements $RepCopyWith<$Res> {
  _$RepCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repNumber = null,
    Object? restTime = null,
    Object? weight = freezed,
  }) {
    return _then(_value.copyWith(
      repNumber: null == repNumber
          ? _value.repNumber
          : repNumber // ignore: cast_nullable_to_non_nullable
              as int,
      restTime: null == restTime
          ? _value.restTime
          : restTime // ignore: cast_nullable_to_non_nullable
              as Duration,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepImplCopyWith<$Res> implements $RepCopyWith<$Res> {
  factory _$$RepImplCopyWith(_$RepImpl value, $Res Function(_$RepImpl) then) =
      __$$RepImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int repNumber, Duration restTime, int? weight});
}

/// @nodoc
class __$$RepImplCopyWithImpl<$Res> extends _$RepCopyWithImpl<$Res, _$RepImpl>
    implements _$$RepImplCopyWith<$Res> {
  __$$RepImplCopyWithImpl(_$RepImpl _value, $Res Function(_$RepImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repNumber = null,
    Object? restTime = null,
    Object? weight = freezed,
  }) {
    return _then(_$RepImpl(
      repNumber: null == repNumber
          ? _value.repNumber
          : repNumber // ignore: cast_nullable_to_non_nullable
              as int,
      restTime: null == restTime
          ? _value.restTime
          : restTime // ignore: cast_nullable_to_non_nullable
              as Duration,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepImpl implements _Rep {
  const _$RepImpl(
      {required this.repNumber, required this.restTime, this.weight});

  factory _$RepImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepImplFromJson(json);

  @override
  final int repNumber;
// Numero di ripetizioni
  @override
  final Duration restTime;
// Tempo di riposo tra le ripetizioni
  @override
  final int? weight;

  @override
  String toString() {
    return 'Rep(repNumber: $repNumber, restTime: $restTime, weight: $weight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepImpl &&
            (identical(other.repNumber, repNumber) ||
                other.repNumber == repNumber) &&
            (identical(other.restTime, restTime) ||
                other.restTime == restTime) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, repNumber, restTime, weight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepImplCopyWith<_$RepImpl> get copyWith =>
      __$$RepImplCopyWithImpl<_$RepImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepImplToJson(
      this,
    );
  }
}

abstract class _Rep implements Rep {
  const factory _Rep(
      {required final int repNumber,
      required final Duration restTime,
      final int? weight}) = _$RepImpl;

  factory _Rep.fromJson(Map<String, dynamic> json) = _$RepImpl.fromJson;

  @override
  int get repNumber;
  @override // Numero di ripetizioni
  Duration get restTime;
  @override // Tempo di riposo tra le ripetizioni
  int? get weight;
  @override
  @JsonKey(ignore: true)
  _$$RepImplCopyWith<_$RepImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
