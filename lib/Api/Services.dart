import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_flex/Model/user_profile.dart';

import '../Model/user_profile.dart';

class Services {
  static const String baseUrl = "https://jsonplaceholder.typicode.com/users";

  static Future<List<User>> getUsers() async {
    try {
      final response = await http.get(baseUrl);
      if (response.statusCode == 200) {
        List<User> list = parseUsers(response.body);
        return list;
      } else {
        throw Exception("error");
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static List<User> parseUsers(String responBody) {
    final parsed = json.decode(responBody).cast<Map<String, dynamic>>();
    return parsed.map<User>((json) => User.fromJson(json)).toList();
  }
}
