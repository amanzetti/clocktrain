import 'package:clocktrain/data/datasource/abtraction/local_db_datasource.dart';
import 'package:clocktrain/domain/entities/workout_set_entity.dart';
import 'package:clocktrain/domain/repositories/workout_set_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:clocktrain/data/local/dto/workout_set_dto.dart';

class WorkoutSetRepositoryImpl implements WorkoutSetRepository {
  final Ref ref;
  final LocalDbDatasource localDbDatasource;

  WorkoutSetRepositoryImpl(this.ref, {required this.localDbDatasource});

  @override
  Future<List<WorkoutSet>> getAllWorkoutSets() async {
    final result = await localDbDatasource.getAllWorkoutSets();
    return result.fold(
      (error) => throw Exception('Error fetching workout sets: $error'),
      (workoutSetDtos) => workoutSetDtos.map((workoutSetDto) => WorkoutSet(
        id: workoutSetDto.id,
        workoutExerciseId: workoutSetDto.workoutExerciseId,
        setNumber: workoutSetDto.setNumber,
        reps: workoutSetDto.reps,
        weight: workoutSetDto.weight,
        restTime: workoutSetDto.restTime,
      )).toList(),
    );
  }

  @override
  Future<WorkoutSet> getWorkoutSetById(int id) async {
    final result = await localDbDatasource.getWorkoutSetById(id);
    return result.fold(
      (error) => throw Exception('Error fetching workout set: $error'),
      (workoutSetDto) => WorkoutSet(
        id: workoutSetDto.id,
        workoutExerciseId: workoutSetDto.workoutExerciseId,
        setNumber: workoutSetDto.setNumber,
        reps: workoutSetDto.reps,
        weight: workoutSetDto.weight,
        restTime: workoutSetDto.restTime,
      ),
    );
  }

  @override
  Future<void> addWorkoutSet(WorkoutSet workoutSet) async {
    final workoutSetDto = WorkoutSetDto(
      id: workoutSet.id,
      workoutExerciseId: workoutSet.workoutExerciseId,
      setNumber: workoutSet.setNumber,
      reps: workoutSet.reps,
      weight: workoutSet.weight,
      restTime: workoutSet.restTime,
    );
    final result = await localDbDatasource.insertWorkoutSet(workoutSetDto);
    result.fold(
      (error) => throw Exception('Error adding workout set: $error'),
      (_) => null,
    );
  }

  @override
  Future<void> updateWorkoutSet(WorkoutSet workoutSet) async {
    final workoutSetDto = WorkoutSetDto(
      id: workoutSet.id,
      workoutExerciseId: workoutSet.workoutExerciseId,
      setNumber: workoutSet.setNumber,
      reps: workoutSet.reps,
      weight: workoutSet.weight,
      restTime: workoutSet.restTime,
    );
    final result = await localDbDatasource.updateWorkoutSet(workoutSetDto);
    result.fold(
      (error) => throw Exception('Error updating workout set: $error'),
      (_) => null,
    );
  }

  @override
  Future<void> deleteWorkoutSet(int id) async {
    final result = await localDbDatasource.deleteWorkoutSet(id);
    result.fold(
      (error) => throw Exception('Error deleting workout set: $error'),
      (_) => null,
    );
  }
}