import 'dart:convert';

class User {
  int id;
  String title;

  User({this.title, this.id});

  factory User.fromJson(Map<String, dynamic> map) {
    return User(id: map['id'], title: map['title']);
  }

  Map<String, dynamic> toJson() {
    return {"id": id, "title": title};
  }

  @override
  String toString() {
    return 'User{id: $id, title $title}';
  }
}

  List<User> userFromJson(String jsonData) {
    final data = json.decode(jsonData);
    return List<User>.from(data.map((item) => User.fromJson(item)));
  }

  String userToJson(User data) {
    final jsonData = data.toString();
    return json.encode(jsonData);
  }
