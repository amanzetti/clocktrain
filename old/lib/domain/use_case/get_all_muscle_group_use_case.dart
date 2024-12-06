import 'package:clocktrain/domain/entities/muscle_group_entity.dart';
import 'package:clocktrain/domain/repositories/muscle_group_repository.dart';
import 'package:clocktrain/app_shared/utils/enum/common_error.dart';
import 'package:dartz/dartz.dart';

class GetAllMuscleGroupUseCase {
  final MuscleGroupRepository _muscleGroupRepository;

  const GetAllMuscleGroupUseCase(this._muscleGroupRepository);

  Future<Either<CommonError, List<MuscleGroup>>> call() async {
      return await _muscleGroupRepository.getAllMuscleGroups();
  }
}
