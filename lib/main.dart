import 'package:flutter/material.dart';
import 'package:myapp/features/bookmark/controller/bookmark_controller.dart';
import 'package:myapp/features/bookmark/views/course_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => BookmarkController(), child: FlutterApp()));
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
      home: CourseScreen(),
    );
  }
}
