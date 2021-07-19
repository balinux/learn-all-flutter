library imissupgk;

import 'dart:convert';

import 'package:imissupgk/model/loginModel.dart';
import 'package:http/http.dart' as http;

// /// A Calculator.
// class Calculator {
//   /// Returns [value] plus 1.
//   int addOne(int value) => value + 1;
// }

class Imissu {
  String baseUrl = 'https://oauth2.unud.ac.id';

  Future<LoginModel?> loginToImissu(String username, String password) async {
    Map data = {
      'grant_type': 'password',
      'username': username,
      'password': password
    };

    var response =
        await http.post(Uri.parse("$baseUrl/api/login"), body: data, headers: {
      "Accept": "application/json",
    });
    if (response.statusCode == 200) {
      return LoginModel.fromJson(json.decode(response.body));
    } else {
      return null;
    }
  }
}
