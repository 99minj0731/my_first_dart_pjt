import 'package:flutter/material.dart';
import 'package:pjt/state_management/riverpod/riverpod_counter_homepage.dart';

class RiverpodCounterApp extends StatelessWidget {
  const RiverpodCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RiverpodCounterHomepageHomepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
