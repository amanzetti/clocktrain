import 'package:clocktrain/data/datasource/abtraction/local_db_datasource.dart';
import 'package:clocktrain/domain/entities/muscle_group_entity.dart';
import 'package:clocktrain/domain/repositories/muscle_group_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:clocktrain/data/local/dto/muscle_group_dto.dart';

class MuscleGroupRepositoryImpl implements MuscleGroupRepository {
  final Ref ref;
  final LocalDbDatasource localDbDatasource;

  MuscleGroupRepositoryImpl(this.ref, {required this.localDbDatasource});

  @override
  Future<List<MuscleGroup>> getAllMuscleGroups() async {
    final result = await localDbDatasource.getAllMuscleGroups();
    return result.fold(
      (error) => throw Exception('Error fetching muscle groups: $error'),
      (muscleGroupDtos) => muscleGroupDtos.map((muscleGroupDto) => MuscleGroup(
        id: muscleGroupDto.id,
        groupName: muscleGroupDto.groupName,
      )).toList(),
    );
  }

  @override
  Future<MuscleGroup> getMuscleGroupById(int id) async {
    final result = await localDbDatasource.getMuscleGroupById(id);
    return result.fold(
      (error) => throw Exception('Error fetching muscle group: $error'),
      (muscleGroupDto) => MuscleGroup(
        id: muscleGroupDto.id,
        groupName: muscleGroupDto.groupName,
      ),
    );
  }

  @override
  Future<void> addMuscleGroup(MuscleGroup muscleGroup) async {
    final muscleGroupDto = MuscleGroupDto(
      id: muscleGroup.id,
      groupName: muscleGroup.groupName,
    );
    final result = await localDbDatasource.insertMuscleGroup(muscleGroupDto);
    result.fold(
      (error) => throw Exception('Error adding muscle group: $error'),
      (_) => null,
    );
  }

  @override
  Future<void> updateMuscleGroup(MuscleGroup muscleGroup) async {
    final muscleGroupDto = MuscleGroupDto(
      id: muscleGroup.id,
      groupName: muscleGroup.groupName,
    );
    final result = await localDbDatasource.updateMuscleGroup(muscleGroupDto);
    result.fold(
      (error) => throw Exception('Error updating muscle group: $error'),
      (_) => null,
    );
  }

  @override
  Future<void> deleteMuscleGroup(int id) async {
    final result = await localDbDatasource.deleteMuscleGroup(id);
    result.fold(
      (error) => throw Exception('Error deleting muscle group: $error'),
      (_) => null,
    );
  }
}