import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bloc_couting/src/blocs/counter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: BlocBuilder<CounterBloc, int>(
        buildWhen: (previous, current) {
          if (previous != current) {
            return true;
          }
          return false;
        },
        builder: (context, state) {
          return Center(
            child: Text(
              state.toString(),
            ),
          );
        },
      ),
      floatingActionButton: ButtonBar(
        children: [
          IconButton(
            icon: const Icon(
              Icons.exposure_minus_1_outlined,
            ),
            splashColor: Colors.blue,
            highlightColor: Colors.lightBlueAccent[100],
            onPressed: () {
              context.read<CounterBloc>().add(CounterIncrementPressed());
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.do_disturb,
            ),
            splashColor: Colors.blue,
            highlightColor: Colors.lightBlueAccent[100],
            onPressed: () {
              context.read<CounterBloc>().add(CounterDoNothingPressed());
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.plus_one,
            ),
            splashColor: Colors.blue,
            highlightColor: Colors.lightBlueAccent[100],
            onPressed: () {
              context.read<CounterBloc>().add(CounterDecrementPressed());
            },
          ),
        ],
      ),
    );
  }
}
