import 'package:counter_app_with_bloc_and_cubit/cubit_counter/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePageWithCubit extends StatefulWidget {
  const MyHomePageWithCubit({super.key});

  @override
  State<MyHomePageWithCubit> createState() => _MyHomePageWithCubitState();
}

class _MyHomePageWithCubitState extends State<MyHomePageWithCubit> {
  @override
  Widget build(BuildContext context) {
    debugPrint('build tetiklendi');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Usage of Cubit - A way of State Management'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CounterCubit, CounterCubitState>(
              builder: (context, state) {
                return Text(
                  state.sayac.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterCubit>().arttir();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterCubit>().arttir();
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
