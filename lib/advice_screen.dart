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

  @override
  Widget build(BuildContext context) {
    String adviceText = "Hello World";
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              Text(adviceText, style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
              TextButton(onPressed: () {}, child: Text("Generate Advice")),
            ],
          ),
        ),
      ),
    );
  }
}
