import 'package:clocktrain/data/datasource/abtraction/local_db_datasource.dart';
import 'package:clocktrain/domain/entities/workout_exercise_entity.dart';
import 'package:clocktrain/domain/repositories/workout_exercise_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:clocktrain/data/local/dto/workout_exercise_dto.dart';

class WorkoutExerciseRepositoryImpl implements WorkoutExerciseRepository {
  final Ref ref;
  final LocalDbDatasource localDbDatasource;

  WorkoutExerciseRepositoryImpl(this.ref, {required this.localDbDatasource});

  @override
  Future<List<WorkoutExercise>> getAllWorkoutExercises() async {
    final result = await localDbDatasource.getAllWorkoutExercises();
    return result.fold(
      (error) => throw Exception('Error fetching workout exercises: $error'),
      (workoutExerciseDtos) => workoutExerciseDtos.map((workoutExerciseDto) => WorkoutExercise(
        id: workoutExerciseDto.id,
        workoutId: workoutExerciseDto.workoutId,
        exerciseId: workoutExerciseDto.exerciseId,
        order: workoutExerciseDto.order,
        supersetGroup: workoutExerciseDto.supersetGroup,
        notes: workoutExerciseDto.notes,
      )).toList(),
    );
  }

  @override
  Future<WorkoutExercise> getWorkoutExerciseById(int id) async {
    final result = await localDbDatasource.getWorkoutExerciseById(id);
    return result.fold(
      (error) => throw Exception('Error fetching workout exercise: $error'),
      (workoutExerciseDto) => WorkoutExercise(
        id: workoutExerciseDto.id,
        workoutId: workoutExerciseDto.workoutId,
        exerciseId: workoutExerciseDto.exerciseId,
        order: workoutExerciseDto.order,
        supersetGroup: workoutExerciseDto.supersetGroup,
        notes: workoutExerciseDto.notes,
      ),
    );
  }

  @override
  Future<void> addWorkoutExercise(WorkoutExercise workoutExercise) async {
    final workoutExerciseDto = WorkoutExerciseDto(
      id: workoutExercise.id,
      workoutId: workoutExercise.workoutId,
      exerciseId: workoutExercise.exerciseId,
      order: workoutExercise.order,
      supersetGroup: workoutExercise.supersetGroup,
      notes: workoutExercise.notes,
    );
    final result = await localDbDatasource.insertWorkoutExercise(workoutExerciseDto);
    result.fold(
      (error) => throw Exception('Error adding workout exercise: $error'),
      (_) => null,
    );
  }

  @override
  Future<void> updateWorkoutExercise(WorkoutExercise workoutExercise) async {
    final workoutExerciseDto = WorkoutExerciseDto(
      id: workoutExercise.id,
      workoutId: workoutExercise.workoutId,
      exerciseId: workoutExercise.exerciseId,
      order: workoutExercise.order,
      supersetGroup: workoutExercise.supersetGroup,
      notes: workoutExercise.notes,
    );
    final result = await localDbDatasource.updateWorkoutExercise(workoutExerciseDto);
    result.fold(
      (error) => throw Exception('Error updating workout exercise: $error'),
      (_) => null,
    );
  }

  @override
  Future<void> deleteWorkoutExercise(int id) async {
    final result = await localDbDatasource.deleteWorkoutExercise(id);
    result.fold(
      (error) => throw Exception('Error deleting workout exercise: $error'),
      (_) => null,
    );
  }
}