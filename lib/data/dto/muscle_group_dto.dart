import 'package:freezed_annotation/freezed_annotation.dart';

part 'muscle_group_dto.freezed.dart';

@freezed
class MuscleGroupDto with _$MuscleGroupDto {
  const factory MuscleGroupDto({
    required int id,
    required String groupName,
  }) = _MuscleGroupDto;

  factory MuscleGroupDto.fromJson(Map<String, dynamic> json) => _$MuscleGroupDtoFromJson(json);
}