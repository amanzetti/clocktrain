import 'package:clocktrain/data/datasource/abtraction/local_db_datasource.dart';
import 'package:clocktrain/domain/entities/exercise_entity.dart';
import 'package:clocktrain/domain/repositories/exercise_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:clocktrain/data/local/dto/exercise_dto.dart';

class ExerciseRepositoryImpl implements ExerciseRepository {
  final Ref ref;
  final LocalDbDatasource localDbDatasource;

  ExerciseRepositoryImpl(this.ref, {required this.localDbDatasource});

  @override
  Future<List<Exercise>> getAllExercises() async {
    final result = await localDbDatasource.getAllExercises();
    return result.fold(
      (error) => throw Exception('Error fetching exercises: $error'),
      (exerciseDtos) => exerciseDtos.map((exerciseDto) => Exercise(
        id: exerciseDto.id,
        name: exerciseDto.name,
        description: exerciseDto.description,
        videoUrl: exerciseDto.videoUrl,
        imageUrl: exerciseDto.imageUrl,
        difficultyLevel: exerciseDto.difficultyLevel,
      )).toList(),
    );
  }

  @override
  Future<Exercise> getExerciseById(int id) async {
    final result = await localDbDatasource.getExerciseById(id);
    return result.fold(
      (error) => throw Exception('Error fetching exercise: $error'),
      (exerciseDto) => Exercise(
        id: exerciseDto.id,
        name: exerciseDto.name,
        description: exerciseDto.description,
        videoUrl: exerciseDto.videoUrl,
        imageUrl: exerciseDto.imageUrl,
        difficultyLevel: exerciseDto.difficultyLevel,
      ),
    );
  }

  @override
  Future<void> addExercise(Exercise exercise) async {
    final exerciseDto = ExerciseDto(
      id: exercise.id,
      name: exercise.name,
      description: exercise.description,
      videoUrl: exercise.videoUrl,
      imageUrl: exercise.imageUrl,
      difficultyLevel: exercise.difficultyLevel,
    );
    final result = await localDbDatasource.insertExercise(exerciseDto);
    result.fold(
      (error) => throw Exception('Error adding exercise: $error'),
      (_) => null,
    );
  }

  @override
  Future<void> updateExercise(Exercise exercise) async {
    final exerciseDto = ExerciseDto(
      id: exercise.id,
      name: exercise.name,
      description: exercise.description,
      videoUrl: exercise.videoUrl,
      imageUrl: exercise.imageUrl,
      difficultyLevel: exercise.difficultyLevel,
    );
    final result = await localDbDatasource.updateExercise(exerciseDto);
    result.fold(
      (error) => throw Exception('Error updating exercise: $error'),
      (_) => null,
    );
  }

  @override
  Future<void> deleteExercise(int id) async {
    final result = await localDbDatasource.deleteExercise(id);
    result.fold(
      (error) => throw Exception('Error deleting exercise: $error'),
      (_) => null,
    );
  }
}