import 'package:flutter/material.dart';
// import 'package:myapp/features/bookmark/controller/bookmark_controller.dart';
import 'package:myapp/features/profile/controller/profile_controller.dart';
import 'package:myapp/features/profile/view/profile_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => ProfileController(), child: FlutterApp()));
}

// Stateless Widget
// Stateful Widget

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final themeProvider = context.watch<ThemeController>();
    return MaterialApp(
      // themeMode: themeProvider.themeMode,
      // theme: ThemeData.light(useMaterial3: true),
      // darkTheme: ThemeData.dark(useMaterial3: true),
      home: ProfilePage(),
    );
  }
}
