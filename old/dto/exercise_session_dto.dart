import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:clocktrain/domain/entities/exercise_session_entity.dart' as domain;
import 'package:clocktrain/data/local/app_database.dart' as db;
import 'exercise_dto.dart';
import 'tag_dto.dart';

part 'exercise_session_dto.freezed.dart';
part 'exercise_session_dto.g.dart';

@freezed
class ExerciseSessionDto with _$ExerciseSessionDto {
  const factory ExerciseSessionDto({
    required int id,
    ExerciseDto? exercise,
    int? weight,
    int? rest,
    int? duration,
    required List<TagDto> tags,
  }) = _ExerciseSessionDto;

  factory ExerciseSessionDto.fromJson(Map<String, dynamic> json) => _$ExerciseSessionDtoFromJson(json);

  factory ExerciseSessionDto.fromRealm(db.ExerciseSession exerciseSession) {
    return ExerciseSessionDto(
      id: exerciseSession.id,
      exercise: exerciseSession.exercise != null ? ExerciseDto.fromRealm(exerciseSession.exercise!) : null,
      weight: exerciseSession.weight,
      rest: exerciseSession.rest,
      duration: exerciseSession.duration,
      tags: exerciseSession.tags.map((tag) => TagDto.fromRealm(tag)).toList(),
    );
  }

  db.ExerciseSession toRealm() {
    return db.ExerciseSession(
      id: id,
      exercise: exercise?.toRealm(),
      weight: weight,
      rest: rest,
      duration: duration,
      tags: tags.map((tag) => tag.toRealm()).toList(),
    );
  }

  factory ExerciseSessionDto.fromDomain(domain.ExerciseSession exerciseSession) {
    return ExerciseSessionDto(
      id: exerciseSession.id,
      exercise: exerciseSession.exercise != null ? ExerciseDto.fromDomain(exerciseSession.exercise!) : null,
      weight: exerciseSession.weight,
      rest: exerciseSession.rest,
      duration: exerciseSession.duration,
      tags: exerciseSession.tags.map((tag) => TagDto.fromDomain(tag)).toList(),
    );
  }

  domain.ExerciseSession toDomain() {
    return domain.ExerciseSession(
      id: id,
      exercise: exercise?.toDomain(),
      weight: weight,
      rest: rest,
      duration: duration,
      tags: tags.map((tag) => tag.toDomain()).toList(),
    );
  }
}