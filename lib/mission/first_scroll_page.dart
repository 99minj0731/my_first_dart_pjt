import 'package:flutter/material.dart';

class FirstScrollPage extends StatelessWidget {
  const FirstScrollPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('첫 스크롤'), centerTitle: true),
      body: SafeArea(child: _getListBody()),
    );
  }

  Widget _getListBody() {
    return ListView(
      scrollDirection: Axis.vertical,
      children: List.generate(10, (index) {
        if (index % 2 == 0) {
          return SizedBox(height: 300, child: _getHorizontalList());
        }
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.yellow,
            alignment: Alignment.center,
            child: Text(
              '아이템 인덱스 : $index',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        );
      }),
    );
  }

  Widget _getHorizontalList() {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: List.generate(10, (index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.purpleAccent,
            alignment: Alignment.center,
            child: Text(
              '아이템 인덱스 : $index',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        );
      }),
    );
  }

  // Widget _getScrollBody() {
  //   return SingleChildScrollView(
  //     child: Column(
  //       spacing: 10,
  //       children: List.generate(100, (index) {
  //         return Container(
  //           width: 200,
  //           height: 200,
  //           color: Colors.yellow,
  //           alignment: Alignment.center,
  //           child: Text(
  //             '아이템 인덱스 : $index',
  //             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  //           ),
  //         );
  //       }),
  //     ),
  //   );
  // }
}
