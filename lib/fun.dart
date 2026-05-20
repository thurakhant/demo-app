import 'package:flutter/material.dart';
import 'package:myapp/features/todo/model/todo_model.dart';

void main() {
  // Variable
  // Operator
  // Function *
  // Loop
  // Async
  // Threading
  // Multi Processing ( Optional )
  // Machine Code (1010110) ( Optional )

  // * Function
  // Return / no Retrun

  // Create Function in dart
  // Input - process - output

  int sum(int num1, int num2) {
    var total = num1 + num2; // num1 = 1, num2 = 2
    return total; // Result
  }

  String wordSum(String wordOne, String wordTwo) {
    var total = wordOne + wordTwo; // num1 = 1, num2 = 2
    return total; // Result
  }

  void sumFun(int num1, int num2) {
    var total = num1 + num2;
    print(total);
  }

  Task addTask(String title, bool isDone) {
    var total = Task(title: title);
    return total;
  }

  // print(wordSum("1", "2"));
  // print(sum(1, 2));

  // sumFun(1, 2);

  print(addTask("Sar Lote Yan", false));
}

Widget component() {
  return Text("ASDF");
}
