import 'package:clocktrain/data/local/app_database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'muscle_group_dto.freezed.dart';
part 'muscle_group_dto.g.dart';

@freezed
class MuscleGroupDto with _$MuscleGroupDto {
  const factory MuscleGroupDto({
    required int id,
    required String groupName,
  }) = _MuscleGroupDto;

  factory MuscleGroupDto.fromJson(Map<String, dynamic> json) =>
      _$MuscleGroupDtoFromJson(json);

  factory MuscleGroupDto.fromEntity(MuscleGroup entity) {
    return MuscleGroupDto(
      id: entity.id,
      groupName: entity.groupName,
    );
  }
}

extension MuscleGroupDtoX on MuscleGroupDto {
  MuscleGroup toEntity() {
    return MuscleGroup(
      id: id,
      groupName: groupName,
    );
  }
}
