import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pjt/state_management/riverpod/riverpod_counter_notifier.dart';

final riverpodCounterProvider =
    NotifierProvider<RiverpodCounterNotifier, CounterState>(() {
      return RiverpodCounterNotifier();
    });

class RiverpodCounterHomepageHomepage extends ConsumerWidget {
  const RiverpodCounterHomepageHomepage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text("riverPod Counter App")),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              ConsumerConterText(),
              ElevatedButton(
                onPressed: () {
                  ref.read(riverpodCounterProvider.notifier).countUp();
                },
                child: Text("카운트 증가"),
              ),
              ElevatedButton(
                onPressed: () {
                  ref.read(riverpodCounterProvider.notifier).countDown();
                },
                child: Text("카운트 감소"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ConsumerConterText extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build
    return Text(
      "Counter.count : ${ref.watch(riverpodCounterProvider).count}",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
    );
  }
}
