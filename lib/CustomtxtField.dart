import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  final double fontSize;
  final double textFieldWidth;
  final IconData icon;
  final ValueChanged<String>? onChanged;

  CustomTextField({
    required this.labelText,
    required this.fontSize,
    required this.textFieldWidth,
    required this.icon,
    this.onChanged,
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.textFieldWidth,
      child: TextField(
        style: TextStyle(fontSize: widget.fontSize),
        decoration: InputDecoration(
          labelText: widget.labelText,
          labelStyle: TextStyle(fontSize: widget.fontSize),
          contentPadding: EdgeInsets.all(8.0),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 2.0),
          ),
          suffixIcon: Icon(widget.icon),
        ),
      ),
    );
  }
}
