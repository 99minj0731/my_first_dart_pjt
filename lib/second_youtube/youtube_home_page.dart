import 'package:flutter/material.dart';
import 'package:pjt/second_youtube/horizon_item.dart';
import 'package:pjt/second_youtube/vertical_item.dart';

class youtubeHomePage extends StatelessWidget {

  youtubeHomePage({super.key});

  // 단순히 눌렀을 때 입력 가능 정도라면, focusnode가 없어도 ok. 하지만 포커스를 코드로 제어하고 싶을 때, 예를 들어 특정 버튼을 눌렀을 때 포커스가 되게 하고 싶을 때 사용할 수 있음
  final focusNode = FocusNode();

  final String imgUrl = 'https://plus.unsplash.com/premium_photo-1677181729163-33e6b59d5c8f?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';

  @override
  Widget build(BuildContext context) {
    // Scaffold : 한 화면의 뼈대(앱바, 본문, 버튼 등 레이아웃)를 구성하는 위젯
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        leading: Icon(Icons.play_circle, color: Colors.red),
        title: TextField(
          cursorColor: Colors.black87,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black87)
            )
          ),
          focusNode: focusNode, // focusnode를 연결함으로써 제어 가능!
        ),
        actions: [
          IconButton(onPressed: (){
            focusNode.unfocus(); // 포커스 빼기
          }, icon: Icon(Icons.search),),
          IconButton(onPressed: (){
            focusNode.requestFocus(); // 포커스 넣기
          }, icon: Icon(Icons.mic)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: SafeArea(child: ListView(
          scrollDirection: Axis.vertical, // 세로로 배치
          children: [
            // short section
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(10, (index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: HorizonItem(imgUrl: imgUrl),
                  );
                }),
              ),
            ),
            // main section
            ...List.generate(10, (index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: VerticalItem(imgUrl: imgUrl, height:300),
              );
            })
          ],
        )),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.video_library), label: 'Shorts'),
          BottomNavigationBarItem(icon: Icon(Icons.face), label: '내 페이지'),
        ],
      ),
      );
  }
}
