import 'package:app_shared/app_shared.dart';
import 'package:flutter/material.dart';

class AppTag extends StatelessWidget {
  const AppTag({required this.label, super.key});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: AppDimesnionsEdgeInsetsExt.smallAll,
        height: 34,
        decoration: AppTheme.boxDecorationOutlined(context),
        child: Padding(
          padding: AppDimesnionsEdgeInsetsExt.smallHorizontal,
          child: Text(label,
              style: context.textTheme.labelSmall!
                  .copyWith(color: context.colorScheme.onSurface)),
        ));
  }
}
