import 'dart:io';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';

class LoggerConfig {
  static final Logger logger = Logger(
    level: Level.debug, // Debug in dev, Error in release
    printer: PrettyPrinter(),
  );

  static Future<void> logToFile(String message) async {
    final file = await _getLogFile();
    await file.writeAsString('$message\n', mode: FileMode.append);
  }

  static Future<void> clearLogFile() async {
    final file = await _getLogFile();
    if (await file.exists()) {
      await file.writeAsString('');
    }
  }

  static Future<File> _getLogFile() async {
    final directory = await getApplicationDocumentsDirectory();
    return File('${directory.path}/app_logs.txt');
  }
}
