import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:app_shared/widgets/atoms/utils_ui/spacer_sized_box.dart';
import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({
    this.text = 'or',
    super.key,
    this.height,
    this.thickness,
    this.indent,
    this.endIndent,
    this.color,
  });

  ///Data Properties
  final String text;

  ///Styling and UI Properties
  final double? height;
  final double? thickness;
  final double? indent;
  final double? endIndent;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            child: Divider(
          height: height,
          thickness: thickness,
          indent: indent,
          endIndent: endIndent,
          color: color,
        )),
        const HorizontalSmallSpacer(),
        Text(
          text,
          style: context.textTheme.bodyLarge,
        ),
        const HorizontalSmallSpacer(),
        Expanded(
            child: Divider(
          height: height,
          thickness: thickness,
          indent: indent,
          endIndent: endIndent,
          color: color,
        ))
      ],
    );
  }
}
