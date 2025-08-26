import 'package:flutter/material.dart';

class HorizonItem extends StatelessWidget {
  const HorizonItem({super.key, required this.imgUrl});

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
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
                  onPressed: (){},
                  icon: Icon(Icons.more_vert, color: Colors.white)
              ),
            ),
            Positioned(
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("제목입니다.", style: TextStyle(color: Colors.white),),
                    Text("조회수 162만회",style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),)
                  ],
                ),
              ) ,
            ),
          ],
        ),
        ),
      );

  }
}
