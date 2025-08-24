import 'package:flutter/material.dart';

class YoutubeHomePage extends StatelessWidget {
  YoutubeHomePage({super.key});

  final focusNode = FocusNode();
  final String imgUrl =
      'https://plus.unsplash.com/premium_photo-1677181729163-33e6b59d5c8f?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';

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
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(100, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 150,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Image.network(imgUrl, fit: BoxFit.cover),
                            Container(color: Colors.black.withAlpha(100)),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.more_vert,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "사료 못먹는 고양이의 밥",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "조회수 162만회",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
            ...List.generate(100, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(height: 300, color: Colors.deepOrange),
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
