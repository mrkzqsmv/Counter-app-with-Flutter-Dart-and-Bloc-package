import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitial(baslangicDegeri: 15)) {
    on<ArttirCountEvent>((event, emit) {
      emit(MyCounterState(sayac: state.sayac + 1));
    });
    on<AzaltCountEvent>((event, emit) {
      emit(MyCounterState(sayac: state.sayac - 1));
    });
  }
}
