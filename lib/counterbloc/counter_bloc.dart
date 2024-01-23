import 'package:bloc/bloc.dart';
import 'package:counterbloc/counterbloc/counter_event.dart';
import 'package:counterbloc/counterbloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialCounter()) {
    on<CounterIncreasedEvent>((event, emit) {
      emit(CounterIncrement(state.counter + 1));
    });

    on<CounterDecresedEvent>((event, emit) {
      emit(CounterDecrement(state.counter - 1));
    });
  }
}
