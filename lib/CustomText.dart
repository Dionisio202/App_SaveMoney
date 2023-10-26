import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final String fontFamily;

  CustomText({
    required this.text,
    this.color = Colors.black,
    this.fontSize = 16.0,
    this.fontFamily = 'Arial',
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: fontFamily,
      ),
    );
  }
}
