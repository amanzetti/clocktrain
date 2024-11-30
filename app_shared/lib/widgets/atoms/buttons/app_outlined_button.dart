import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:flutter/material.dart';

class AppOutlinedButton extends StatelessWidget {
  const AppOutlinedButton(
      {super.key,
      this.onPressed,
      required this.text,
      this.child,
      this.width,
      this.height});

  final void Function()? onPressed;
  final String? text;
  final Widget? child;
  final double? width;
  final double? height;

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
        child: _buildChild(context));
  }

  Widget? _buildChild(BuildContext context) {
    if (text != null) {
      return Text(text!,
          style: context.textTheme.labelLarge?.copyWith(
            color: context.colorScheme.onPrimary,
          ));
    } else {
      return child;
    }
  }
}
