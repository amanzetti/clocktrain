import 'package:clocktrain/data/datasource/abtraction/local_db_datasource.dart';
import 'package:clocktrain/domain/entities/workout_entity.dart';
import 'package:clocktrain/domain/repositories/workout_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:clocktrain/data/local/dto/workout_dto.dart';

class WorkoutRepositoryImpl implements WorkoutRepository {
  final Ref ref;
  final LocalDbDatasource localDbDatasource;

  WorkoutRepositoryImpl(this.ref, {required this.localDbDatasource});

  @override
  Future<List<Workout>> getAllWorkouts() async {
    final result = await localDbDatasource.getAllWorkouts();
    return result.fold(
      (error) => throw Exception('Error fetching workouts: $error'),
      (workoutDtos) => workoutDtos.map((workoutDto) => Workout(
        id: workoutDto.id,
        userId: workoutDto.userId,
        name: workoutDto.name,
        description: workoutDto.description,
        dateCreated: workoutDto.dateCreated,
      )).toList(),
    );
  }

  @override
  Future<Workout> getWorkoutById(int id) async {
    final result = await localDbDatasource.getWorkoutById(id);
    return result.fold(
      (error) => throw Exception('Error fetching workout: $error'),
      (workoutDto) => Workout(
        id: workoutDto.id,
        userId: workoutDto.userId,
        name: workoutDto.name,
        description: workoutDto.description,
        dateCreated: workoutDto.dateCreated,
      ),
    );
  }

  @override
  Future<void> addWorkout(Workout workout) async {
    final workoutDto = WorkoutDto(
      id: workout.id,
      userId: workout.userId,
      name: workout.name,
      description: workout.description,
      dateCreated: workout.dateCreated,
    );
    final result = await localDbDatasource.insertWorkout(workoutDto);
    result.fold(
      (error) => throw Exception('Error adding workout: $error'),
      (_) => null,
    );
  }

  @override
  Future<void> updateWorkout(Workout workout) async {
    final workoutDto = WorkoutDto(
      id: workout.id,
      userId: workout.userId,
      name: workout.name,
      description: workout.description,
      dateCreated: workout.dateCreated,
    );
    final result = await localDbDatasource.updateWorkout(workoutDto);
    result.fold(
      (error) => throw Exception('Error updating workout: $error'),
      (_) => null,
    );
  }

  @override
  Future<void> deleteWorkout(int id) async {
    final result = await localDbDatasource.deleteWorkout(id);
    result.fold(
      (error) => throw Exception('Error deleting workout: $error'),
      (_) => null,
    );
  }
}