import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sample Code')),
      body: Container(
        color: Colors.yellow,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: _getColumnBody(),
        ),
      ),
    );
  }
}

Column _getColumnBody() {
  return Column(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    spacing: 10,
    children: [
      _getBox(width: 300, height: 100),
      const SizedBox(height: 50),
      Expanded(flex: 2, child: _getBox(width: 200, height: 200)),
      Flexible(flex: 1, fit: FlexFit.tight, child: _getBox()),
    ],
  );
}

Row _getRowBody() {
  return Row(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    spacing: 10,
    children: [
      _getBox(height: 300, width: 300),
      _getBox(height: 200, width: 300),
      Expanded(child: _getBox(height: 100)),
    ],
  );
}

Container _getBox({double height = 50, double width = 50}) {
  return Container(width: width, height: height, color: Colors.purpleAccent);
}
