import 'package:clocktrain/data/local/tables/exercise_table.dart';
import 'package:drift/drift.dart';
import 'package:clocktrain/data/local/app_database.dart';
import 'package:clocktrain/data/local/dto/exercise_dto.dart';
import 'package:clocktrain/utils/enum/common_error.dart';
import 'package:dartz/dartz.dart';

part 'exercise_dao.g.dart';

@DriftAccessor(tables: [Exercises])
class ExerciseDao extends DatabaseAccessor<AppDatabase> with _$ExerciseDaoMixin {
  ExerciseDao(super.db);

  Future<Either<CommonError, List<ExerciseDto>>> getAllExercises() async {
    try {
      final exercises = await select(db.exercises).get();
      final exerciseDtos = exercises.map((exercise) => ExerciseDto(
        id: exercise.id,
        name: exercise.name,
        description: exercise.description ?? '',
        videoUrl: exercise.videoUrl,
        imageUrl: exercise.imageUrl,
        difficultyLevel: exercise.difficultyLevel.toString(),
      )).toList();
      return Right(exerciseDtos);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, ExerciseDto>> getExerciseById(int id) async {
    try {
      final exercise = await (select(db.exercises)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
      if (exercise != null) {
        return Right(ExerciseDto(
          id: exercise.id,
          name: exercise.name,
          description: exercise.description ?? '',
          videoUrl: exercise.videoUrl,
          imageUrl: exercise.imageUrl,
          difficultyLevel: exercise.difficultyLevel.toString(),
        ));
      } else {
        return const Left(CommonError.notFound);
      }
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, void>> insertExercise(ExerciseDto exerciseDto) async {
    try {
      await into(db.exercises).insert(ExercisesCompanion.insert(
        name: (exerciseDto.name),
        description: Value(exerciseDto.description),
        videoUrl: Value(exerciseDto.videoUrl),
        imageUrl: Value(exerciseDto.imageUrl),
        difficultyLevel: (int.parse(exerciseDto.difficultyLevel)),
      ));
      return const Right(null);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, void>> updateExercise(ExerciseDto exerciseDto) async {
    try {
      await (update(db.exercises)..where((tbl) => tbl.id.equals(exerciseDto.id)))
          .write(ExercisesCompanion(
            name: Value(exerciseDto.name),
            description: Value(exerciseDto.description),
            videoUrl: Value(exerciseDto.videoUrl),
            imageUrl: Value(exerciseDto.imageUrl),
            difficultyLevel: Value(int.parse(exerciseDto.difficultyLevel)),
          ));
      return const Right(null);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, void>> deleteExercise(int id) async {
    try {
      await (delete(db.exercises)..where((tbl) => tbl.id.equals(id))).go();
      return const Right(null);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }
}