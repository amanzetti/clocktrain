import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:app_shared/widgets/atoms/utils_ui/app_container.dart';
import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton(
      {required this.text, this.onPressed, this.width, this.height, super.key});

  final void Function()? onPressed;
  final String text;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
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
