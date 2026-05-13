import 'package:flutter/material.dart';
import 'package:myapp/features/todo/controller/todo_controller.dart';
import 'package:myapp/features/todo/view/todo_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(FlutterApp());
}

// Stateless Widget
// Stateful Widget

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodoController(),
      child: MaterialApp(home: TodoView()),
    );
  }
}
