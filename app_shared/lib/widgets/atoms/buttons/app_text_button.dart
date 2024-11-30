import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton(
      {super.key,
      this.onPressed,
      this.text,
      this.child,
      this.width,
      this.height});

  final void Function()? onPressed;
  final String? text;
  final Widget? child;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Text Button'),
    );
  }
}
