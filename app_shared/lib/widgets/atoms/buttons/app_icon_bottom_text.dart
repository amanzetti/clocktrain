import 'package:flutter/material.dart';

class AppIconBottomTextButton extends StatelessWidget {
  const AppIconBottomTextButton({
    required this.text,
    required this.icon,
    super.key,
    this.onPressed,
    this.size,
    this.backgroundColor,
    this.borderRadius,
    this.width,
    this.height,
  });

  final void Function()? onPressed;
  final Size? size;
  final BorderRadius? borderRadius;
  final Color? backgroundColor;
  final double? width;
  final double? height;
  final String text;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon,
            Text(text),
          ],
        ));
  }
}
