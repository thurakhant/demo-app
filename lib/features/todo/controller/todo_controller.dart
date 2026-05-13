import 'package:flutter/material.dart';
import 'package:myapp/features/todo/model/todo_model.dart';

class TodoController extends ChangeNotifier {
  final List<Task> task = [];

  void addTask(String title) {
    task.add(Task(title: title));
    notifyListeners();
  }

  void deleteTask() {}

  void toogleTask() {}
}
