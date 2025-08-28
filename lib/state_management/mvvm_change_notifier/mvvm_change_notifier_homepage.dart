import 'package:flutter/material.dart';
import 'package:pjt/state_management/mvvm_change_notifier/counter_viewmodel.dart';

class MvvmChangeNotifierHomepage extends StatelessWidget {
  MvvmChangeNotifierHomepage({super.key});

  final viewModel = CounterViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MVVM Counter App")),
      body: SafeArea(
        child: Center(
          child: ListenableBuilder(
            listenable: viewModel,
            builder: (context, child) {
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
