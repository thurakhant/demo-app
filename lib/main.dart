import 'package:flutter/material.dart';
import 'package:myapp/features/projects/views/project_view.dart';

void main() {
  runApp(FlutterApp());
}

// Stateless Widget
// Stateful Widget

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ProjectView());
  }
}
