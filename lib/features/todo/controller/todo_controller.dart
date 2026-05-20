import 'package:flutter/material.dart';
import 'package:myapp/features/todo/model/todo_model.dart';

class TodoController extends ChangeNotifier {
  // Store the value
  final List<Task> task = [];

  void addTask(String title) {
    task.add(Task(title: title));
    notifyListeners();
  }

  void deleteTask(int index) {
    task.removeAt(index);
    notifyListeners();
  }

  void toogleTask(int index) {
    task[index].toggleDone();
    notifyListeners();
  }
}
