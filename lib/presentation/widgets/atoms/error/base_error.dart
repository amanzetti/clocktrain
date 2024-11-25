import 'package:flutter/material.dart';

class BaseError extends StatelessWidget {
  const BaseError({super.key, this.error, this.stackTrace});

  final String? error;
  final StackTrace? stackTrace;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [Text('Error: $error'), Text('Stack Trace: $stackTrace')]);
  }
}
