import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:app_shared/widgets/atoms/utils_ui/app_container.dart';
import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton(
      {this.text,
      this.onPressed,
      this.width,
      this.height,
      super.key,
      this.child});

  final void Function()? onPressed;
  final String? text;
  final Widget? child;
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
          child: _buildChild(context)),
    );
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
