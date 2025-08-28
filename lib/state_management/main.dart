import 'package:flutter/cupertino.dart';
import 'package:pjt/state_management/bloc/bloc_counter_app..dart';

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
  // runApp(GetMaterialApp(home: GetXCounterApp()));

  //riverpod
  // runApp(const ProviderScope(child: RiverpodCounterApp()));

  //Bloc
  runApp(const BlocCounterApp());
}
