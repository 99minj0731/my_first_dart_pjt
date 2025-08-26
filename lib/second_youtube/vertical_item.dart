import 'package:flutter/material.dart';

class VerticalItem extends StatelessWidget {
  const VerticalItem({super.key, this.height = 100 , required this.imgUrl});

  final double height;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.network(imgUrl, fit: BoxFit.cover,),
              Container(color: Colors.black.withAlpha(100),),
              Positioned(
                bottom: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        color: Colors.black.withAlpha(200),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 5, bottom: 5
                          ),
                          child: Text(
                            "2:35",
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
        )
      ],
    );
  }
}
