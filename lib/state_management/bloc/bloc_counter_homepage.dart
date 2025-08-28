import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pjt/state_management/bloc/counter_block.dart';
import 'package:pjt/state_management/riverpod/riverpod_counter_notifier.dart';

final riverpodCounterProvider =
    NotifierProvider<RiverpodCounterNotifier, CounterState>(() {
      return RiverpodCounterNotifier();
    });

class BlocCounterHomepage extends StatelessWidget {
  const BlocCounterHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bloc Counter App")),
      body: SafeArea(
        child: Center(
          child: BlocBuilder<CounterBloc, BlocCounterState>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 10,
                children: [
                  Text(
                    "Counter.count : ${state.count}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<CounterBloc>().add(CounterUpEvent());
                    },
                    child: Text("카운트 증가"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<CounterBloc>().add(CounterDownEvent());
                    },
                    child: Text("카운트 감소"),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
