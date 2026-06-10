import 'package:flutter/material.dart';
import 'package:myapp/features/student_register/controllers/students_register_controller.dart';
import 'package:myapp/features/student_register/models/students_form_model.dart';
import 'package:provider/provider.dart';

class StudentRegister extends StatelessWidget {
  const StudentRegister({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController name = TextEditingController();
    final TextEditingController age = TextEditingController();
    final TextEditingController town = TextEditingController();
    final TextEditingController phoneNumber = TextEditingController();

    final controller = context.read<StudentsRegisterController>();
    final studentHistory = context.watch<StudentsRegisterController>();

    return Scaffold(
      appBar: AppBar(title: Text("Student Form")),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          spacing: 12,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name"),
            TextField(controller: name),
            Text("Age"),
            TextField(controller: age),
            Text("Town"),
            TextField(controller: town),
            Text("Phone Number"),
            TextField(controller: phoneNumber),
            ElevatedButton(
              onPressed: () {
                controller.register(
                  StudentModel(
                    name: name.text,
                    age: age.text,
                    phoneNumber: phoneNumber.text,
                    town: town.text,
                  ),
                );
              },
              child: Text("Register"),
            ),
            Text("Registed Students"),
            Expanded(
              child: ListView.builder(
                itemCount: studentHistory.history.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(studentHistory.history[index].name),
                        Text(studentHistory.history[index].age),
                        Text(studentHistory.history[index].town),
                        Text(studentHistory.history[index].phoneNumber),
                        Divider(),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
