import 'package:flutter/material.dart';
import 'package:pjt/second_youtube/youtube_home_page.dart';

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp : 앱 전체의 테마,네비게이션, 라우트 같은 전역 설정을 관리하는 위젯
    return MaterialApp(
      home: youtubeHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
