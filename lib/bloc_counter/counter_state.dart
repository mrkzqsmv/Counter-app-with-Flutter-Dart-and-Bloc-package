part of 'counter_bloc.dart';

@immutable
abstract class CounterState {
  final int sayac;
  const CounterState({required this.sayac});
}

final class CounterInitial extends CounterState {
  const CounterInitial({required int baslangicDegeri}) : super(sayac: baslangicDegeri);
}

class MyCounterState extends CounterState{
  const MyCounterState({required super.sayac});

}