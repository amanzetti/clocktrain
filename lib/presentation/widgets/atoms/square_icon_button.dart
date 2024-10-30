import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:clocktrain/utils/ext/global_key_ext.dart';

class SquareIconButton extends ConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: squareSideLength ?? gKey?.getHeight(),
      width: squareSideLength ?? gKey?.getHeight(),
      color: backgroundColor,
      child: IconButton(
        icon: Icon(icon, color: iconColor),
        onPressed: onPressed,
      ),
    );
  }
}
