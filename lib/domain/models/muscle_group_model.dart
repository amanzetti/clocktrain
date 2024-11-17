import 'package:freezed_annotation/freezed_annotation.dart';

part 'muscle_group_model.freezed.dart';
part 'muscle_group_model.g.dart';

@freezed
class MuscleGroup with _$MuscleGroup {
  const factory MuscleGroup({
    required int id,
    required String groupName,
  }) = _MuscleGroup;

  factory MuscleGroup.fromJson(Map<String, dynamic> json) => _$MuscleGroupFromJson(json);
}