import 'package:flutter/material.dart';
import 'dart:async';
import 'package:learn_flex/Model/user_profile.dart';
import 'package:learn_flex/Api/Services.dart';

void main() {
  runApp(MaterialApp(
    title: 'My app',
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<User> users = List();

  @override
  void initState() {
    super.initState();
    Services.getUsers().then((userFromServer) {
      print(userFromServer);
      setState(() {
        users = userFromServer;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Search"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(10.0),
              itemCount: users.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          users[index].name,
                          style: TextStyle(fontSize: 16.0, color: Colors.black),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          users[index].email,
                          style: TextStyle(fontSize: 14.0, color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
