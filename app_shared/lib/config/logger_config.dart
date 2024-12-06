import 'dart:io';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/foundation.dart';

class LoggerConfig {
  // Istanza di Logger
  static final Logger _logger = Logger(
    level: kReleaseMode ? Level.error : Level.debug, // Usa kReleaseMode per controllare la modalità
    filter: DevelopmentFilter(), // Filtro personalizzato
    output: MultiOutput([
      ConsoleOutput(), // Stampa su console
      // FileOutput(),    // Salvataggio su file (opzionale)
    ]),
  );

  // Getter per ottenere l'istanza del logger
  static Logger get logger => _logger;
}

// Filtro personalizzato per escludere messaggi di log in produzione
class DevelopmentFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    // Filtra i messaggi in base al livello di log
    if (kReleaseMode) {
      // In modalità release (produzione), logga solo errori
      return event.level.index >= Level.error.index;
    }
    // In modalità debug, logga tutto
    return true;
  }
}

// Output su console
class ConsoleOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    // Stampa i log sulla console
    final log = event.lines.join('\n'); // Event può contenere più linee
    LoggerConfig._logger.i(log);
  }
}

// Output su file
class FileOutput extends LogOutput {
  @override
  void output(OutputEvent event) async {
    // Ottieni la directory dei documenti dell'app
    final directory = await getApplicationDocumentsDirectory();
    final logFile = File('${directory.path}/app_logs.txt');
    final logSink = logFile.openWrite(mode: FileMode.append);
    
    // Scrivi i log su file
    for (var line in event.lines) {
      logSink.writeln(line); // Ogni riga del log
    }
    await logSink.close();
  }
}