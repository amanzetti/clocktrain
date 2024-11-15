import 'package:clocktrain/utils/ext/build_context_ext.dart';
import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({required this.text, this.onPressed, super.key});

  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: context.colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: BorderSide(color: context.colorScheme.primary),
          ),
        ),
        onPressed: onPressed,
        child: Text(text,
            style: context.textTheme.labelLarge?.copyWith(
              color: context.colorScheme.onPrimary,
            )));
  }
}
