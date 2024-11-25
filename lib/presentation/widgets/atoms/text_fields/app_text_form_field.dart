import 'package:clocktrain/utils/ext/build_context_ext.dart';
import 'package:flutter/material.dart';

class AppTextFormFiled extends StatelessWidget {
  final TextEditingController? controller;
  final bool enabled;
  final EdgeInsets? padding;
  final bool readOnly;
  final void Function()? onTap;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final String? labelText;
  final String? initialValue;

  const AppTextFormFiled({
    this.controller,
    this.enabled = true,
    this.padding,
    this.readOnly = false,
    this.onTap,
    this.onSaved,
    this.validator,
    this.labelText,
    this.initialValue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0),
      child: TextFormField(
        initialValue: initialValue,
        readOnly: readOnly,
        enabled: enabled,
        onTap: onTap,
        onSaved: onSaved,
        validator: validator,
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
