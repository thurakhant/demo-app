import 'dart:convert';

import 'package:http/http.dart' as oak;
import 'package:myapp/advice.dart';

class ApiService {
  Future<Advice> getAdvice() async {
    final response = await oak.get(Uri.parse("https://api.adviceslip.com/advice"));

    if (response.statusCode == 200) {
      var decode = jsonDecode(response.body);
      var json = Advice.fromJson(decode);
      return json;
    } else {
      throw Exception();
    }
  }
}

void main() {
  ApiService obj = ApiService();

  obj.getAdvice();
}
