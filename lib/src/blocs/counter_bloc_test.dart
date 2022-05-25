import 'package:my_bloc_couting/src/blocs/counter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:test/test.dart';
// ignore: depend_on_referenced_packages
import 'package:bloc_test/bloc_test.dart';

void main() {
  group(
    'CounterBloc',
    () {
      late CounterBloc counterBloc;

      setUp(() {
        counterBloc = CounterBloc();
      });

      test('Initial state is 0', () {
        expect(counterBloc.state, 0);
      });

      blocTest(
        'Shuld be [1]',
        build: () => counterBloc,
        act: (CounterBloc bloc) => bloc.add(CounterIncrementPressed()),
        expect: () => [1],
      );

      blocTest(
        'Shuld be [-1]',
        build: () => counterBloc,
        act: (CounterBloc bloc) => bloc.add(CounterDecrementPressed()),
        expect: () => [-1],
      );
    },
  );
}
