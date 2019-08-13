import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];

  _MyAppState() {
    for (var i = 0; i < 20; i++) {
      widgets.add(Text("Data ke - " + i.toString(), style: TextStyle(fontSize: 35),));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('lean ListView'),
        ),
        body: ListView(
          children: widgets,
        ),
      ),
    );
  }
}
