import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterState {
  int count;
  CounterState({required this.count});
}

class RiverpodCounterNotifier extends Notifier<CounterState> {
  //로직
  void countUp() {
    state = CounterState(count: state.count + 1);
  }

  void countDown() {
    state = CounterState(count: state.count - 1);
  }

  @override
  CounterState build() {
    // TODO: implement build
    return CounterState(count: 0);
  }
}
