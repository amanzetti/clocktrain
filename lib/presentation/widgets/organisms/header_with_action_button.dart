import 'package:clocktrain/presentation/themes/app_asset.dart';
import 'package:clocktrain/presentation/widgets/atoms/buttons/notch_rounded_button.dart';
import 'package:clocktrain/utils/ext/build_context_ext.dart';
import 'package:flutter/material.dart';

class HeaderWithActionButton extends StatelessWidget {
  final String? title;
  final Color? color;
  final void Function()? onTap;
  final double? height;

  const HeaderWithActionButton(
      {super.key, this.title, this.color, this.onTap, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title ?? '', style: context.textTheme.headlineSmall),
            NotchRoundedButton(
              text: 'Add',
              leftIcon: AppAsset().addSvg(context),
              onTap: onTap,
            )
          ],
        ));
  }
}
