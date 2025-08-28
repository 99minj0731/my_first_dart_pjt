import 'package:flutter/material.dart';
import 'package:pjt/state_management/mvvm_change_notifier/mvvm_change_notifier_homepage.dart';

class MvvmChangeNotifierApp extends StatelessWidget {
  const MvvmChangeNotifierApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MvvmChangeNotifierHomepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
