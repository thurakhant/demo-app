import 'package:flutter/material.dart';
import 'package:myapp/features/student_register/controllers/students_register_controller.dart';
import 'package:myapp/features/student_register/views/student_register.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => StudentsRegisterController(), child: FlutterApp()),
  );
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
      home: StudentRegister(),
    );
  }
}
