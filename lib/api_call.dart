import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as oak;
import 'package:myapp/advice.dart';

class ApiCallScreen extends StatefulWidget {
  const ApiCallScreen({super.key});

  @override
  State<ApiCallScreen> createState() => _ApiCallScreenState();
}

class _ApiCallScreenState extends State<ApiCallScreen> {
  String _advice = '';

  Future<Advice> getAdvice() async {
    final response = await oak.get(Uri.parse("https://api.adviceslip.com/advice"));

    if (response.statusCode == 200) {
      var decode = jsonDecode(response.body);
      var json = Advice.fromJson(decode);
      Advice obj = json;
      setState(() {
        _advice = obj.advice;
      });

      return json;
    } else {
      throw Exception();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_advice, style: TextStyle(fontSize: 24)),
              TextButton(
                onPressed: () async {
                  await getAdvice();
                },
                child: Text("Generate Quote"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
