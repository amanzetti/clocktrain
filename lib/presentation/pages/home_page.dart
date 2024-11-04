import 'package:clocktrain/utils/ext/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  Widget _buildUserCard(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 100,
        width: context.mq.size.width,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('USER'),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressionCard(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 100,
        width: context.mq.size.width,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('PROGRESSION'),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        _buildUserCard(context),
        _buildProgressionCard(context),
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
