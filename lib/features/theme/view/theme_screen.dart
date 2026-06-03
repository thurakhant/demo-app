import 'package:flutter/material.dart';
import 'package:myapp/features/theme/controller/theme_controller.dart';
import 'package:provider/provider.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeController>();
    return Scaffold(
      appBar: AppBar(title: Text("App Settings")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.dark_mode, size: 100),
            SizedBox(height: 20),
            Text("Light model or Dark Mode"),
            SwitchListTile(
              title: const Text("Switch Theme"),
              subtitle: const Text("Tap to toggle between light and dark"),
              value: themeProvider.isDarkMode,
              onChanged: (value) {
                context.read<ThemeController>().toogleTheme(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
