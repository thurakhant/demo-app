import 'package:flutter/material.dart';
import 'package:myapp/advice.dart';
import 'package:myapp/api_service.dart';

class AdviceScreen extends StatefulWidget {
  const AdviceScreen({super.key});

  @override
  State<AdviceScreen> createState() => _AdviceScreenState();
}

class _AdviceScreenState extends State<AdviceScreen> {
  final ApiService api = ApiService();
  Advice? data;

  void _clickButton() async {
    var response = await api.getAdvice();

    setState(() {
      data = response;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("${data?.id}", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                Text(
                  "${data?.advice}",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                TextButton(onPressed: _clickButton, child: Text("Generate Advice")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
