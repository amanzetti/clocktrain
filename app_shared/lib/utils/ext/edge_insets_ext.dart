import 'package:app_shared/utils/const/app_dimensions.dart';
import 'package:flutter/material.dart';

extension AppDimesnionsEdgeInsetsExt on EdgeInsets {
  static const EdgeInsets minAll = EdgeInsets.all(AppDimensions.min);
  static const EdgeInsets all4 = EdgeInsets.all(AppDimensions.dim4);

  static const EdgeInsets smallAll = EdgeInsets.all(AppDimensions.small);
  static const EdgeInsets mediumAll = EdgeInsets.all(AppDimensions.medium);
  static const EdgeInsets largeAll = EdgeInsets.all(AppDimensions.large);

  static const EdgeInsets minVertical =
      EdgeInsets.symmetric(vertical: AppDimensions.min);

  static const EdgeInsets smallVertical =
      EdgeInsets.symmetric(vertical: AppDimensions.small);
  static const EdgeInsets mediumVertical =
      EdgeInsets.symmetric(vertical: AppDimensions.medium);
  static const EdgeInsets largeVertical =
      EdgeInsets.symmetric(vertical: AppDimensions.large);

  static const EdgeInsets minHorizontal =
      EdgeInsets.symmetric(horizontal: AppDimensions.min);

  static const EdgeInsets smallHorizontal =
      EdgeInsets.symmetric(horizontal: AppDimensions.small);
  static const EdgeInsets mediumHorizontal =
      EdgeInsets.symmetric(horizontal: AppDimensions.medium);
  static const EdgeInsets largeHorizontal =
      EdgeInsets.symmetric(horizontal: AppDimensions.large);

  static const EdgeInsets smallOnlyTop =
      EdgeInsets.only(top: AppDimensions.small);
  static const EdgeInsets mediumOnlyTop =
      EdgeInsets.only(top: AppDimensions.medium);
  static const EdgeInsets largeOnlyTop =
      EdgeInsets.only(top: AppDimensions.large);

  static const EdgeInsets smallOnlyBottom =
      EdgeInsets.only(bottom: AppDimensions.small);
  static const EdgeInsets mediumOnlyBottom =
      EdgeInsets.only(bottom: AppDimensions.medium);
  static const EdgeInsets largeOnlyBottom =
      EdgeInsets.only(bottom: AppDimensions.large);

  static const EdgeInsets smallOnlyLeft =
      EdgeInsets.only(left: AppDimensions.small);
  static const EdgeInsets mediumOnlyLeft =
      EdgeInsets.only(left: AppDimensions.medium);
  static const EdgeInsets largeOnlyLeft =
      EdgeInsets.only(left: AppDimensions.large);

  static const EdgeInsets onlyRight4 =
      EdgeInsets.only(right: AppDimensions.dim4);
  static const EdgeInsets smallOnlyRight =
      EdgeInsets.only(right: AppDimensions.small);
  static const EdgeInsets mediumOnlyRight =
      EdgeInsets.only(right: AppDimensions.medium);
  static const EdgeInsets largeOnlyRight =
      EdgeInsets.only(right: AppDimensions.large);
}
