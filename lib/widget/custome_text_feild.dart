import 'package:flutter/material.dart';

class CustomeTextFeild extends StatelessWidget {
  CustomeTextFeild({super.key, required this.text, required this.Maxlines});

  @override
  String text;
  int Maxlines;
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: Maxlines,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        hintText: text,
        hintStyle: TextStyle(
          color: Colors.deepPurple,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
