import 'package:clocktrain/utils/ext/build_context_ext.dart';
import 'package:clocktrain/utils/ext/edge_insets_ext.dart';
import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton(
      {required this.text,
      this.onPressed,
      this.width = 44,
      this.height = 44,
      super.key});

  final void Function()? onPressed;
  final String text;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
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
              ))),
    );
  }
}
