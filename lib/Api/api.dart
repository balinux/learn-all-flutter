import 'dart:convert';
import 'package:http/http.dart' show Client;
import 'package:learn_flex/Model/user_profile.dart';

class AllPost { 
  final String baseUrl = "https://jsonplaceholder.typicode.com/todos";
  Client client = Client();

  Future<List<User>> getListUser() async {
    final response = await client.get(baseUrl);
    if (response.statusCode == 200) {
      return userFromJson(response.body);
    } else {
      return null;
    }
  }
}