import 'package:clocktrain/utils/ext/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../config/flavors/flavors.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(F.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              // 'Hell ${F.title}',
              context.loc.helloWorld,
            ),
          ],
        ),
      ),
    );
  }
}
