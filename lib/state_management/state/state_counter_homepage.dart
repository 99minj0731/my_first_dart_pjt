import 'package:flutter/material.dart';

//state =
//화면, 데이터, 로직을 담고있음.
class StateCounterHomepage extends StatefulWidget {
  const StateCounterHomepage({super.key});

  @override
  State<StateCounterHomepage> createState() => _StateCounterHomepageState();
}

class _StateCounterHomepageState extends State<StateCounterHomepage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("State Counter App")),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              Text(
                "Counter.count : $count",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    count += 1;
                  });
                },
                child: Text("카운트 증가"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    count -= 1;
                  });
                },
                child: Text("카운트 감소"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
