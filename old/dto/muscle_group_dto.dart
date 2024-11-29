import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:clocktrain/domain/entities/muscle_group_entity.dart';

part 'muscle_group_dto.freezed.dart';
part 'muscle_group_dto.g.dart';

@freezed
class MuscleGroupDto with _$MuscleGroupDto {
  const factory MuscleGroupDto({
    int? id,
    required String name,
  }) = _MuscleGroupDto;

  factory MuscleGroupDto.fromJson(Map<String, dynamic> json) => _$MuscleGroupDtoFromJson(json);

  factory MuscleGroupDto.fromDomain(MuscleGroup muscleGroup, int? id) {
    return MuscleGroupDto(
      id: id,
      name: muscleGroup.name,
    );
  }

  MuscleGroup toDomain() {
    return MuscleGroup(
      id: id,
      name: name,
    );
  }
}