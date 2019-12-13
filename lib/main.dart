import 'package:flutter/material.dart';
import 'package:learn_flex/Api/api.dart';
import 'package:http/http.dart' show Client;
import 'package:learn_flex/Model/user_profile.dart';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: FutureBuilder(
          future: AllPost().getListUser(),
          builder: (BuildContext context, AsyncSnapshot<List<User>> snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text("${snapshot.error.toString()}"),
              );
            } else if (snapshot.connectionState == ConnectionState.done) {
              List<User> users = snapshot.data;
              // print(listuser);
              return Container(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    User user = users[index];
                    // print(user);
                    return Padding(
                      padding: EdgeInsets.only(bottom: 1.0),
                      child: Column(
                        children: <Widget>[Text(user.title)],
                      ),
                    );
                  },
                  itemCount: users.length,
                ),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        )

        //       body: ListView(
        //   children: <Widget>[
        //     Padding(
        //       padding: EdgeInsets.all(8),
        //       child: Text("android Exmaple"),
        //     )
        //   ],
        // )

        );
  }
}
