import 'package:flutter/material.dart';

class CustomeTextFeild extends StatelessWidget {
  CustomeTextFeild({
    super.key,
    required this.text,
    required this.Maxlines,
    this.onsaved,
    this.onChanged,
  });

  @override
  String text;
  int Maxlines;
  void Function(String?)? onsaved;
  final Function(String)? onChanged;
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
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
