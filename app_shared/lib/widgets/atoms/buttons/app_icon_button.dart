import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton(
      {super.key,
      this.onPressed,
      this.child,
      this.size,
      this.backgroundColor,
      this.borderRadius,
      this.width,
      this.height});

  final void Function()? onPressed;
  final Size? size;
  final BorderRadius? borderRadius;
  final Color? backgroundColor;
  final double? width;
  final double? height;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, icon: child ?? const SizedBox());
  }
}
