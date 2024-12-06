import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:app_shared/utils/ext/global_key_ext.dart';
import 'package:flutter/material.dart';

class SquareIconButton extends StatelessWidget {
  const SquareIconButton({
    required this.icon,
    this.backgroundColor,
    this.iconColor,
    this.gKey,
    this.onPressed,
    this.squareSideLength,
    super.key,
  }) : assert((gKey != null) != (squareSideLength != null),
            'Only one of gKey or squareSideLength must be provided.');

  final GlobalKey? gKey;
  final VoidCallback? onPressed;
  final double? squareSideLength;
  final Color? backgroundColor;
  final Color? iconColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: squareSideLength ?? gKey?.getHeight(),
      width: squareSideLength ?? gKey?.getHeight(),
      color: backgroundColor ??
          context.colorScheme
              .primary,
      child: IconButton(
        icon: Icon(
          icon,
          color: iconColor ??
              context.colorScheme
                  .onPrimary,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
