import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerpractice/provider/theme_changer_provider.dart';

class DarkthemeScreen extends StatefulWidget {
  const DarkthemeScreen({super.key});

  @override
  State<DarkthemeScreen> createState() => _DarkthemeScreenState();
}

class _DarkthemeScreenState extends State<DarkthemeScreen> {
  @override
  Widget build(BuildContext context) {
    final themechanger = Provider.of<DarkThemeProvider>(
      context,
    ); // Example value, replace with your logic
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Theme Example'),
        backgroundColor: const Color.fromARGB(255, 33, 32, 32),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
            title: const Text('Light Theme'),
            value: ThemeMode.light, // Correct value
            groupValue: themechanger.themeMode, // Like which one is selected
            onChanged: themechanger.setTheme,
          ),
          RadioListTile<ThemeMode>(
            title: const Text('Dark Theme'),
            value: ThemeMode.dark, // Should be ThemeMode.dark
            groupValue: themechanger.themeMode,
            onChanged: themechanger.setTheme,
          ),
          RadioListTile<ThemeMode>(
            title: const Text('System Theme'),
            value: ThemeMode.system, // Should be ThemeMode.system
            groupValue: themechanger.themeMode,
            onChanged: themechanger.setTheme,
          ),
        ],
      ),
    );
  }
}
