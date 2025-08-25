import 'package:flutter/material.dart';

class YoutubeVerticalItem extends StatelessWidget {
  const YoutubeVerticalItem({
    super.key,
    this.height = 100,
    required this.imgUrl,
  });

  final double height;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    // return Container(height: height, color: Colors.purpleAccent);
    return Column(
      spacing: 10,
      children: [
        SizedBox(
          height: 200,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.network(imgUrl, fit: BoxFit.fitWidth),
              Container(color: Colors.black.withAlpha(100)),
              Positioned(
                bottom: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      color: Colors.black.withAlpha(150),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 8.0,
                          right: 8.0,
                          top: 5.0,
                          bottom: 5.0,
                        ),
                        child: Text(
                          '3:35',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          spacing: 10,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                imgUrl,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "사료 못먹는 고양이",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                Text(
                  "민뚱TV · 조회수 23만회 · 3년전",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
