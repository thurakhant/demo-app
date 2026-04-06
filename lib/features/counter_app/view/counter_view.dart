import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/features/counter_app/controller/counter_controller.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterController controller = Get.put(CounterController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(controller.count.toString())),
            TextButton(
              onPressed: () {
                controller.increment();
              },
              child: Text("Increase"),
            ),
          ],
        ),
      ),
    );
  }
}
