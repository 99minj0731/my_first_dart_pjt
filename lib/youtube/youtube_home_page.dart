import 'package:flutter/material.dart';
import 'package:pjt/youtube/search_result_page.dart';
import 'package:pjt/youtube/youtube_horizontal_item.dart';
import 'package:pjt/youtube/youtube_vertical_item.dart';

class YoutubeHomePage extends StatelessWidget {
  YoutubeHomePage({super.key});

  final focusNode = FocusNode();

  final String imgUrl =
      'https://plus.unsplash.com/premium_photo-1677181729163-33e6b59d5c8f?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';

  String searchTerm = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        leading: Icon(Icons.video_call),
        title: TextField(
          onChanged: (input) {
            searchTerm = input;
          },
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
            onPressed: () async {
              print('검색 클릭');
              focusNode.unfocus();

              final resultFromDetail = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      SearchResultPage(searchTerm: searchTerm),
                ),
              );
              if (resultFromDetail == null) {
                return;
              }

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('받은 데이터: $resultFromDetail'),
                  action: SnackBarAction(
                    label: '확인',
                    onPressed: () {
                      // Code to execute.
                    },
                  ),
                ),
              );
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
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('더보기를 클릭하셨군요!'),
                  action: SnackBarAction(
                    label: '확인',
                    onPressed: () {
                      // Code to execute.
                    },
                  ),
                ),
              );
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SafeArea(
        child: NotificationListener<ScrollNotification>(
          onNotification: (event) {
            print(event.metrics.axisDirection);
            if (focusNode.hasFocus) {
              focusNode.unfocus();
            }
            return true;
          },
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
                      child: YoutubeHorizontalItem(imgUrl: imgUrl),
                    );
                  }),
                ),
              ),
              ...List.generate(100, (index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: YoutubeVerticalItem(height: 300, imgUrl: imgUrl),
                );
              }),
            ],
          ),
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
