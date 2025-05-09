import 'package:flutter/material.dart';
import 'package:nota/widget/custome_text_feild.dart';
import 'package:nota/widget/customebottom.dart';
import 'package:nota/widget/note_appBar.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(height: 50),
            NoteAppbar(text: "Edit", icon: Icons.edit),
            SizedBox(height: 20),
            CustomeTextFeild(text: "Edit Note", Maxlines: 1),
            SizedBox(height: 10),
            CustomeTextFeild(text: "Edit Title", Maxlines: 5),
            SizedBox(height: 200),
            Customebottom(),
          ],
        ),
      ),
    );
  }
}
