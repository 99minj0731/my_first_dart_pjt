import 'package:flutter/material.dart';
import 'package:pjt/state_management/mvvm_change_notifier/counter_viewmodel.dart';
import 'package:pjt/state_management/mvvm_provider/mvvm_provider_counter_app..dart';
import 'package:provider/provider.dart';

void main() {
  // Sate
  // runApp(const StateCounterApp());

  // MVVM
  // runApp(const MvvmChangeNotifierApp());

  // MVVM Provider
  runApp(
    ChangeNotifierProvider<CounterViewModel>(
      create: (context) {
        return CounterViewModel();
      },
      child: const MvvmProviderCounterApp(),
    ),
  );
}
