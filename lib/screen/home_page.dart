import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sample Code')),
      body: Center(child: Text('You have pressed the button times.')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => debugPrint('FloatingActoionButton.onPressed()'),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    );
  }
}
