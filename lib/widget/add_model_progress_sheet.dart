import 'package:flutter/material.dart';
import 'package:nota/widget/custome_text_feild.dart';
import 'package:nota/widget/customebottom.dart';

class AddModelProgressSheet extends StatelessWidget {
  const AddModelProgressSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          SizedBox(height: 30),
          CustomeTextFeild(text: "Add Note", Maxlines: 1),
          SizedBox(height: 10),
          CustomeTextFeild(text: "Add Title", Maxlines: 5),
          SizedBox(height: 25),
          Customebottom(),
        ],
      ),
    );
  }
}
