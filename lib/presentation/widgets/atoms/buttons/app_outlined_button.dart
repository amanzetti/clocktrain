import 'package:clocktrain/utils/ext/build_context_ext.dart';
import 'package:flutter/material.dart';

class AppOutlinedButton extends StatelessWidget {
  const AppOutlinedButton({super.key, this.onPressed, required this.text});

  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: context.colorScheme.secondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: BorderSide(color: context.colorScheme.secondary),
          ),
        ),
        onPressed: onPressed,
        child: Text(text,
            style: context.textTheme.labelLarge?.copyWith(
              color: context.colorScheme.onSecondary,
            )));
  }
}
