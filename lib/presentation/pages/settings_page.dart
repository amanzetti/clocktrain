import 'package:clocktrain/presentation/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final themeProvider = StateProvider<bool>((ref) => false);

class SettingsPage extends ConsumerStatefulWidget {
  const SettingsPage({super.key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends ConsumerState<SettingsPage> {
  @override
  void initState() {
    super.initState();
    _loadThemePreference();
  }

  Future<void> _loadThemePreference() async {
    final prefs = await SharedPreferences.getInstance();
    bool isDark = prefs.getBool('darkTheme') ?? false;
    ref.read(themeProvider.notifier).state = isDark; // Aggiorna il provider
  }

  Future<void> _saveThemePreference(bool isDark) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('darkTheme', isDark);
  }

  void _toggleTheme() {
    bool isDark = ref.read(themeProvider.notifier).state;
    ref.read(themeProvider.notifier).update((value) => !isDark);
    _saveThemePreference(!isDark);
  }

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = ref
        .watch(themeProvider.notifier)
        .state; // Leggi lo stato attuale dal provider

    return Column(
      children: [
        SwitchListTile(
          title: const Text('Dark Theme'),
          value: isDarkTheme,
          onChanged: (value) {
            _toggleTheme();
          },
        ),
      ],
    );
  }
}
