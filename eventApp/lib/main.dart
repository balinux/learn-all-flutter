import 'package:flutter/material.dart';
import 'package:eventApp/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        // primarySwatch: Colors.blueAccent,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: EventHome(title: 'Flutter Demo Home Page'),
    );
  }
}

class EventHome extends StatefulWidget {
  EventHome({Key key, String title}) : super(key: key);
  @override
  _EventHomeState createState() => _EventHomeState();
}

class _EventHomeState extends State<EventHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: kBackgroundColor,
      body: Body(),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    elevation: 0,
    centerTitle: false,
    title: Text(""),
    backgroundColor: kBackgroundColor,
    actions: [
      Container(
        margin: EdgeInsets.only(right: 15),
        child: Icon(Icons.search),
      )
    ],
  );
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              "Event Nrearby",
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              children: [
                Icon(
                  Icons.pin_drop,
                  color: kButtonColor,
                  size: 28,
                ),
                Text(
                  "Event Nrearby",
                  style: TextStyle(
                      color: kTextLightColor,
                      fontSize: 27,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
              child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 180),
                decoration: BoxDecoration(color: kSecondaryColor),
              ),
              Container(
                height: 400,
                margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                decoration: BoxDecoration(
                    color: kBgContentColor,
                    borderRadius: BorderRadius.circular(20)),
              ),
              ListView(
                children: [
                  Column(
                    children: [
                      Text("CONTOH"),
                      Text("xxxxx"),
                      Text("CONTOH"),
                      Text("xxxxx"),
                      Text("CONTOH"),
                      Text("xxxxxxx"),
                      Text("CONTOH"),
                      Text("xxxxx"),
                      Text("CONTOH"),
                      Text("xxxxx"),
                      Text("CONTOH"),
                      Text("xxxxx"),
                      Text("CONTOH"),
                      Text("xxxxxxx"),
                      Text("CONTOH"),
                      Text("xxxxx"),
                      Text("CONTOH"),
                      Text("xxxxx"),
                      Text("CONTOH"),
                      Text("xxxxx"),
                      Text("CONTOH"),
                      Text("xxxxxxx"),
                      Text("CONTOH"),
                      Text("xxxxx"),
                      Text("CONTOH"),
                      Text("xxxxx"),
                      Text("CONTOH"),
                      Text("xxxxx"),
                      Text("CONTOH"),
                      Text("xxxxxxx"),
                      Text("CONTOH"),
                      Text("xxxxx"),
                      Text("CONTOH"),
                      Text("xxxxx"),
                      Text("CONTOH"),
                      Text("xxxxx"),
                      Text("CONTOH"),
                      Text("xxxxxxx"),
                      Text("CONTOH"),
                      Text("xxxxx"),
                      Text("CONTOH"),
                      Text("xxxxx"),
                      Text("CONTOH"),
                      Text("xxxxx"),
                      Text("CONTOH"),
                      Text("xxxxxxx"),
                      Text("CONTOH"),
                      Text("xxxxx"),
                      Text("CONTOH"),
                      Text("xxxxx"),
                      Text("CONTOH"),
                      Text("xxxxx"),
                      Text("CONTOH"),
                      Text("xxxxxxx"),
                      Text("CONTOH"),
                      Text("xxxxx"),
                    ],
                  )
                ],
              )
            ],
          )),
        ],
      ),
    );
  }
}
