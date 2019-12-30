import 'package:flutter/material.dart';
import 'package:learn_flex/bloc/counter_bloc.dart';
import 'package:learn_flex/widget/decrement.dart';
import 'package:learn_flex/widget/increment.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);

    return Scaffold(
      body: new Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                counterBloc.counter.toString(),
                style: TextStyle(fontSize: 60.0),
              ),
              IncrementButton(),
              DecrementButton()
            ],
          ),
        ),
      ),
    );
  }
}
