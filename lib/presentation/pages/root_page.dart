import 'package:clocktrain/presentation/routes/path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class RootPage extends ConsumerWidget {
  const RootPage({super.key});

  void _onPressed(BuildContext context) {
    context.go(AppPath.homePage);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('RootPage'),
          ),
          ElevatedButton(
              onPressed: () => _onPressed(context),
              child: const Text('Go to Sheet Page')),
        ],
      ),
    );
  }
}
