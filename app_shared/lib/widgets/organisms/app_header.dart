import 'package:app_shared/themes/app_asset.dart';
import 'package:app_shared/widgets/atoms/buttons/app_button.dart';
import 'package:app_shared/widgets/atoms/buttons/notch_rounded_button.dart';
import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:app_shared/widgets/atoms/utils_ui/app_container.dart';
import 'package:app_shared/widgets/atoms/utils_ui/spacer_sized_box.dart';
import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  final String? title;
  final Color? color;
  final void Function()? onTap;
  final double? height;

  const AppHeader({super.key, this.title, this.color, this.onTap, this.height});

  @override
  Widget build(BuildContext context) {
    return AppContainer(
        height: height,
        color: color,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Text(title ?? '', style: context.textTheme.headlineSmall),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppButton(
                  style: AppButtonStyle.icon,
                  backgroundColor: Colors.green,
                  onPressed: onTap,
                  child: AppAsset().arrowBackSvg(context),
                ),

                // NotchRoundedButton(
                //   text: 'Add',
                //   leftIcon: AppAsset().addSvg(context),
                //   onTap: onTap,
                // )
              ],
            ),
          ],
        ));
  }
}