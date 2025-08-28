import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pjt/state_management/getx/get_X_counter_app..dart';

void main() {
  // Sate
  // runApp(const StateCounterApp());

  // MVVM
  // runApp(const MvvmChangeNotifierApp());

  // MVVM Provider
  // runApp(
  //   ChangeNotifierProvider<CounterViewModel>(
  //     create: (context) {
  //       return CounterViewModel();
  //     },
  //     child: const MvvmProviderCounterApp(),
  //   ),
  // );

  // GetX
  runApp(GetMaterialApp(home: GetXCounterApp()));
}
