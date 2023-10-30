import 'package:counter_app_with_bloc_and_cubit/bloc_counter/counter_bloc.dart';
import 'package:counter_app_with_bloc_and_cubit/bloc_counter_app.dart';
import 'package:counter_app_with_bloc_and_cubit/cubit_counter/counter_cubit.dart';
import 'package:counter_app_with_bloc_and_cubit/cubit_counter_app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterBloc>(
          create: (context) => CounterBloc(),
        ),
        BlocProvider<CounterCubit>(
          create: (context) => CounterCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bloc and Cubit',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePageWithBloc(),
      ),
    );
  }
}
