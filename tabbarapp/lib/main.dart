import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: TabPageApp(),
    );
  }
}

class TabPageApp extends StatefulWidget {
  const TabPageApp({Key? key}) : super(key: key);

  @override
  _TabPageAppState createState() => _TabPageAppState();
}

class _TabPageAppState extends State<TabPageApp> {
  int _selectedIndex = 0;
  static const TextStyle optionsStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetMenu = <Widget>[
    Text(
      'Home',
      style: optionsStyle,
    ),
    Text(
      'Add',
      style: optionsStyle,
    ),
    Text(
      'Profile',
      style: optionsStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('tab bar'),
      ),
      body: Center(
        child: _widgetMenu.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber,
        onTap: _onItemTapped,
      ),
    );
  }
}
