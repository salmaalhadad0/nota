import 'package:flutter/material.dart';
import 'package:nota/widget/custome_text_feild.dart';
import 'package:nota/widget/customebottom.dart';

class AddModelProgressSheet extends StatelessWidget {
  const AddModelProgressSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(20.0), child: AddNoteForm());
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  String? title, subtitle;
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            CustomeTextFeild(
              text: "Add Note",
              Maxlines: 1,
              onsaved: (value) {
                title = value;
              },
            ),
            SizedBox(height: 10),
            CustomeTextFeild(
              text: "Add Title",
              Maxlines: 5,
              onsaved: (value) {
                subtitle = value;
              },
            ),
            SizedBox(height: 25),
            Customebottom(
              ontap: () {
                if (formkey.currentState!.validate()) {
                  formkey.currentState!.save();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
