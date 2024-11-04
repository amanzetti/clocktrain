import 'package:clocktrain/presentation/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final themeProvider = StateProvider<bool>((ref) => false);

class UserPage extends ConsumerStatefulWidget {
  const UserPage({super.key});

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends ConsumerState<UserPage> {
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
    bool isDark = !ref
        .read(themeProvider.notifier)
        .state; // Leggi lo stato attuale dal provider
    ref
        .read(themeProvider.notifier)
        .update((value) => isDark); // Aggiorna il provider
    _saveThemePreference(isDark); // Salva la preferenza
  }

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = ref
        .watch(themeProvider.notifier)
        .state; // Leggi lo stato attuale dal provider

    return Column(
      children: [
        // Card per i dati utente
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'User Data',
                  style: isDarkTheme
                      ? AppTheme.darkTheme.textTheme.displayLarge
                      : AppTheme.lightTheme.textTheme.displayLarge,
                ),
                // Aggiungi qui i dati dell'utente
              ],
            ),
          ),
        ),
        // Card per l'andamento dell'allenamento
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'Workout Progress',
                  style: isDarkTheme
                      ? AppTheme.darkTheme.textTheme.displayLarge
                      : AppTheme.lightTheme.textTheme.displayLarge,
                ),
                // Aggiungi qui l'andamento dell'allenamento
              ],
            ),
          ),
        ),
        // Sezione per le impostazioni dell'app
        SwitchListTile(
          title: const Text('Dark Theme'),
          value: isDarkTheme,
          onChanged: (value) {
            _toggleTheme(); // Attiva il toggle del tema
          },
        ),
      ],
    );
  }
}
