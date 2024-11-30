import 'dart:convert';
import 'package:app_shared/config/logger_config.dart';
import 'package:flutter/services.dart';

Future<Map<String, dynamic>> loadJsonData(String nameJson) async {
  final String response =
      await rootBundle.loadString('assets/mock/$nameJson.json');
  final Map<String, dynamic> data = json.decode(response);
  LoggerConfig.logger.i('ciao');
  return data;

  // return data.map((item) => item as Map<String, dynamic>).toList();
}
