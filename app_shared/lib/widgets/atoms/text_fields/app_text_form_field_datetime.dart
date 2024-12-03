import 'package:app_shared/widgets/atoms/text_fields/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:app_shared/utils/ext/date_time_ext.dart';

class AppTextFormFieldDatetime extends StatefulWidget {
  const AppTextFormFieldDatetime(
      {required this.onSavedDateTime,
      this.enabled = true,
      this.readOnly = false,
      super.key,
      this.controller,
      this.padding,
      this.onTap,
      this.onSaved,
      this.validator,
      this.labelText,
      this.initialValue});

  final TextEditingController? controller;
  final bool enabled;
  final EdgeInsets? padding;
  final bool readOnly;
  final void Function()? onTap;
  final void Function(String?)? onSaved;
  final void Function(DateTime) onSavedDateTime;
  final String? Function(String?)? validator;
  final String? labelText;
  final DateTime? initialValue;

  @override
  State<AppTextFormFieldDatetime> createState() =>
      _AppTextFormFieldDatetimeState();
}

class _AppTextFormFieldDatetimeState extends State<AppTextFormFieldDatetime> {
  late DateTime? birthDate;

  @override
  void initState() {
    birthDate = widget.initialValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      controller: widget.controller,
      enabled: widget.enabled,
      padding: widget.padding,
      readOnly: true,
      onTap: () async {
        var data =
            await _selectDate(context, saveDateTime: widget.onSavedDateTime);
        setState(() {
          if (data != null) {
            birthDate = data;
            widget.onSavedDateTime.call(data);
          }
        });
      },
      onSaved: widget.onSaved,
      validator: widget.validator,
      labelText: widget.labelText,
      // initialValue: (birthDate != null) ? birthDate!.toddMMMyyyyString() : '',
    );
  }

  Future<DateTime?> _selectDate(
    BuildContext context, {
    required void Function(DateTime birthDate) saveDateTime,
    DateTime? initDate,
  }) async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: initDate ?? DateTime.now(),
      firstDate: DateTime(DateTime.now().year - 100),
      lastDate: DateTime(DateTime.now().year + 100),
    );
    return selectedDate;
  }
}
