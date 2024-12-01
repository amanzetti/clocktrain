import 'package:app_shared/utils/const/app_dimensions.dart';
import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:app_shared/widgets/atoms/utils_ui/app_container.dart';
import 'package:flutter/material.dart';

class AppOutlinedButton extends StatelessWidget {
  const AppOutlinedButton(
      {this.text,
      super.key,
      this.onPressed,
      this.child,
      this.width,
      this.height});

  ///Data Properties
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
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: context.colorScheme.surface,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppDimensions.borderRadius8),
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
            color: context.colorScheme.onSurface,
          ));
    } else {
      return child;
    }
  }
}
