import 'package:flutter/material.dart';
import 'package:pjt/state_management/mvvm_provider/mvvm_provider_counter_homepage.dart';

class MvvmProviderCounterApp extends StatelessWidget {
  const MvvmProviderCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MvvmProviderCounterHomepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
