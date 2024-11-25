import 'package:clocktrain/data/di/di_repository.dart';
import 'package:clocktrain/domain/entities/user_entity.dart';
import 'package:clocktrain/domain/repositories/user_repository.dart';
import 'package:clocktrain/utils/enum/common_error.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GetCurrentUserUseCase {
  final UserRepository userRepository;

  GetCurrentUserUseCase(this.userRepository);

  Future<Either<CommonError, User>> call(int userId) async {
    return await userRepository.getUserById(userId);
  }
}

// final getUserUseCaseProvider = Provider<GetUserUseCase>((ref) {
//   final userRepository = ref.read(userRepositoryProvider);
//   return GetUserUseCase(userRepository);
// });
