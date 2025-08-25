import 'package:flutter/material.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({super.key, required this.searchTerm});

  final String searchTerm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("검색결과 화면")),
      body: SafeArea(child: Center(child: Text("검색어: $searchTerm"))),
    );
  }
}
