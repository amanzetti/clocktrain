import 'package:app_shared/config/flavors/flavors.dart';
import 'package:app_shared/themes/flavors_banner_theme.dart';
import 'package:flutter/material.dart';

Widget flavorBanner({
  required Widget child,
  bool show = true,
}) =>
    show
        ? Banner(
            location: BannerLocation.topStart,
            message: F.name,
            color: Colors.green.withOpacity(0.6),
            textStyle: getFlavorsBannerTextStyle(),
            textDirection: TextDirection.ltr,
            child: child,
          )
        : Container(
            child: child,
          );
