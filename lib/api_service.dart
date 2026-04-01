import 'dart:convert';

import 'package:http/http.dart' as oak;
import 'package:myapp/advice.dart';

class ApiService {
  Future<Advice> getAdvice() async {
    final response = await oak.get(Uri.parse("https://api.adviceslip.com/advice"));

    if (response.statusCode == 200) {
      return Advice.fromJson(jsonDecode(response.body));
    }
    return Advice(id: 1, advice: "The Data is not yet");
  }
}
