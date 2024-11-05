import 'package:clocktrain/domain/api/user_api_imp.dart';
import 'package:clocktrain/domain/models/user_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userProvider =
    FutureProvider.autoDispose.family<User, String>((ref, userId) async {
  return await UserApiImp().getUserById(userId);
});
