import 'package:app/CustomImage.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomImage(
                imagePath: 'pictures/registern.png',
                width: 170,
                height: 170,
              ),
              // Otros widgets que desees agregar en la columna
            ],
          ),
        ),
      ),
    );
  }
}
