import 'package:flutter/material.dart';
import 'package:pjt/state_management/state/state_counter_homepage.dart';

class StateCounterApp extends StatelessWidget {
  const StateCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StateCounterHomepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
