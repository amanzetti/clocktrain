import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:flutter/material.dart';

class AppTextFiled extends StatelessWidget {
  final TextEditingController? controller;
  final bool enabled;
  final EdgeInsets? padding;
  final bool readOnly;
  final void Function()? onTap;
  final String? labelText;

  const AppTextFiled({
    this.controller,
    this.enabled = true,
    this.padding,
    this.readOnly = false,
    this.onTap,
    this.labelText,
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
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          labelText: labelText,
          fillColor: enabled
              ? context.colorScheme.primary
              : context.colorScheme.surface,
          // filled: true,
          floatingLabelStyle: context.textTheme.bodyMedium?.copyWith(
            color: enabled
                ? context.colorScheme.onPrimary
                : context.colorScheme.onSurface,
          ),
          border: UnderlineInputBorder(
              borderSide: BorderSide(color: context.colorScheme.onPrimary)),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: context.colorScheme.onPrimary)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: context.colorScheme.onPrimary)),
          errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: context.colorScheme.onError)),

          counterText: '',
          contentPadding: EdgeInsets.zero,
        ),
        cursorColor: context.colorScheme.onPrimary,
        controller: controller,
        style: context.textTheme.bodyMedium?.copyWith(
          color: enabled
              ? context.colorScheme.onPrimary
              : context.colorScheme.onSurface,
        ),
      ),
    );
  }
}
