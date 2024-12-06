import 'package:clocktrain/domain/entities/exercise_entity.dart';
import 'package:clocktrain/domain/repositories/exercise_repository.dart';
import 'package:clocktrain/app_shared/utils/enum/common_error.dart';
import 'package:dartz/dartz.dart';

class CreateExerciseUseCase {
  final ExerciseRepository _exerciseRepository;

  CreateExerciseUseCase(this._exerciseRepository);

  Future<Either<CommonError, void>> call(Exercise exercise) async {
    try{
      await _exerciseRepository.addExercise(exercise);
      return right(null);
    }catch(e){
      return left(CommonError.unknown);
    }
  }
}