import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bloc_couting/src/blocs/counter_bloc.dart';
import 'package:my_bloc_couting/src/ui/counter_page.dart';

class MyBlocCountingApp extends StatelessWidget {
  const MyBlocCountingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: BlocProvider(
        create: (context) => CounterBloc(),
        child: const CounterPage(),
      ),
    );
  }
}
