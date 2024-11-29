import 'package:freezed_annotation/freezed_annotation.dart';

part 'muscle_group_entity.freezed.dart';

@freezed
class MuscleGroup with _$MuscleGroup {
  const factory MuscleGroup({
    required int id,
    required String name,
  }) = _MuscleGroup;
}
