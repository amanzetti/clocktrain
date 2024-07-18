import 'package:clocktrain/presentation/widgets/clock.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutPage extends ConsumerWidget {
  const WorkoutPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        child: Column(
      children: [
        WorkTimeCountdown(),
      ],
    ));
  }
}
