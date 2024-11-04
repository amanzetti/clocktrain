import 'package:flutter/material.dart';

class AppAsset {
  static final AppAsset _instance = AppAsset._internal();

  AppAsset._internal();

  factory AppAsset() => _instance;

  static const arrowBack = Icon(Icons.arrow_back_ios);
  static const arrowNext = Icon(Icons.arrow_forward_ios);
  static const edit = Icon(Icons.edit);
  static const disable = Icon(Icons.disabled_by_default);
}
