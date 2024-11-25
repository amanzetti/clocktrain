import 'dart:math';

import 'package:clocktrain/data/di/di_repository.dart';
import 'package:clocktrain/domain/entities/user_entity.dart';
import 'package:clocktrain/domain/providers/ui/theme_provider.dart';
import 'package:clocktrain/domain/repositories/user_repository.dart';
import 'package:clocktrain/domain/use_case/get_curent_user_use_case.dart';
import 'package:clocktrain/presentation/app_state.dart';
import 'package:clocktrain/utils/ext/future.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppVm extends StateNotifier<AppState> {
  final UserRepository _userRepository;

  AppVm(this._userRepository) : super(const AppState());

  // Future<void> getUserAfterLogin(int userId) async {
  //   try {
  //     GetCurrentUserUseCase(_userRepository).call(userId).foldAsync(
  //           (error) => throw Exception('Error fetching user: $error'),
  //           (user) => state = state.copyWith(loggedUser: user),
  //         );
  //   } catch (e) {
  //     print('Error: $e');
  //   }
  // }

  // void getThemeMode() {
  //   state = state.copyWith(themeMode: ref.watch(themeProvider));
  // }
}

final appVmProvider = StateNotifierProvider<AppVm, AppState>((ref) {
  final userRepository = ref.read(userRepositoryProvider);
  return AppVm(userRepository);
});

// final appVMProvider =
//     NotifierProvider.autoDispose<AppVm, AppState>(() => AppVm());

// final userAppStateProvider = StateProvider.autoDispose<User?>(
//     (ref) => ref.read(appVMProvider).loggedUser);
