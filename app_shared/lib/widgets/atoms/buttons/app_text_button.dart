import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:app_shared/widgets/atoms/utils_ui/app_container.dart';
import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton(
      {super.key,
      this.onPressed,
      this.text,
      this.child,
      this.width,
      this.height});

  ///Data Properties
  final String? text;
  final Widget? child;

  ///Functional Properties
  final void Function()? onPressed;

  ///UI Properties
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      width: width,
      height: height,
      child: TextButton(
        ///Functional Properties
        onPressed: onPressed,

        ///UI Properties
        ///Data Properties
        child: _buildChild(context) ?? const Text('insert text here'),
      ),
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
