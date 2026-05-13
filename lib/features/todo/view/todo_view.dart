import 'package:flutter/material.dart';
import 'package:myapp/features/todo/controller/todo_controller.dart';
import 'package:provider/provider.dart';

class TodoView extends StatelessWidget {
  const TodoView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text('Todo app')),
      body: Column(
        children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: 'Enter task',
              suffixIcon: IconButton(
                onPressed: () {
                  if (controller.text.isNotEmpty) {
                    context.read<TodoController>().addTask(controller.text);
                    controller.clear();
                  }
                },
                icon: Icon(Icons.add),
              ),
            ),
          ),
          Expanded(
            child: Consumer<TodoController>(
              builder: (context, controller, child) {
                return ListView.builder(
                  itemCount: controller.task.length,
                  itemBuilder: (context, index) {
                    final task = controller.task[index];

                    return ListTile(
                      title: Text(task.title),
                      leading: Checkbox(
                        value: false,
                        onChanged: (value) {
                          print(value);
                        },
                      ),
                      trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

//
