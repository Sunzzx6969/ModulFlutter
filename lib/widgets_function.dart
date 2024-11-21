import 'package:flutter/material.dart';

class WidgetFF extends StatelessWidget {
  String img;
  String title;
  WidgetFF(this.img, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image(
            image: AssetImage(img),
            width: 50,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
