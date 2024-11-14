import 'package:clocktrain/utils/ext/build_context_ext.dart';
import 'package:flutter/material.dart';

class AppTextFiled extends StatelessWidget {
  final TextEditingController controller;
  final bool enabled;
  final EdgeInsets? padding;
  final bool readOnly;
  final void Function()? onTap;

  const AppTextFiled({
    required this.controller,
    this.enabled = true,
    this.padding,
    this.readOnly = false,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0),
      child: TextField(
        readOnly: readOnly,
        enabled: enabled,
        onTap: onTap,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          fillColor: enabled
              ? context.colorScheme.primary
              : context.colorScheme.surface,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          counterText: '',
          contentPadding: EdgeInsets.zero,
        ),
        controller: controller,
        style: context.textTheme.labelLarge?.copyWith(
          color: enabled
              ? context.colorScheme.onPrimary
              : context.colorScheme.onSurface,
        ),
      ),
    );
  }
}
