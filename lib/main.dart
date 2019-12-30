import 'package:flutter/material.dart';
import 'package:learn_flex/bloc/counter_bloc.dart';
import 'package:learn_flex/pages/counter.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterBloc>.value(
          value: CounterBloc(),
        )
      ],
      child: MaterialApp(
        home: CounterPage(),
      ),
    );
  }
}
