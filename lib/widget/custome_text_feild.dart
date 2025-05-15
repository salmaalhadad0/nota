import 'package:flutter/material.dart';

class CustomeTextFeild extends StatelessWidget {
  CustomeTextFeild({
    super.key,
    required this.text,
    required this.Maxlines,
    this.onsaved,
  });

  @override
  String text;
  int Maxlines;
  void Function(String?)? onsaved;
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Valid is Required';
        }
      },
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
