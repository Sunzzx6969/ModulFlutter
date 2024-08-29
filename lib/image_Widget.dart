import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(image: AssetImage("Aset_Lib/Anthony.jpeg")),
        Image(image: AssetImage("Aset_Lib/Logo.jpeg")),
        Image(image: AssetImage("Aset_Lib/Team.jpeg")),
      ],
    );
  }
}
