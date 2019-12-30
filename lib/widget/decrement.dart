import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:learn_flex/bloc/counter_bloc.dart';

class DecrementButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);

    return FlatButton.icon(
      icon: Icon(Icons.add),
      label: Text("remove"),
      onPressed: () => counterBloc.decrement(),
    );
  }
}
