import 'package:flutter/material.dart';
import 'package:myapp/features/student_register/models/students_form_model.dart';

class StudentsRegisterController extends ChangeNotifier {
  List<StudentModel> history = [];

  void register(StudentModel data) {
    history.add(data);
    print(history);
    notifyListeners();
  }
}
