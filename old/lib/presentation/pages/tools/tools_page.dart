import 'package:clocktrain/app_widgetbook/lib/widgets/molecules/clock.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ToolsPage extends ConsumerWidget {
  const ToolsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      children: [
        WorkTimeCountdown(),
      ],
    );
  }
}
