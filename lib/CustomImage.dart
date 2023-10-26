import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final String imagePath;
  final double width;
  final double height;

  CustomImage({
    required this.imagePath,
    this.width = 100.0,
    this.height = 100.0,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      width: width,
      height: height,
    );
  }
}
