abstract class CounterState {
  int counter = 0;
  CounterState({required this.counter});
}

class InitialCounter extends CounterState {
  InitialCounter() : super(counter: 0);
}

class CounterIncrement extends CounterState {
  CounterIncrement(int increseadcounter) : super(counter: increseadcounter);
}

class CounterDecrement extends CounterState {
  CounterDecrement(int decreasedcounter) : super(counter: decreasedcounter);
}
