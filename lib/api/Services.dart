import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_flex/model/Post.dart';

class Services {
  static Future<Post> fetchPost() async {
    final response =
        await http.get('https://jsonplaceholder.typicode.com/posts/1');

    print(json.decode(response.body));
    if (response.statusCode == 200) {
      return Post.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to laod Post');
    }
  }
}
