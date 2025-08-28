import 'package:flutter_bloc/flutter_bloc.dart';

sealed class CounterEvent {}

final class CounterUpEvent extends CounterEvent {}

final class CounterDownEvent extends CounterEvent {}

class BlocCounterState {
  int count;
  BlocCounterState({required this.count});
}

// 뷰모델 역할
class CounterBloc extends Bloc<CounterEvent, BlocCounterState> {
  CounterBloc() : super(BlocCounterState(count: 0)) {
    on<CounterUpEvent>((event, emit) {
      emit(BlocCounterState(count: state.count + 1));
    });
    on<CounterDownEvent>((event, emit) {
      emit(BlocCounterState(count: state.count - 1));
    });
  }
}
