import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const Text('Home Page'),
        ElevatedButton(
            onPressed: () => {
                  FocusNode().unfocus(),
                },
            child: const Text('Go to Sheet Page')),
      ],
    );
  }
}

class Exercise {
  final String name;
  final int rep;
  final int set;
  final String videoUrl;

  Exercise({
    required this.name,
    required this.rep,
    required this.set,
    required this.videoUrl,
  });
}
