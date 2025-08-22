import 'package:flutter/material.dart';

class FirstMissionPage extends StatelessWidget {
  const FirstMissionPage({super.key});

  final String buttonTitle = "유튜브 쇼핑으로 이동";

  final String imgSrc =
      "https://plus.unsplash.com/premium_photo-1680994646651-bb647d9ff008?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dmFjYW5jZXN8ZW58MHx8MHx8fDA%3D";
  final String title = "제목";
  final String desc = "설명입니다.";

  static final Widget missionTitle = Text(
    '최신 제휴사 혜택',
    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
  );
  static final Widget missionBox = Container(height: 100, color: Colors.yellow);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          alignment: Alignment.center,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                missionTitle,
                BannerItem(imgSrc: imgSrc, title: title, desc: desc),
                BannerItem(imgSrc: imgSrc, title: title, desc: desc),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.grey,
                  ),
                  onPressed: () {
                    print('버튼 클릭됨 : $title');
                  },
                  child: Text(title),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BannerItem extends StatelessWidget {
  const BannerItem({
    super.key,
    required this.imgSrc,
    required this.title,
    required this.desc,
  });

  final String imgSrc;
  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
            height: 100,
            width: 100,
            imgSrc,
            fit: BoxFit.cover,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text(title), Text(desc)],
        ),
      ],
    );
  }
}

// Widget _getTitle() {
//   return Text(
//     '최신 제휴사 혜택',
//     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//   );
// }

// Widget _getBox({double height = 50}) {
//   return Container(height: 100, color: Colors.yellow);
// }

// Widget _getButton({required String title}) {
//   var btnStyle = TextButton.styleFrom(
//     foregroundColor: Colors.white,
//     backgroundColor: Colors.grey,
//   );

//   return TextButton(
//     style: btnStyle,
//     onPressed: () {
//       print('버튼 클릭됨 : $title');
//     },
//     child: Text(title),
//   );
// }

// Widget _getBanner({
//   String imgSrc =
//       "https://plus.unsplash.com/premium_photo-1680994646651-bb647d9ff008?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dmFjYW5jZXN8ZW58MHx8MHx8fDA%3D",
//   String title = "제목",
//   String desc = "설명입니다.",
// }) {
//   return Row(
//     spacing: 10,
//     children: [
//       ClipRRect(
//         borderRadius: BorderRadius.circular(8.0),
//         child: Image.network(
//           height: 100,
//           width: 100,
//           imgSrc,
//           fit: BoxFit.cover,
//         ),
//       ),
//       Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [Text(title), Text(desc)],
//       ),
//     ],
//   );
// }
