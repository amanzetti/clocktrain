import 'package:flutter/material.dart';

class AppAsset {
  static final AppAsset _instance = AppAsset._internal();

  AppAsset._internal();

  factory AppAsset() => _instance;

  ///Error
  static const error = Icon(Icons.error);

  ///Part of Day
  static const morning = Icon(Icons.sunny);
  static const afternoon = Icon(Icons.wb_sunny);
  static const evening = Icon(Icons.bedtime);
  static const night = Icon(Icons.nights_stay);

  static const arrowBack = Icon(Icons.arrow_back_ios);
  static const arrowNext = Icon(Icons.arrow_forward_ios);
  static const edit = Icon(Icons.edit);
  static const disable = Icon(Icons.disabled_by_default);
  static const account = Icon(Icons.account_circle);
  static const add = Icon(Icons.add);
  static const notification = Icon(Icons.notifications);
}
