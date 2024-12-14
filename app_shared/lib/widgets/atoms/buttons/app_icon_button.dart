import 'package:app_shared/utils/ext/theme_ext.dart';
import 'package:app_shared/utils/zzz_export_utils.dart';
import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton._({
    required this.child,
    required this.hasBox,
    this.onPressed,
    this.width,
    this.height,
    this.backgroundColor,
    this.borderColor,
    super.key,
  });

  // Factory per pulsante circolare
  factory AppIconButton.iconCircleBox({
    required Widget child,
    void Function()? onPressed,
    double? width,
    double? height,
    Key? key,
    Color? backgroundColor,
    Color? borderColor,
  }) {
    return AppIconButton._(
      onPressed: onPressed,
      width: width,
      height: height,
      backgroundColor: backgroundColor,
      borderColor: borderColor,
      hasBox: true,
      key: key,
      child: child,
    );
  }

  // Factory per semplice IconButton
  factory AppIconButton.icon({
    required Widget child,
    void Function()? onPressed,
    double? width,
    double? height,
    Key? key,
  }) {
    return AppIconButton._(
      onPressed: onPressed,
      width: width, // Dimensioni standard
      height: height,
      key: key,
      hasBox: false,
      child: child, // Nessuno sfondo
    );
  }

  final Widget child;
  final void Function()? onPressed;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? borderColor;
  final bool hasBox;

  @override
  Widget build(BuildContext context) {
    return _buildButton(context);
  }

  Widget _buildButton(BuildContext context) {
    if (hasBox) {
      return Container(
        height: height,
        width: width,
        decoration: context.theme.circleBox(context).copyWith(
              color: _getBackgroundColor(context).withOpacity(0.8),
              border: Border.all(color: _getBorderColor(context), width: 2),
            ),
        child: IconButton(
          onPressed: onPressed,
          icon: child,
        ),
      );
    } else {
      return IconButton(
        onPressed: onPressed,
        icon: child,
      );
    }
  }

  Color _getBackgroundColor(BuildContext context) {
    return backgroundColor ?? context.colorScheme.onPrimary;
  }

  Color _getBorderColor(BuildContext context) {
    return borderColor ?? context.colorScheme.primary;
  }
}
