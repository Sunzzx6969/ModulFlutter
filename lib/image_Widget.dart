import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Image(image: AssetImage("Aset/Madueke.jpg")),
        Image(image: AssetImage("Aset/mamar.jpg")),
        Image(image: AssetImage("Aset/tomi.jpg")),
      ],
    );
  }
}
