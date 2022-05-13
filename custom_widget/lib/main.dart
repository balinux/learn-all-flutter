import 'package:custom_widget/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton.icon(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(successColor)),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      content: Card(
                        color: successColor,
                        child: ListTile(
                          leading: Icon(
                            Icons.check_circle_outline,
                            color: Colors.white,
                          ),
                          title: Text(
                            "Success",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "example success message",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )));
                },
                icon: Icon(Icons.warning_amber_rounded),
                label: Text("Button")),
          ),
          Center(
            child: ElevatedButton.icon(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(errorColor)),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      content: Card(
                        color: errorColor,
                        child: ListTile(
                          leading: Icon(
                            Icons.error_outline,
                            color: Colors.white,
                          ),
                          title: Text(
                            "Error",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "example error message",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )));
                },
                icon: Icon(Icons.error),
                label: Text("Error")),
          ),
        ],
      ),
    );
  }
}


// thanks for watching
