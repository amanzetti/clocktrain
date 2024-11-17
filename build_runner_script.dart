import 'dart:io';

void main() async {
  final result = await Process.run(
    'dart',
    [
      'run',
      'build_runner',
      'build',
      '--delete-conflicting-outputs',
      '--build-filter',
      'lib/data/local/app_database.dart'
    ],
  );

  stdout.write(result.stdout);
  stderr.write(result.stderr);

  if (result.exitCode != 0) {
    exit(result.exitCode);
  }
}