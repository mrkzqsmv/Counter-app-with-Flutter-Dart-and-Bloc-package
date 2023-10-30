import 'package:counter_app_with_bloc_and_cubit/bloc_counter/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePageWithBloc extends StatefulWidget {
  const MyHomePageWithBloc({super.key});

  @override
  State<MyHomePageWithBloc> createState() => _MyHomePageWithBlocState();
}

class _MyHomePageWithBlocState extends State<MyHomePageWithBloc> {
  @override
  Widget build(BuildContext context) {
    debugPrint('build tetiklendi');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Usage of Bloc - A way of State Management'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  state.sayac.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<CounterBloc>(context).add(ArttirCountEvent());
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<CounterBloc>(context).add(AzaltCountEvent());
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
