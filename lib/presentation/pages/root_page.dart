import 'package:clocktrain/presentation/routes/path.dart';
import 'package:clocktrain/presentation/widgets/atoms/buttons/app_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:clocktrain/domain/providers/user_proivider.dart';

class RootPage extends ConsumerWidget {
  const RootPage({super.key});

  void _onPressed(BuildContext context) {
    context.go(AppPath.DashboardPage);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(userProvider);

    if (userState.isEmpty) {
      ref.read(userProvider.notifier).getUserByIdMock('user123');
    }

    if (userState.isEmpty) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('RootPage'),
          ),
          AppElevatedButton(
              onPressed: () => _onPressed(context), text: 'Go to Sheet Page'),
        ],
      ),
    );
  }
}
