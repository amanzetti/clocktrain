import 'dart:async';

import 'package:app_main/app.dart';
import 'package:app_shared/app_shared.dart';
import 'package:flutter/material.dart';

FutureOr<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const ProviderScope(child: App()));
}
