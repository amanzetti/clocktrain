import 'package:app_shared/themes/app_asset.dart';
import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HeaderWithCloseButton extends StatelessWidget {
  final String? title;
  final Color? color;
  final void Function()? onTap;
  final double? height;

  const HeaderWithCloseButton(
      {super.key, this.title, this.color, this.onTap, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title ?? '', style: context.textTheme.headlineSmall),
            IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: AppAsset().cancelSvg(context))
          ],
        ));
  }
}
