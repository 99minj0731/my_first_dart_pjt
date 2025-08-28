import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pjt/state_management/bloc/bloc_counter_homepage.dart';
import 'package:pjt/state_management/bloc/counter_block.dart';

class BlocCounterApp extends StatelessWidget {
  const BlocCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => CounterBloc(),
        child: BlocCounterHomepage(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
