import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutEditorPage extends ConsumerStatefulWidget {
  const WorkoutEditorPage({super.key});

  @override
  ConsumerState<WorkoutEditorPage> createState() => _WorkoutEditorPageState();
}

class _WorkoutEditorPageState extends ConsumerState<WorkoutEditorPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text('WorkoutEditorPage'),
    );
  }
}
