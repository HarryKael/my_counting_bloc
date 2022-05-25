import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bloc_couting/src/app.dart';
import 'package:my_bloc_couting/src/blocs/counter_observer.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(
      const MyBlocCountingApp(),
    ),
    blocObserver: CounterObserver(),
  );
}
