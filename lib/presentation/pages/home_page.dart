import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      children: [
        Text('Home Page'),
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
