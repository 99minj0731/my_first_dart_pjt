import 'package:flutter/material.dart';

class SearchResultPage extends StatefulWidget {
  const SearchResultPage({super.key, required this.searchTerm});

  final String searchTerm;

  @override
  State<SearchResultPage> createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("검색결과 화면")),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('넘겨 받은 데이터 : ${widget.searchTerm}'),
              SizedBox(height: 20),
              Text('보낼 카운트 : $count'),
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
