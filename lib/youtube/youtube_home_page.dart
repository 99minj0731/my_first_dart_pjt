import 'package:flutter/material.dart';

class YoutubeHomePage extends StatelessWidget {
  YoutubeHomePage({super.key});

  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        leading: Icon(Icons.video_call),
        title: TextField(
          focusNode: focusNode,
          cursorColor: Colors.white,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              print('검색 클릭');
              focusNode.unfocus();
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              print('녹음 클릭');
              focusNode.requestFocus();
            },
            icon: Icon(Icons.mic),
          ),
          IconButton(
            onPressed: () {
              print('더보기 클릭');
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(100, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(width: 80, color: Colors.deepOrange),
                  );
                }),
              ),
            ),
            ...List.generate(100, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(height: 150, color: Colors.deepOrange),
              );
            }),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: 'Shorts',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '내 페이지'),
        ],
      ),
    );
  }
}
