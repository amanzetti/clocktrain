import 'package:clocktrain/domain/api/user_api_imp.dart';
import 'package:clocktrain/data/models/user_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userProvider =
    FutureProvider.autoDispose.family<User?, String>((ref, userId) async {
  try {
    print('Fetching user with ID: $userId');
    final user = await UserApiImp().getUserById(userId);
    print('User fetched: $user');
    return user;
  } catch (e) {
    print('Error fetching user in provider: $e');
    rethrow;
  }
});
