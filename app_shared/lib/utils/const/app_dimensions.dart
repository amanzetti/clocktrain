import 'package:flutter/material.dart';

class AppDimensions {
  ///STANDARD
  static const small = 8.0;
  static const medium = 16.0;
  static const large = 24.0;

  ///CUSTOM
  static const min = 1.0;
  static const dim4 = 4.0;

  ///ACCESIBILITY
  static const minHeightAccesibility = 44.0;
  static const minWidthAccesibility = 44.0;

  //RADIUS
  static const borderRadius8 = 8.0;
  static const borderRadius10 = 10.0;
  static const borderRadius100 = 100.0;

  ///
  static const boxConstraints = BoxConstraints(
      minHeight: AppDimensions.minHeightAccesibility,
      minWidth: AppDimensions.minWidthAccesibility);
}
