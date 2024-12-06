import 'package:app_shared/themes/app_asset.dart';
import 'package:app_shared/widgets/atoms/buttons/notch_rounded_button.dart';
import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:app_shared/widgets/atoms/utils_ui/app_container.dart';
import 'package:flutter/material.dart';

class HeaderWithActionButton extends StatelessWidget {
  const HeaderWithActionButton(
      {super.key, this.title, this.color, this.onTap, this.height});
  final String? title;
  final Color? color;
  final void Function()? onTap;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
        height: height,
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
