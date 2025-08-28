import 'package:flutter/material.dart';
import 'package:pjt/state_management/getx/get_x_counter_homepage.dart';

class GetXCounterApp extends StatelessWidget {
  const GetXCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: GetXHomepage(), debugShowCheckedModeBanner: false);
  }
}
