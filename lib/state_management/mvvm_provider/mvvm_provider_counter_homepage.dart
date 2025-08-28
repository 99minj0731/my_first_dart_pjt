import 'package:flutter/material.dart';
import 'package:pjt/state_management/mvvm_change_notifier/counter_viewmodel.dart';
import 'package:provider/provider.dart';

class MvvmProviderCounterHomepage extends StatelessWidget {
  const MvvmProviderCounterHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MVVM Provider Counter App")),
      body: SafeArea(
        child: Center(
          child: Consumer<CounterViewModel>(
            builder: (context, viewModel, child) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 10,
                children: [
                  Text(
                    "Counter.count : ${viewModel.count}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      viewModel.countUp();
                    },
                    child: Text("카운트 증가"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      viewModel.countDown();
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
